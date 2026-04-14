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
      if (mounted) {
        setState(() => _busy = false);
      }
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

  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
      menuChildren: [
        MenuItemButton(
          onPressed: _busy
              ? null
              : () => _runAction(
                  _start,
                  fallbackSuccessTitle: 'Application started',
                ),
          child: const Text('Start'),
        ),
        MenuItemButton(
          onPressed: _busy
              ? null
              : () => _runAction(
                  _stop,
                  fallbackSuccessTitle: 'Application stopped',
                ),
          child: const Text('Stop'),
        ),
        MenuItemButton(
          onPressed: _busy
              ? null
              : () => _runAction(
                  _restart,
                  fallbackSuccessTitle: 'Application restarted',
                ),
          child: const Text('Restart'),
        ),
      ],
      builder: (context, controller, child) {
        return IconButton(
          tooltip: 'Open actions',
          onPressed: _busy
              ? null
              : () {
                  if (controller.isOpen) {
                    controller.close();
                  } else {
                    controller.open();
                  }
                },
          icon: _busy
              ? const SizedBox.square(
                  dimension: 18,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : const Icon(LucideIcons.ellipsisVertical),
        );
      },
    );
  }
}
