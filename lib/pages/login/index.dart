import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../api/coolify_api.dart';
import '../../core/services/app_toast.dart';
import '../../core/services/credentials_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.onLoginSuccess});

  final VoidCallback onLoginSuccess;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<ShadFormState>();
  final _urlController = TextEditingController();
  final _tokenController = TextEditingController();
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    final envUrl = normalizeBaseUrl(dotenv.env['COOLIFY_BASE_URL']);
    final envToken = normalizeApiToken(dotenv.env['COOLIFY_AUTH_TOKEN']);
    if (envUrl != null && envUrl.isNotEmpty) _urlController.text = envUrl;
    if (envToken != null && envToken.isNotEmpty) _tokenController.text = envToken;
  }

  @override
  void dispose() {
    _urlController.dispose();
    _tokenController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!(_formKey.currentState?.saveAndValidate() ?? false)) return;

    setState(() {
      _loading = true;
    });

    try {
      final rawUrl = normalizeBaseUrl(_urlController.text);
      final token = normalizeApiToken(_tokenController.text);

      if (rawUrl == null || token == null) {
        throw const FormatException('Missing credentials');
      }

      final uri = Uri.parse(rawUrl);
      if (!uri.hasScheme || !uri.hasAuthority) {
        throw const FormatException('Invalid URL');
      }
      final baseUrl = normalizeBaseUrl(uri.toString())!;

      final api = CoolifyApi(baseUrl: baseUrl, apiToken: token);
      final isUp = await api.health.check();
      if (!isUp) {
        if (mounted) {
          AppToast.error(
            context,
            'Could not reach the Coolify instance. Check the URL and try again.',
            title: 'Connection failed',
          );
        }
        return;
      }

      await CredentialsService.instance.setCredentials(
        baseUrl: baseUrl,
        apiToken: token,
      );

      widget.onLoginSuccess();
    } on FormatException {
      if (mounted) {
        AppToast.error(
          context,
          'Please enter a valid URL.',
          title: 'Validation failed',
        );
      }
    } catch (error) {
      if (mounted) {
        AppToast.error(context, error.toString(), title: 'Connection failed');
      }
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: ShadForm(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: SvgPicture.asset(
                        'lib/assets/coolify-logo.svg',
                        width: 48,
                        height: 48,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Coolify Mobile',
                      style: theme.textTheme.h2,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Enter your Coolify instance URL and API token.',
                      style: theme.textTheme.muted,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 32),
                    ShadInputFormField(
                      id: 'base_url',
                      controller: _urlController,
                      label: const Text('Instance URL'),
                      placeholder: const Text('https://coolify.example.com'),
                      keyboardType: TextInputType.url,
                      autocorrect: false,
                      validator: (value) {
                        if (value.trim().isEmpty) return 'URL is required.';
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    ShadInputFormField(
                      id: 'api_token',
                      controller: _tokenController,
                      label: const Text('API Token'),
                      placeholder: const Text('Your Coolify API token'),
                      obscureText: true,
                      validator: (value) {
                        if (value.trim().isEmpty) {
                          return 'API token is required.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 24),
                    ShadButton(
                      onPressed: _loading ? null : _submit,
                      child: _loading
                          ? const SizedBox(
                              width: 16,
                              height: 16,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Text('Connect'),
                    ),
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
