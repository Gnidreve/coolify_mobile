import '../core/base_api_client.dart';

class SecurityApi {
  SecurityApi({required String baseUrl, required String apiToken})
    : keys = PrivateKeysApi(baseUrl: baseUrl, apiToken: apiToken);

  final PrivateKeysApi keys;
}

class PrivateKeysApi {
  PrivateKeysApi({required String baseUrl, required String apiToken})
    : _client = BaseApiClient(baseUrl: baseUrl, apiToken: apiToken);

  final BaseApiClient _client;

  Future<List<PrivateKeyResource>> list() async {
    final data = await _client.getList('/security/keys');
    return data.map(PrivateKeyResource.fromJson).toList();
  }

  Future<PrivateKeyResource> get(String uuid) async {
    final data = await _client.getObject('/security/keys/$uuid');
    return PrivateKeyResource.fromJson(data);
  }

  Future<PrivateKeyResource> create({
    required String name,
    required String description,
    required String privateKey,
  }) async {
    final data = await _client.postObject(
      '/security/keys',
      body: {
        'name': name,
        'description': description,
        'private_key': privateKey,
      },
    );
    return PrivateKeyResource.fromJson(data);
  }

  Future<PrivateKeyResource> update(
    String uuid, {
    required String name,
    required String description,
    String? privateKey,
  }) async {
    final body = <String, dynamic>{
      'name': name,
      'description': description,
    };
    body['private_key'] = privateKey;
    body.removeWhere((key, value) => value == null);

    final data = await _client.patchObject(
      '/security/keys/$uuid',
      body: body,
    );
    return PrivateKeyResource.fromJson(data);
  }
}

class PrivateKeyResource {
  const PrivateKeyResource({
    required this.id,
    required this.uuid,
    required this.name,
    required this.description,
    required this.privateKey,
    required this.publicKey,
    required this.fingerprint,
    required this.isGitRelated,
    required this.teamId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory PrivateKeyResource.fromJson(Map<String, dynamic> json) {
    final name =
        _readString(json, const ['name', 'key_name', 'title']) ?? 'Unnamed key';
    final description =
        _readString(json, const ['description', 'note', 'summary']) ?? '';
    final uuid = _readString(json, const ['uuid', 'id', 'key_uuid']) ?? '';
    final privateKey =
        _readString(json, const ['private_key', 'privateKey']) ?? '';
    final publicKey =
        _readString(json, const ['public_key', 'publicKey']) ?? '';
    final fingerprint =
        _readString(json, const ['fingerprint', 'public_key_fingerprint']) ??
        '';

    return PrivateKeyResource(
      id: json['id'] as int? ?? 0,
      uuid: uuid,
      name: name,
      description: description,
      privateKey: privateKey,
      publicKey: publicKey,
      fingerprint: fingerprint,
      isGitRelated: json['is_git_related'] as bool? ?? false,
      teamId: json['team_id'] as int? ?? 0,
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
    );
  }

  final int id;
  final String uuid;
  final String name;
  final String description;
  final String privateKey;
  final String publicKey;
  final String fingerprint;
  final bool isGitRelated;
  final int teamId;
  final String createdAt;
  final String updatedAt;
}

String? _readString(Map<String, dynamic> json, List<String> keys) {
  for (final key in keys) {
    final value = json[key];
    if (value is String && value.trim().isNotEmpty) {
      return value.trim();
    }
  }

  return null;
}
