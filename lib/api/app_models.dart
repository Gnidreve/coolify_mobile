import 'package:coolify_api/api.dart';

import 'api_support.dart';

/// Display helpers on the generated models. The spec marks almost every
/// field optional, so the UI reads these instead of the nullable fields.

extension ApplicationX on Application {
  String get displayName => name ?? 'Unnamed application';
  String get uuidOrEmpty => uuid ?? '';
  String get statusOrEmpty => status ?? '';
  String get fqdnOrEmpty => fqdn ?? '';
  String get descriptionOrEmpty => description ?? '';
  String get gitBranchOrEmpty => gitBranch ?? '';
  String get buildPackName => buildPack?.value ?? '';

  /// Asset name for icon lookup in lib/assets/applications/.
  String get iconAssetName => switch (buildPackName) {
    'dockercompose' => 'docker_compose',
    final other => other,
  };
}

/// An application as shown in the config editor.
///
/// The editor is driven by a field schema and needs every key the server
/// returns, including ones the spec's `Application` schema does not list
/// (e.g. `is_force_https_enabled`), so the raw JSON is kept next to the
/// typed model.
class ApplicationDetails {
  ApplicationDetails(this.raw)
    : application = Application.fromJson(raw) ?? Application();

  final JsonMap raw;
  final Application application;

  String get uuid => application.uuidOrEmpty;
  String get name => application.displayName;
}

extension ProjectX on Project {
  String get displayName => name ?? 'Unnamed project';
  String get descriptionOrEmpty => description ?? '';
}

extension EnvironmentX on Environment {
  String get displayName => name ?? 'Unnamed environment';
}

extension ServerX on Server {
  String get displayName => name ?? 'Unnamed server';
}

extension PrivateKeyX on PrivateKey {
  String get displayName => name ?? 'Unnamed key';
}

extension DeploymentX on ApplicationDeploymentQueue {
  String get statusOrEmpty => status ?? '';
  String get commitMessageOrEmpty => commitMessage ?? '';
  String get createdAtOrEmpty => createdAt ?? '';
}

/// A database of any engine. The spec does not model `/databases` (it types
/// the responses as plain strings), so this is read from the raw JSON.
class DatabaseResource {
  const DatabaseResource({
    required this.id,
    required this.uuid,
    required this.name,
    required this.description,
    required this.status,
    required this.environmentId,
    required this.serviceType,
    required this.rawJson,
  });

  factory DatabaseResource.fromJson(JsonMap json) {
    return DatabaseResource(
      id: _intValue(json['id']),
      uuid: _stringValue(json['uuid']),
      name: _stringValue(json['name'], fallback: 'Unnamed database'),
      description: _stringValue(json['description']),
      status: _stringValue(json['status']),
      environmentId: _intValue(json['environment_id']),
      serviceType: _detectServiceType(json),
      rawJson: JsonMap.from(json),
    );
  }

  final int id;
  final String uuid;
  final String name;
  final String description;
  final String status;
  final int environmentId;
  final String serviceType;
  final JsonMap rawJson;
}

String _detectServiceType(JsonMap json) {
  final explicitCandidates = [
    json['database_type'],
    json['type'],
    json['resource_type'],
    json['engine'],
  ];
  for (final candidate in explicitCandidates) {
    final explicit = _stringValue(candidate);
    if (explicit.isNotEmpty) {
      return explicit.toLowerCase();
    }
  }

  if (json.containsKey('postgres_user') || json.containsKey('postgres_db')) {
    return 'postgresql';
  }
  if (json.containsKey('clickhouse_admin_user')) return 'clickhouse';
  if (json.containsKey('dragonfly_password')) return 'dragonfly';
  if (json.containsKey('redis_password') || json.containsKey('redis_conf')) {
    return 'redis';
  }
  if (json.containsKey('keydb_password') || json.containsKey('keydb_conf')) {
    return 'keydb';
  }
  if (json.containsKey('mariadb_user') || json.containsKey('mariadb_conf')) {
    return 'mariadb';
  }
  if (json.containsKey('mysql_user') || json.containsKey('mysql_conf')) {
    return 'mysql';
  }
  if (json.containsKey('mongo_conf') ||
      json.containsKey('mongo_initdb_root_username')) {
    return 'mongodb';
  }

  return 'database';
}

String _stringValue(dynamic value, {String? fallback}) {
  if (value == null) return fallback ?? '';
  if (value is String) {
    return value.isEmpty ? (fallback ?? '') : value;
  }
  return '$value';
}

int _intValue(dynamic value) {
  if (value is int) return value;
  if (value is num) return value.toInt();
  if (value is String) return int.tryParse(value) ?? 0;
  return 0;
}
