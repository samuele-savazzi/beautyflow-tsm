import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../config/theme.dart';
import '../../providers/auth_provider.dart';
import '../../api/services/api_version_manager.dart';
import 'sidebar_menu.dart';

class MainLayout extends StatelessWidget {
  final Widget child;
  final String title;

  const MainLayout({
    super.key,
    required this.child,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final authProvider = context.watch<AuthProvider>();
    final user = authProvider.currentUser;

    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          SidebarMenu(currentUser: user),

          // Main Content
          Expanded(
            child: Column(
              children: [
                // Top App Bar
                Container(
                  height: 64,
                  decoration: BoxDecoration(
                    color: AppColors.surface,
                    border: Border(
                      bottom: BorderSide(
                        color: AppColors.border,
                        width: 1,
                      ),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      Text(
                        title,
                        style: AppTextStyles.h3,
                      ),
                      const SizedBox(width: 12),

                      // Environment Badge
                      FutureBuilder<String>(
                        future: ApiVersionManager().getApiVersion(),
                        builder: (context, snapshot) {
                          final env = snapshot.data ?? 'production';
                          final isStaging = env == 'staging';
                          return Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: isStaging
                                  ? Colors.orange.withOpacity(0.2)
                                  : Colors.green.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                color: isStaging ? Colors.orange : Colors.green,
                                width: 1,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  isStaging ? Icons.warning : Icons.check_circle,
                                  size: 14,
                                  color: isStaging ? Colors.orange : Colors.green,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  isStaging ? 'STAGING' : 'PRODUCTION',
                                  style: TextStyle(
                                    color: isStaging ? Colors.orange : Colors.green,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      const Spacer(),

                      // User Info & Actions
                      if (user != null) ...[
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.primary.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.admin_panel_settings,
                                size: 16,
                                color: AppColors.primary,
                              ),
                              const SizedBox(width: 6),
                              Text(
                                user.role.toUpperCase(),
                                style: AppTextStyles.caption.copyWith(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),

                        Text(
                          user.fullName,
                          style: AppTextStyles.body,
                        ),
                        const SizedBox(width: 12),

                        CircleAvatar(
                          radius: 18,
                          backgroundColor: AppColors.primary,
                          child: Text(
                            user.firstName[0].toUpperCase(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),

                // Content Area
                Expanded(
                  child: Container(
                    color: AppColors.background,
                    child: child,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
