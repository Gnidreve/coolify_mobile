import 'package:flutter/material.dart';

/// Shared constants for the Android home screen widget integration.
///
/// The actual widget UI lives in the Android native resources because
/// Android app widgets are rendered outside Flutter.
abstract final class AndroidHomeWidget {
  static const providerClass =
      'com.coolify.mobile.CoolifyHomeWidgetProvider';
  static const title = 'Coolify Mobile';
  static const emptyMessage = 'Widget content coming soon';
  static const placeholderIcon = Icons.widgets_outlined;
}
