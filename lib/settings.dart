import 'package:flutter/material.dart';

abstract final class AppSettingsKeys {
  static const String appBaseUrl = 'app_base_url';
  static const String themeMode = 'theme_mode';
}

ThemeMode parseThemeMode(String? value) {
  switch (value) {
    case 'light':
      return ThemeMode.light;
    case 'dark':
      return ThemeMode.dark;
    case 'system':
    default:
      return ThemeMode.system;
  }
}

String encodeThemeMode(ThemeMode mode) {
  switch (mode) {
    case ThemeMode.light:
      return 'light';
    case ThemeMode.dark:
      return 'dark';
    case ThemeMode.system:
      return 'system';
  }
}
