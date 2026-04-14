import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../api/coolify_api.dart';
import '../core/services/credentials_service.dart';
import '../core/services/preferences_service.dart';
import '../pages/home/index.dart';
import '../pages/login/index.dart';
import '../theme.dart';

class CoolifyApp extends StatefulWidget {
  const CoolifyApp({super.key});

  @override
  State<CoolifyApp> createState() => _CoolifyAppState();
}

class _CoolifyAppState extends State<CoolifyApp> {
  ThemeMode _themeMode = ThemeMode.system;

  @override
  void initState() {
    super.initState();
    _themeMode = PreferencesService.instance.getThemeMode();
  }

  void _onThemeModeChanged(ThemeMode mode) {
    setState(() => _themeMode = mode);
    PreferencesService.instance.setThemeMode(mode);
  }

  @override
  Widget build(BuildContext context) {
    return ShadApp(
      title: 'Coolify Mobile',
      debugShowCheckedModeBanner: false,
      themeMode: _themeMode,
      theme: buildLightTheme(),
      darkTheme: buildDarkTheme(),
      home: Builder(
        builder: (context) {
          final mediaQuery = MediaQuery.of(context);
          final bottomInset = math.max(
            mediaQuery.padding.bottom,
            mediaQuery.viewPadding.bottom,
          );

          return ShadSonner(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 16 + bottomInset),
            child: Builder(
              builder: (context) {
                final isDark =
                    ShadTheme.of(context).brightness == Brightness.dark;
                final bgColor = ShadTheme.of(context).colorScheme.background;
                return AnnotatedRegion<SystemUiOverlayStyle>(
                  value: SystemUiOverlayStyle(
                    systemNavigationBarColor: bgColor,
                    systemNavigationBarIconBrightness: isDark
                        ? Brightness.light
                        : Brightness.dark,
                    systemNavigationBarContrastEnforced: false,
                    systemNavigationBarDividerColor: Colors.transparent,
                  ),
                  child: _RootGate(onThemeModeChanged: _onThemeModeChanged),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

enum _GateState { loading, login, healthError, home }

/// Decides whether to show the login screen or the home screen.
/// On first open with stored credentials a health check is performed.
class _RootGate extends StatefulWidget {
  const _RootGate({required this.onThemeModeChanged});

  final ValueChanged<ThemeMode> onThemeModeChanged;

  @override
  State<_RootGate> createState() => _RootGateState();
}

class _RootGateState extends State<_RootGate> {
  _GateState _state = _GateState.loading;
  String _healthErrorMessage =
      'The Coolify instance did not respond. Check your network or instance URL.';

  @override
  void initState() {
    super.initState();
    _check();
  }

  Future<void> _check() async {
    setState(() => _state = _GateState.loading);

    final creds = CredentialsService.instance;
    final hasCredentials = await creds.hasCredentials();

    if (!hasCredentials) {
      if (mounted) setState(() => _state = _GateState.login);
      return;
    }

    final baseUrl = await creds.getBaseUrl();
    final apiToken = await creds.getApiToken();
    final api = CoolifyApi(baseUrl: baseUrl!, apiToken: apiToken!);

    try {
      final isUp = await api.health.check();
      if (!mounted) return;
      setState(() => _state = isUp ? _GateState.home : _GateState.healthError);
    } catch (error) {
      if (mounted) {
        setState(() {
          _healthErrorMessage = error.toString();
          _state = _GateState.healthError;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);

    return switch (_state) {
      _GateState.loading => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
      _GateState.login => LoginPage(onLoginSuccess: _check),
      _GateState.healthError => Scaffold(
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Cannot reach instance', style: theme.textTheme.h3),
                  const SizedBox(height: 8),
                  Text(
                    _healthErrorMessage,
                    style: theme.textTheme.muted,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  ShadButton(onPressed: _check, child: const Text('Retry')),
                  const SizedBox(height: 12),
                  ShadButton.outline(
                    onPressed: () async {
                      await CredentialsService.instance.clear();
                      _check();
                    },
                    child: const Text('Re-enter credentials'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      _GateState.home => HomePage(
        onThemeModeChanged: widget.onThemeModeChanged,
      ),
    };
  }
}
