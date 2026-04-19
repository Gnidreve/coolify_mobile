import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../api/coolify_api.dart';
import '../../core/services/app_toast.dart';
import '../../core/services/credentials_service.dart';
import '../../core/services/notification_service.dart';
import '../../core/services/preferences_service.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.onThemeModeChanged});

  final ValueChanged<ThemeMode> onThemeModeChanged;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final _urlController = TextEditingController();
  final _tokenController = TextEditingController();
  bool _tokenVisible = false;
  bool _loaded = false;
  bool _testing = false;
  bool _notificationsBusy = false;

  @override
  void initState() {
    super.initState();
    _loadCredentials();
  }

  @override
  void dispose() {
    _urlController.dispose();
    _tokenController.dispose();
    super.dispose();
  }

  Future<void> _loadCredentials() async {
    final creds = CredentialsService.instance;
    final url = await creds.getBaseUrl();
    final token = await creds.getApiToken();
    if (!mounted) return;
    _urlController.text = url ?? '';
    _tokenController.text = token ?? '';
    setState(() => _loaded = true);
  }

  Future<void> _save() async {
    final url = normalizeBaseUrl(_urlController.text);
    final token = normalizeApiToken(_tokenController.text);
    if (url == null || token == null) return;

    await CredentialsService.instance.setCredentials(
      baseUrl: url,
      apiToken: token,
    );

    if (!mounted) return;
    AppToast.success(context, 'Settings saved.');
  }

  Future<void> _testConnection() async {
    final url = normalizeBaseUrl(_urlController.text);
    final token = normalizeApiToken(_tokenController.text);
    if (url == null || token == null) return;

    setState(() => _testing = true);

    try {
      final api = CoolifyApi(baseUrl: url, apiToken: token);
      final isUp = await api.health.check();

      if (!mounted) return;
      if (isUp) {
        AppToast.success(context, 'Instance is reachable.');
      } else {
        AppToast.error(context, 'Instance did not respond.');
      }
    } catch (error) {
      if (!mounted) return;
      AppToast.error(context, error.toString(), title: 'Connection failed');
    } finally {
      if (mounted) setState(() => _testing = false);
    }
  }

  ThemeMode get _themeMode => PreferencesService.instance.getThemeMode();

  Future<void> _allowNotifications() async {
    if (_notificationsBusy) return;

    setState(() => _notificationsBusy = true);

    try {
      final supported = await NotificationService.instance.isSupported();
      if (!supported) {
        if (!mounted) return;
        AppToast.error(
          context,
          'Firebase notifications are not configured correctly yet.',
          title: 'Notifications unavailable',
        );
        return;
      }

      final result = await NotificationService.instance
          .requestPermissionAndGetDeviceId();

      if (!mounted) return;

      if (!result.isAuthorized) {
        AppToast.error(
          context,
          'Notification permission was not granted.',
          title: 'Permission denied',
        );
        return;
      }

      if (result.deviceId == null || result.deviceId!.isEmpty) {
        AppToast.error(
          context,
          'No device ID was returned by Firebase Messaging.',
          title: 'Missing device ID',
        );
        return;
      }

      if (result.shouldShowDeviceIdDialog) {
        await _showDeviceIdDialog(result.deviceId!);
      } else {
        AppToast.success(context, 'Notifications are already enabled.');
      }
    } catch (error) {
      if (!mounted) return;
      AppToast.error(context, error.toString(), title: 'Notifications failed');
    } finally {
      if (mounted) setState(() => _notificationsBusy = false);
    }
  }

  Future<void> _showDeviceIdDialog(String deviceId) async {
    await showDialog<void>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: const Text('Device ID'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Copy this device ID into your server-side notification trigger.',
              ),
              const SizedBox(height: 12),
              SelectableText(deviceId),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () async {
                await Clipboard.setData(ClipboardData(text: deviceId));
                if (!mounted) return;
                AppToast.success(context, 'Device ID copied.');
              },
              child: const Text('Copy'),
            ),
            FilledButton(
              onPressed: () async {
                await NotificationService.instance.acknowledgeDeviceId(
                  deviceId,
                );
                if (!dialogContext.mounted) return;
                Navigator.of(dialogContext).pop();
              },
              child: const Text('Confirm'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    if (!_loaded) {
      return const Center(child: CircularProgressIndicator());
    }

    final theme = ShadTheme.of(context);

    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        Text('Connection', style: theme.textTheme.h4),
        const SizedBox(height: 16),
        ShadInputFormField(
          id: 'base_url',
          controller: _urlController,
          label: const Text('Instance URL'),
          placeholder: const Text('https://coolify.example.com'),
          keyboardType: TextInputType.url,
          autocorrect: false,
        ),
        const SizedBox(height: 12),
        ShadInputFormField(
          id: 'api_token',
          controller: _tokenController,
          label: const Text('API Token'),
          obscureText: !_tokenVisible,
          trailing: ShadButton.ghost(
            size: ShadButtonSize.sm,
            onPressed: () => setState(() => _tokenVisible = !_tokenVisible),
            child: Icon(
              _tokenVisible ? LucideIcons.eyeOff : LucideIcons.eye,
              size: 16,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            ShadButton.outline(
              onPressed: _testing ? null : _testConnection,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (_testing)
                    const SizedBox(
                      width: 14,
                      height: 14,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  else
                    const Icon(LucideIcons.plugZap, size: 14),
                  const SizedBox(width: 8),
                  const Text('Test Connection'),
                ],
              ),
            ),
            ShadButton(onPressed: _save, child: const Text('Save')),
          ],
        ),
        const SizedBox(height: 32),
        Text('Appearance', style: theme.textTheme.h4),
        const SizedBox(height: 16),
        _LabeledSelect<ThemeMode>(
          label: 'Theme',
          value: _themeMode,
          options: const [
            ShadOption(value: ThemeMode.system, child: Text('System')),
            ShadOption(value: ThemeMode.light, child: Text('Light')),
            ShadOption(value: ThemeMode.dark, child: Text('Dark')),
          ],
          onChanged: (mode) {
            if (mode == null) return;
            widget.onThemeModeChanged(mode);
            PreferencesService.instance.setThemeMode(mode);
            setState(() {});
          },
          selectedOptionBuilder: (context, value) => Text(switch (value) {
            ThemeMode.light => 'Light',
            ThemeMode.dark => 'Dark',
            ThemeMode.system => 'System',
          }),
        ),
        const SizedBox(height: 32),
        Text('Notifications', style: theme.textTheme.h4),
        const SizedBox(height: 16),
        ShadButton(
          onPressed: _notificationsBusy ? null : _allowNotifications,
          child: _notificationsBusy
              ? const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : const Text('Allow Notifications'),
        ),
      ],
    );
  }
}

class _LabeledSelect<T> extends StatelessWidget {
  const _LabeledSelect({
    required this.label,
    required this.value,
    required this.options,
    required this.onChanged,
    required this.selectedOptionBuilder,
  });

  final String label;
  final T value;
  final List<ShadOption<T>> options;
  final ValueChanged<T?> onChanged;
  final Widget Function(BuildContext, T) selectedOptionBuilder;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 8),
        SizedBox(
          width: double.infinity,
          child: ShadSelect<T>(
            initialValue: value,
            onChanged: onChanged,
            options: options,
            selectedOptionBuilder: selectedOptionBuilder,
          ),
        ),
      ],
    );
  }
}
