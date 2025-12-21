import '../models/theme_request.dart';

/// Tema predefinito con nome e dati
class PredefinedTheme {
  final String name;
  final ThemeRequest themeData;

  const PredefinedTheme({
    required this.name,
    required this.themeData,
  });
}

/// Lista di temi predefiniti disponibili
final List<PredefinedTheme> predefinedThemes = [
  PredefinedTheme(
    name: 'Corporate Slate',
    themeData: ThemeRequest(
      primary: '#64748b',
      secondary: '#cbd5e1',
      background: '#f8fafc',
      surface: '#ffffff',
      border: '#e2e8f0',
      text: '#1e293b',
      textSecondary: '#64748b',
      shadow: '#64748b',
      btnBackground: '#64748b',
      btnText: '#1e293b',
    ),
  ),
  PredefinedTheme(
    name: 'Deep Ocean',
    themeData: ThemeRequest(
      primary: '#0ea5e9',
      secondary: '#38bdf8',
      background: '#f8fafc',
      surface: '#ffffff',
      border: '#e2e8f0',
      text: '#0f172a',
      textSecondary: '#64748b',
      shadow: '#0ea5e9',
      btnBackground: '#0ea5e9',
      btnText: '#0f172a',
    ),
  ),
  PredefinedTheme(
    name: 'Ruby Red',
    themeData: ThemeRequest(
      primary: '#e11d48',
      secondary: '#fb7185',
      background: '#fefefe',
      surface: '#ffffff',
      border: '#e5e7eb',
      text: '#1f2937',
      textSecondary: '#6b7280',
      shadow: '#e11d48',
      btnBackground: '#e11d48',
      btnText: '#1f2937',
    ),
  ),
  PredefinedTheme(
    name: 'Emerald',
    themeData: ThemeRequest(
      primary: '#10b981',
      secondary: '#34d399',
      background: '#f9fafb',
      surface: '#ffffff',
      border: '#e5e7eb',
      text: '#1f2937',
      textSecondary: '#6b7280',
      shadow: '#10b981',
      btnBackground: '#10b981',
      btnText: '#1f2937',
    ),
  ),
  PredefinedTheme(
    name: 'Royal Purple',
    themeData: ThemeRequest(
      primary: '#8b5cf6',
      secondary: '#a78bfa',
      background: '#f9fafb',
      surface: '#ffffff',
      border: '#e5e7eb',
      text: '#1f2937',
      textSecondary: '#6b7280',
      shadow: '#8b5cf6',
      btnBackground: '#8b5cf6',
      btnText: '#1f2937',
    ),
  ),
  PredefinedTheme(
    name: 'Golden Amber',
    themeData: ThemeRequest(
      primary: '#f59e0b',
      secondary: '#fbbf24',
      background: '#fefefe',
      surface: '#ffffff',
      border: '#e5e7eb',
      text: '#1f2937',
      textSecondary: '#6b7280',
      shadow: '#f59e0b',
      btnBackground: '#f59e0b',
      btnText: '#1f2937',
    ),
  ),
];
