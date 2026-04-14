import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

enum AppToastType { info, success, error }

class AppToast {
  const AppToast._();

  static void info(BuildContext context, String message, {String? title}) {
    _show(context, type: AppToastType.info, message: message, title: title);
  }

  static void success(BuildContext context, String message, {String? title}) {
    _show(context, type: AppToastType.success, message: message, title: title);
  }

  static void error(BuildContext context, String message, {String? title}) {
    _show(context, type: AppToastType.error, message: message, title: title);
  }

  static void _show(
    BuildContext context, {
    required AppToastType type,
    required String message,
    String? title,
  }) {
    final theme = ShadTheme.of(context);
    final sonner = ShadSonner.of(context);
    final color = switch (type) {
      AppToastType.info => theme.colorScheme.cardForeground,
      AppToastType.success => const Color(0xFF22C55E),
      AppToastType.error => theme.colorScheme.destructive,
    };
    final icon = switch (type) {
      AppToastType.info => LucideIcons.info,
      AppToastType.success => LucideIcons.circleCheckBig,
      AppToastType.error => LucideIcons.circleAlert,
    };

    sonner.show(
      ShadToast(
        title: Row(
          children: [
            Icon(icon, size: 16, color: color),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                title ?? message,
                style: theme.textTheme.small.copyWith(
                  color: color,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        description: title == null
            ? null
            : Text(
                message,
                style: theme.textTheme.small.copyWith(color: color),
              ),
        backgroundColor: theme.colorScheme.card,
      ),
    );
  }
}
