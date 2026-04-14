import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract final class CredentialsKeys {
  static const String baseUrl = 'coolify_base_url';
  static const String apiToken = 'coolify_api_token';
}

class CredentialsService {
  CredentialsService._();

  static final CredentialsService instance = CredentialsService._();

  static const _storage = FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
  );

  Future<String?> getBaseUrl() async {
    final value = await _storage.read(key: CredentialsKeys.baseUrl);
    return normalizeBaseUrl(value);
  }

  Future<String?> getApiToken() async {
    final value = await _storage.read(key: CredentialsKeys.apiToken);
    return normalizeApiToken(value);
  }

  Future<void> setBaseUrl(String value) => _storage.write(
    key: CredentialsKeys.baseUrl,
    value: normalizeBaseUrl(value),
  );

  Future<void> setApiToken(String value) => _storage.write(
    key: CredentialsKeys.apiToken,
    value: normalizeApiToken(value),
  );

  Future<void> setCredentials({
    required String baseUrl,
    required String apiToken,
  }) async {
    await Future.wait([setBaseUrl(baseUrl), setApiToken(apiToken)]);
  }

  Future<bool> hasCredentials() async {
    final url = await getBaseUrl();
    final token = await getApiToken();
    return url != null && url.isNotEmpty && token != null && token.isNotEmpty;
  }

  Future<void> clear() => _storage.deleteAll();
}

String? normalizeBaseUrl(String? value) {
  final normalized = _normalizeCredential(value);
  if (normalized == null || normalized.isEmpty) {
    return null;
  }

  return normalized.replaceAll(RegExp(r'/$'), '');
}

String? normalizeApiToken(String? value) {
  final normalized = _normalizeCredential(value);
  if (normalized == null || normalized.isEmpty) {
    return null;
  }

  return normalized;
}

String? _normalizeCredential(String? value) {
  if (value == null) {
    return null;
  }

  final trimmed = value.trim();
  if (trimmed.isEmpty) {
    return null;
  }

  if ((trimmed.startsWith('"') && trimmed.endsWith('"')) ||
      (trimmed.startsWith("'") && trimmed.endsWith("'"))) {
    return trimmed.substring(1, trimmed.length - 1).trim();
  }

  return trimmed;
}
