import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

/// Central theme configuration — equivalent to app.css in a JS shadcn project.
///
/// All shadcn_ui components derive their styling from these theme instances.
/// Nothing is hardcoded in individual widgets; all design tokens live here.

const Color _darkPrimary = Color(0xFFFCD452);
const Color _darkPrimaryForeground = Color(
  0xFF09090B,
); // zinc-950 — contrast on yellow
const Color _darkSurface = Color(0xFF181818);
const Color _darkBorder = Color(0xFF282828);
const Color _lightBorder = Color(0xFFE5E5E5);
const Color _lightBackground = Color(0xFFF9FAFB);
const Color _lightSurface = Color(0xFFFFFFFF);
const String _fontSans = 'Geist Sans';
const BorderRadius _appRadius = BorderRadius.all(Radius.circular(4));

ShadDecoration _surfaceDecoration(Color surface, Color border) {
  return ShadDecoration(
    color: surface,
    border: ShadBorder.all(color: border, radius: _appRadius, width: 1),
    focusedBorder: ShadBorder.all(color: border, radius: _appRadius, width: 1),
    errorBorder: ShadBorder.all(color: border, radius: _appRadius, width: 1),
  );
}

ShadThemeData buildLightTheme() {
  return ShadThemeData(
    brightness: Brightness.light,
    radius: _appRadius,
    colorScheme: const ShadZincColorScheme.light(
      background: _lightBackground,
      card: _lightSurface,
      popover: _lightSurface,
      input: _lightSurface,
      border: _lightBorder,
    ),
    cardTheme: const ShadCardTheme(backgroundColor: _lightSurface),
    inputTheme: ShadInputTheme(
      decoration: _surfaceDecoration(_lightSurface, _lightBorder),
    ),
    textareaTheme: ShadTextareaTheme(
      decoration: _surfaceDecoration(_lightSurface, _lightBorder),
    ),
    selectTheme: ShadSelectTheme(
      decoration: _surfaceDecoration(_lightSurface, _lightBorder),
    ),
    optionTheme: const ShadOptionTheme(
      orderPolicy: ReverseWidgetOrderPolicy(),
    ),
    textTheme: ShadTextTheme(family: _fontSans),
  );
}

ShadThemeData buildDarkTheme() {
  return ShadThemeData(
    brightness: Brightness.dark,
    radius: _appRadius,
    colorScheme: const ShadZincColorScheme.dark(
      background: _darkSurface,
      card: _darkSurface,
      popover: _darkSurface,
      input: _darkSurface,
      border: _darkBorder,
      primary: _darkPrimary,
      primaryForeground: _darkPrimaryForeground,
    ),
    cardTheme: const ShadCardTheme(backgroundColor: _darkSurface),
    inputTheme: ShadInputTheme(
      decoration: _surfaceDecoration(_darkSurface, _darkBorder),
    ),
    textareaTheme: ShadTextareaTheme(
      decoration: _surfaceDecoration(_darkSurface, _darkBorder),
    ),
    selectTheme: ShadSelectTheme(
      decoration: _surfaceDecoration(_darkSurface, _darkBorder),
    ),
    textTheme: ShadTextTheme(family: _fontSans),
  );
}
