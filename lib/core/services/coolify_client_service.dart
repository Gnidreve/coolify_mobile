import '../../api/coolify_api.dart';
import 'credentials_service.dart';

class CoolifyClientService {
  const CoolifyClientService._();

  static Future<CoolifyApi> createClient() async {
    final credentials = CredentialsService.instance;
    final baseUrl = normalizeBaseUrl(await credentials.getBaseUrl());
    final apiToken = normalizeApiToken(await credentials.getApiToken());

    if (baseUrl == null ||
        baseUrl.isEmpty ||
        apiToken == null ||
        apiToken.isEmpty) {
      throw StateError('Missing Coolify credentials.');
    }

    return CoolifyApi(baseUrl: baseUrl, apiToken: apiToken);
  }
}
