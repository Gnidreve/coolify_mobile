import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../core/services/app_toast.dart';
import '../core/services/coolify_client_service.dart';

class ApplicationActionMenuButton extends StatefulWidget {
  const ApplicationActionMenuButton({
    super.key,
    required this.applicationUuid,
    this.onActionCompleted,
  });

  final String applicationUuid;
  final Future<void> Function()? onActionCompleted;

  @override
  State<ApplicationActionMenuButton> createState() =>
      _ApplicationActionMenuButtonState();
}

class _ApplicationActionMenuButtonState
    extends State<ApplicationActionMenuButton> {
  bool _busy = false;

  Future<void> _runAction(
    Future<String> Function() action, {
    required String fallbackSuccessTitle,
  }) async {
    if (_busy) return;

    setState(() => _busy = true);

    try {
      final message = await action();
      if (!mounted) return;
      AppToast.success(context, message, title: fallbackSuccessTitle);
      await widget.onActionCompleted?.call();
    } catch (error) {
      if (!mounted) return;
      AppToast.error(context, error.toString(), title: 'Action failed');
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<String> _start() async {
    final api = await CoolifyClientService.createClient();
    return api.applications.start(widget.applicationUuid);
  }

  Future<String> _stop() async {
    final api = await CoolifyClientService.createClient();
    return api.applications.stop(widget.applicationUuid);
  }

  Future<String> _restart() async {
    final api = await CoolifyClientService.createClient();
    return api.applications.restart(widget.applicationUuid);
  }

  void _openSheet() {
    final theme = ShadTheme.of(context);
    showModalBottomSheet<void>(
      context: context,
      useSafeArea: true,
      backgroundColor: theme.colorScheme.background,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (sheetContext) => Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('What cha gonna do?', style: theme.textTheme.h4),
            const SizedBox(height: 16),
            ShadButton.outline(
              onPressed: () {
                Navigator.of(sheetContext).pop();
                _runAction(_start, fallbackSuccessTitle: 'Application started');
              },
              child: const Text('Start'),
            ),
            const SizedBox(height: 8),
            ShadButton.outline(
              onPressed: () {
                Navigator.of(sheetContext).pop();
                _runAction(_stop, fallbackSuccessTitle: 'Application stopped');
              },
              child: const Text('Stop'),
            ),
            const SizedBox(height: 8),
            ShadButton.outline(
              onPressed: () {
                Navigator.of(sheetContext).pop();
                _runAction(
                  _restart,
                  fallbackSuccessTitle: 'Application restarted',
                );
              },
              child: const Text('Restart'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: 'Open actions',
      onPressed: _busy ? null : _openSheet,
      icon: _busy
          ? const SizedBox.square(
              dimension: 18,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : const Icon(LucideIcons.ellipsisVertical),
    );
  }
}
