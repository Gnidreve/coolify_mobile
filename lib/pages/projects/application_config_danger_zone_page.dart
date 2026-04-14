import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../api/coolify_api.dart';
import '../../core/services/app_toast.dart';
import '../../core/services/coolify_client_service.dart';

class ApplicationConfigDangerZonePage extends StatefulWidget {
  const ApplicationConfigDangerZonePage({super.key, required this.application});

  final ApplicationResource application;

  @override
  State<ApplicationConfigDangerZonePage> createState() =>
      _ApplicationConfigDangerZonePageState();
}

class _ApplicationConfigDangerZonePageState
    extends State<ApplicationConfigDangerZonePage> {
  bool _deleting = false;

  Future<void> _confirmDelete() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: const Text('Delete application'),
          content: Text(
            'This will permanently delete ${widget.application.name}.',
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

    if (confirmed == true) {
      await _delete();
    }
  }

  Future<void> _delete() async {
    if (_deleting) return;

    setState(() => _deleting = true);

    try {
      final api = await CoolifyClientService.createClient();
      final message = await api.applications.delete(widget.application.uuid);
      if (!mounted) return;
      AppToast.success(context, message);
      Navigator.of(context).maybePop();
    } catch (error) {
      if (!mounted) return;
      AppToast.error(context, error.toString(), title: 'Delete failed');
    } finally {
      if (mounted) setState(() => _deleting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ShadButton.destructive(
        onPressed: _deleting ? null : _confirmDelete,
        child: _deleting
            ? const SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            : const Text('Delete application'),
      ),
    );
  }
}
