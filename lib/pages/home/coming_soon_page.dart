import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

/// Placeholder for sidebar entries whose API support exists but whose screens
/// are not built yet.
class ComingSoonPage extends StatelessWidget {
  const ComingSoonPage({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 32, color: theme.colorScheme.mutedForeground),
            const SizedBox(height: 12),
            Text(title, style: theme.textTheme.h4),
            const SizedBox(height: 4),
            Text('Coming soon', style: theme.textTheme.muted),
          ],
        ),
      ),
    );
  }
}
