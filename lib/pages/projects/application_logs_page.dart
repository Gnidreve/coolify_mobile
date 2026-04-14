import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../core/services/app_toast.dart';
import '../../core/services/coolify_client_service.dart';
import '../../core/widgets/state_views.dart';

class ApplicationLogsPage extends StatefulWidget {
  const ApplicationLogsPage({
    super.key,
    required this.applicationUuid,
    required this.applicationName,
  });

  final String applicationUuid;
  final String applicationName;

  @override
  State<ApplicationLogsPage> createState() => _ApplicationLogsPageState();
}

class _ApplicationLogsPageState extends State<ApplicationLogsPage> {
  bool _loading = true;
  String? _error;
  String _logs = '';

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    setState(() {
      _loading = true;
      _error = null;
    });

    try {
      final api = await CoolifyClientService.createClient();
      final logs = await api.applications.logs(widget.applicationUuid);
      if (!mounted) return;
      setState(() => _logs = logs);
    } catch (error) {
      if (!mounted) return;
      setState(() => _error = error.toString());
      AppToast.error(context, error.toString(), title: 'Could not load logs');
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);

    if (_loading) return const LoadingStateView();
    if (_error != null) {
      return ErrorStateView(message: _error!, onRetry: _load);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ShadTextarea(
          initialValue: _logs.isEmpty ? 'No logs available.' : _logs,
          readOnly: true,
          enabled: false,
          resizable: false,
          minHeight: 420,
          maxHeight: 560,
          style: theme.textTheme.small.copyWith(
            fontFamily: 'monospace',
            color: theme.colorScheme.foreground,
            height: 1.45,
          ),
        ),
        const SizedBox(height: 12),
        ShadButton.outline(
          onPressed: _load,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(LucideIcons.refreshCw, size: 16),
              SizedBox(width: 8),
              Text('Reload logs'),
            ],
          ),
        ),
      ],
    );
  }
}
