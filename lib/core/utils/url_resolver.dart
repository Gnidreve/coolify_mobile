Uri resolveRequestUri({required String rawUrl, required String? appBaseUrl}) {
  final trimmed = rawUrl.trim();
  final direct = Uri.tryParse(trimmed);
  if (direct != null && direct.hasScheme) return direct;

  final baseUrl = appBaseUrl?.trim();
  if (baseUrl == null || baseUrl.isEmpty) {
    throw const FormatException(
      'Relative URL ohne globale Base URL ist nicht erlaubt.',
    );
  }

  final baseUri = Uri.parse(normalizeBaseUrl(baseUrl));
  final relativePath = trimmed.startsWith('/') ? trimmed.substring(1) : trimmed;
  return baseUri.resolve(relativePath);
}

Uri resolveAbsoluteRequestUri(String rawUrl) {
  final trimmed = rawUrl.trim();
  final uri = Uri.tryParse(trimmed);
  if (uri == null || !uri.hasScheme || uri.host.isEmpty) {
    throw const FormatException(
      'Bitte eine vollstandige URL wie https://example.com/health eingeben.',
    );
  }
  return uri;
}

Uri resolveCoolifyDeployUri({
  required String rawValue,
  required String? appBaseUrl,
}) {
  final trimmed = rawValue.trim();
  final direct = Uri.tryParse(trimmed);

  if (direct != null &&
      direct.hasScheme &&
      direct.queryParameters['uuid']?.trim().isNotEmpty == true) {
    final params = Map<String, String>.from(direct.queryParameters);
    params['force'] = params['force']?.trim().isNotEmpty == true
        ? params['force']!
        : 'false';
    return direct.replace(queryParameters: params);
  }

  if (trimmed.contains('/')) {
    return resolveRequestUri(rawUrl: trimmed, appBaseUrl: appBaseUrl);
  }

  final baseUrl = appBaseUrl?.trim();
  if (baseUrl == null || baseUrl.isEmpty) {
    throw const FormatException(
      'UUID ohne globale Base URL ist nicht erlaubt.',
    );
  }

  final baseUri = Uri.parse(normalizeBaseUrl(baseUrl));
  return baseUri
      .resolve('api/v1/deploy')
      .replace(queryParameters: {'uuid': trimmed, 'force': 'false'});
}

String extractCoolifyDeployUuid(String? rawValue) {
  final trimmed = rawValue?.trim();
  if (trimmed == null || trimmed.isEmpty) return '';

  final direct = Uri.tryParse(trimmed);
  final uuid = direct?.queryParameters['uuid']?.trim();
  if (uuid != null && uuid.isNotEmpty) {
    return uuid;
  }

  return trimmed;
}

bool hasCoolifyDeployUuid(String? rawValue) {
  final trimmed = rawValue?.trim();
  if (trimmed == null || trimmed.isEmpty) return false;

  final direct = Uri.tryParse(trimmed);
  final uuid = direct?.queryParameters['uuid']?.trim();
  if (uuid != null && uuid.isNotEmpty) {
    return true;
  }

  return !trimmed.contains('/') && !trimmed.contains('?');
}

String normalizeBaseUrl(String value) {
  final trimmed = value.trim();
  final uri = Uri.parse(trimmed);
  if (!uri.hasScheme || uri.host.isEmpty) {
    throw const FormatException(
      'Bitte eine vollstandige URL wie https://example.com/ eingeben.',
    );
  }
  final text = uri.toString();
  return text.endsWith('/') ? text : '$text/';
}
