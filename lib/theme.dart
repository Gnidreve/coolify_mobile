import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

/// Central theme configuration — equivalent to app.css in a JS shadcn project.
///
/// All shadcn_ui components derive their styling from these theme instances.
/// Nothing is hardcoded in individual widgets; all design tokens live here.

const Color _primary = Color(0xFFFCD452);
const Color _primaryForeground = Color(
  0xFF09090B,
); // zinc-950 — contrast on yellow
const String _fontSans = 'Geist Sans';

ShadThemeData buildLightTheme() {
  return ShadThemeData(
    brightness: Brightness.light,
    colorScheme: const ShadZincColorScheme.light(
      primary: _primary,
      primaryForeground: _primaryForeground,
    ),
    textTheme: ShadTextTheme(family: _fontSans),
  );
}

ShadThemeData buildDarkTheme() {
  return ShadThemeData(
    brightness: Brightness.dark,
    colorScheme: const ShadZincColorScheme.dark(
      primary: _primary,
      primaryForeground: _primaryForeground,
    ),
    textTheme: ShadTextTheme(family: _fontSans),
  );
}
