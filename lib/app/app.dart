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
      home: _SonnerShell(
        child: Builder(
          builder: (context) {
            final isDark =
                ShadTheme.of(context).brightness == Brightness.dark;
            final bgColor = ShadTheme.of(context).colorScheme.background;
            return Theme(
              data: Theme.of(context).copyWith(
                scaffoldBackgroundColor: bgColor,
                appBarTheme: AppBarTheme(
                  backgroundColor: bgColor,
                  surfaceTintColor: Colors.transparent,
                  elevation: 0,
                ),
              ),
              child: AnnotatedRegion<SystemUiOverlayStyle>(
                value: SystemUiOverlayStyle(
                  systemNavigationBarColor: bgColor,
                  systemNavigationBarIconBrightness: isDark
                      ? Brightness.light
                      : Brightness.dark,
                  systemNavigationBarContrastEnforced: false,
                  systemNavigationBarDividerColor: Colors.transparent,
                ),
                child: _RootGate(onThemeModeChanged: _onThemeModeChanged),
              ),
            );
          },
        ),
      ),
    );
  }
}

/// Wraps [child] in a [ShadSonner] with a bottom padding that always sits
/// above the native navigation bar. Reacts to metric changes (e.g. rotation,
/// keyboard) via [WidgetsBindingObserver] so the inset is never stale.
class _SonnerShell extends StatefulWidget {
  const _SonnerShell({required this.child});

  final Widget child;

  @override
  State<_SonnerShell> createState() => _SonnerShellState();
}

class _SonnerShellState extends State<_SonnerShell>
    with WidgetsBindingObserver {
  double _bottomInset = 0;
  static const double _horizontalPadding = 16;
  static const double _topPadding = 16;
  static const double _bottomSpacingAboveSafeArea = 20;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _updateInset();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() => _updateInset();

  void _updateInset() {
    final view = WidgetsBinding.instance.platformDispatcher.views.first;
    final inset = view.viewPadding.bottom / view.devicePixelRatio;
    if (inset != _bottomInset) {
      setState(() => _bottomInset = inset);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ShadSonner(
      padding: EdgeInsets.fromLTRB(
        _horizontalPadding,
        _topPadding,
        _horizontalPadding,
        _topPadding + _bottomInset + _bottomSpacingAboveSafeArea,
      ),
      child: widget.child,
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

    final String? baseUrl;
    final String? apiToken;

    try {
      final hasCredentials = await creds.hasCredentials();
      if (!hasCredentials) {
        if (mounted) setState(() => _state = _GateState.login);
        return;
      }
      baseUrl = await creds.getBaseUrl();
      apiToken = await creds.getApiToken();
    } catch (_) {
      // Corrupt or unreadable secure storage (e.g. after keystore invalidation).
      // Clear and fall back to login so the user can re-enter credentials.
      await creds.clear();
      if (mounted) setState(() => _state = _GateState.login);
      return;
    }

    try {
      final api = CoolifyApi(baseUrl: baseUrl!, apiToken: apiToken!);
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
