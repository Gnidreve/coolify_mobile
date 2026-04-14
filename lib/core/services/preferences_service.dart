import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract final class PreferencesKeys {
  static const String themeMode = 'theme_mode';
  static const String envSeeded = 'env_seeded';
  static const String acknowledgedNotificationToken =
      'acknowledged_notification_token';
}

class PreferencesService {
  PreferencesService._();

  static final PreferencesService instance = PreferencesService._();

  late SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  ThemeMode getThemeMode() {
    final stored = _prefs.getString(PreferencesKeys.themeMode);
    return switch (stored) {
      'light' => ThemeMode.light,
      'dark' => ThemeMode.dark,
      _ => ThemeMode.system,
    };
  }

  Future<void> setThemeMode(ThemeMode mode) {
    final value = switch (mode) {
      ThemeMode.light => 'light',
      ThemeMode.dark => 'dark',
      ThemeMode.system => 'system',
    };
    return _prefs.setString(PreferencesKeys.themeMode, value);
  }

  bool isEnvSeeded() => _prefs.getBool(PreferencesKeys.envSeeded) ?? false;

  Future<void> markEnvSeeded() =>
      _prefs.setBool(PreferencesKeys.envSeeded, true);

  String? getAcknowledgedNotificationToken() =>
      _prefs.getString(PreferencesKeys.acknowledgedNotificationToken);

  Future<void> setAcknowledgedNotificationToken(String token) =>
      _prefs.setString(PreferencesKeys.acknowledgedNotificationToken, token);
}
