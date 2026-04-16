import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../api/coolify_api.dart';
import '../../core/services/app_toast.dart';

class ApplicationConfigDangerZonePage extends StatelessWidget {
  const ApplicationConfigDangerZonePage({super.key, required this.application});

  final ApplicationResource application;

  Future<void> _confirmDelete(BuildContext context) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: const Text('Delete application'),
          content: Text(
            'This will permanently delete ${application.name}.',
          ),
          actions: [
            ShadButton.outline(
              onPressed: () => Navigator.of(dialogContext).pop(false),
              child: const Text('Cancel'),
            ),
            ShadButton.destructive(
              onPressed: () => Navigator.of(dialogContext).pop(true),
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );

    if (confirmed == true && context.mounted) {
      AppToast.info(context, 'Deleting applications is not yet supported.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ShadButton.destructive(
        onPressed: () => _confirmDelete(context),
        child: const Text('Delete application'),
      ),
    );
  }
}
