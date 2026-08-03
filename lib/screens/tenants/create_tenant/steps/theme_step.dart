import 'package:flutter/material.dart';
import '../../../../config/theme.dart';
import '../../../../config/predefined_themes.dart';
import '../../../../models/theme_request.dart';
import '../../../../utils/validators.dart';

/// Step 4: Theme Selection (obbligatorio con temi predefiniti)
class ThemeStep extends StatefulWidget {
  final ThemeRequest? initialTheme;
  final Function({required ThemeRequest theme}) onNext;

  const ThemeStep({super.key, this.initialTheme, required this.onNext});

  @override
  State<ThemeStep> createState() => _ThemeStepState();
}

class _ThemeStepState extends State<ThemeStep> {
  late int _selectedThemeIndex;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    // Find initial theme index or default to 0 (Corporate Slate)
    _selectedThemeIndex = 0;
    if (widget.initialTheme != null) {
      for (var i = 0; i < predefinedThemes.length; i++) {
        if (predefinedThemes[i].themeData.primary ==
                widget.initialTheme!.primary &&
            predefinedThemes[i].themeData.secondary ==
                widget.initialTheme!.secondary) {
          _selectedThemeIndex = i;
          break;
        }
      }
    }
  }

  Color _parseColor(String hex) {
    try {
      return Color(int.parse(hex.replaceFirst('#', '0xFF')));
    } catch (_) {
      return AppColors.primary;
    }
  }

  void _handleNext() {
    if (_formKey.currentState!.validate()) {
      widget.onNext(theme: predefinedThemes[_selectedThemeIndex].themeData);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Tema e Personalizzazione', style: AppTextStyles.h3),
            const SizedBox(height: 8),
            const Text(
              'Seleziona il tema per l\'interfaccia del tenant',
              style: AppTextStyles.caption,
            ),
            const SizedBox(height: 32),

            // Theme Selection Title
            const Text('Tema Colori *', style: AppTextStyles.body),
            const SizedBox(height: 16),

            // Themes Grid
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 1.2,
              ),
              itemCount: predefinedThemes.length,
              itemBuilder: (context, index) {
                final theme = predefinedThemes[index];
                final isSelected = _selectedThemeIndex == index;

                return InkWell(
                  onTap: () {
                    setState(() {
                      _selectedThemeIndex = index;
                    });
                  },
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? AppColors.primary.withOpacity(0.05)
                          : AppColors.surface,
                      border: Border.all(
                        color: isSelected
                            ? AppColors.primary
                            : AppColors.border,
                        width: isSelected ? 2 : 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Theme name
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                theme.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: isSelected
                                      ? AppColors.primary
                                      : AppColors.textPrimary,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            if (isSelected)
                              const Icon(
                                Icons.check_circle,
                                color: AppColors.primary,
                                size: 20,
                              ),
                          ],
                        ),
                        const SizedBox(height: 12),

                        // Color Preview
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  color: _parseColor(theme.themeData.primary),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  color: _parseColor(theme.themeData.secondary),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 32),

            // Preview Box
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: _parseColor(
                  predefinedThemes[_selectedThemeIndex].themeData.background,
                ),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: _parseColor(
                    predefinedThemes[_selectedThemeIndex].themeData.border,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Anteprima: ${predefinedThemes[_selectedThemeIndex].name}',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: _parseColor(
                        predefinedThemes[_selectedThemeIndex].themeData.text,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: _parseColor(
                              predefinedThemes[_selectedThemeIndex]
                                  .themeData
                                  .btnBackground,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              'Pulsante',
                              style: TextStyle(
                                color: _parseColor(
                                  predefinedThemes[_selectedThemeIndex]
                                      .themeData
                                      .btnText,
                                ),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: _parseColor(
                              predefinedThemes[_selectedThemeIndex]
                                  .themeData
                                  .surface,
                            ),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: _parseColor(
                                predefinedThemes[_selectedThemeIndex]
                                    .themeData
                                    .border,
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Card',
                              style: TextStyle(
                                color: _parseColor(
                                  predefinedThemes[_selectedThemeIndex]
                                      .themeData
                                      .textSecondary,
                                ),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // Next Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: _handleNext,
                icon: const Icon(Icons.arrow_forward),
                label: const Text('Avanti'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
