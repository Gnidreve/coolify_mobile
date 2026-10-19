import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ota_update/ota_update.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../core/services/update_service.dart';

/// Blocking screen shown when a newer release exists.
class UpdateRequiredPage extends StatefulWidget {
  const UpdateRequiredPage({
    super.key,
    required this.update,
    required this.currentVersion,
    required this.service,
  });

  final AppUpdate update;
  final String currentVersion;
  final UpdateService service;

  @override
  State<UpdateRequiredPage> createState() => _UpdateRequiredPageState();
}

class _UpdateRequiredPageState extends State<UpdateRequiredPage> {
  StreamSubscription<OtaEvent>? _subscription;
  bool _busy = false;
  double? _progress;
  String? _error;
  String? _hint;

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  void _start() {
    setState(() {
      _busy = true;
      _progress = null;
      _error = null;
      _hint = null;
    });

    _subscription?.cancel();
    _subscription = widget.service
        .install(widget.update)
        .listen(_onEvent, onError: (Object error) => _fail(error.toString()));
  }

  void _onEvent(OtaEvent event) {
    switch (event.status) {
      case OtaStatus.DOWNLOADING:
        final percent = int.tryParse(event.value ?? '');
        setState(() => _progress = percent == null ? null : percent / 100);
      case OtaStatus.INSTALLING:
        setState(() {
          _progress = 1;
          _hint = 'Confirm the installation in the Android dialog.';
        });
      case OtaStatus.INSTALLATION_DONE:
        setState(() => _busy = false);
      case OtaStatus.PERMISSION_NOT_GRANTED_ERROR:
        _fail(
          'Installing apps from this source is not allowed. Enable '
          '"Install unknown apps" for Coolify Mobile in the Android settings, '
          'then try again.',
        );
      case OtaStatus.CHECKSUM_ERROR:
        _fail('The downloaded file is corrupted. Please try again.');
      case OtaStatus.CANCELED:
        _fail('The update was canceled.');
      case OtaStatus.ALREADY_RUNNING_ERROR:
      case OtaStatus.INSTALLATION_ERROR:
      case OtaStatus.INTERNAL_ERROR:
      case OtaStatus.DOWNLOAD_ERROR:
        _fail(event.value ?? 'The update failed.');
    }
  }

  void _fail(String message) {
    if (!mounted) return;
    setState(() {
      _busy = false;
      _error = message;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    final update = widget.update;

    return PopScope(
      canPop: false,
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 480),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Icon(
                      LucideIcons.download,
                      size: 32,
                      color: theme.colorScheme.primary,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Update required',
                      style: theme.textTheme.h3,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${widget.currentVersion}  →  ${update.version}',
                      style: theme.textTheme.muted,
                      textAlign: TextAlign.center,
                    ),
                    if (update.notes.isNotEmpty) ...[
                      const SizedBox(height: 16),
                      Container(
                        constraints: const BoxConstraints(maxHeight: 160),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.card,
                          border: Border.all(color: theme.colorScheme.border),
                          borderRadius: theme.radius,
                        ),
                        child: SingleChildScrollView(
                          child: Text(
                            update.notes,
                            style: theme.textTheme.small,
                          ),
                        ),
                      ),
                    ],
                    const SizedBox(height: 24),
                    if (_busy) ...[
                      LinearProgressIndicator(value: _progress),
                      const SizedBox(height: 8),
                      Text(
                        _hint ??
                            (_progress == null
                                ? 'Starting download…'
                                : 'Downloading… ${(_progress! * 100).round()} %'),
                        style: theme.textTheme.muted,
                        textAlign: TextAlign.center,
                      ),
                    ] else ...[
                      if (_error != null) ...[
                        Text(
                          _error!,
                          style: theme.textTheme.small.copyWith(
                            color: theme.colorScheme.destructive,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 12),
                      ],
                      ShadButton(
                        onPressed: _start,
                        child: Text(
                          _error == null ? 'Install update' : 'Try again',
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
