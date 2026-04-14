import '../core/base_api_client.dart';

class DatabasesApi {
  DatabasesApi({required String baseUrl, required String apiToken})
    : _client = BaseApiClient(baseUrl: baseUrl, apiToken: apiToken),
      postgresql = PostgreSqlDatabasesApi(baseUrl: baseUrl, apiToken: apiToken),
      clickhouse = ClickHouseDatabasesApi(baseUrl: baseUrl, apiToken: apiToken),
      dragonfly = DragonflyDatabasesApi(baseUrl: baseUrl, apiToken: apiToken),
      redis = RedisDatabasesApi(baseUrl: baseUrl, apiToken: apiToken),
      keydb = KeyDbDatabasesApi(baseUrl: baseUrl, apiToken: apiToken),
      mariadb = MariaDbDatabasesApi(baseUrl: baseUrl, apiToken: apiToken),
      mysql = MySqlDatabasesApi(baseUrl: baseUrl, apiToken: apiToken),
      mongodb = MongoDbDatabasesApi(baseUrl: baseUrl, apiToken: apiToken);

  final BaseApiClient _client;

  final PostgreSqlDatabasesApi postgresql;
  final ClickHouseDatabasesApi clickhouse;
  final DragonflyDatabasesApi dragonfly;
  final RedisDatabasesApi redis;
  final KeyDbDatabasesApi keydb;
  final MariaDbDatabasesApi mariadb;
  final MySqlDatabasesApi mysql;
  final MongoDbDatabasesApi mongodb;

  Future<List<DatabaseResource>> list() async {
    final data = await _client.getList('/databases');
    return data.map(DatabaseResource.fromJson).toList();
  }

  Future<DatabaseResource> get(String uuid) async {
    final data = await _client.getObject('/databases/$uuid');
    return DatabaseResource.fromJson(data);
  }

  Future<DatabaseResource> update(
    String uuid, {
    required Map<String, dynamic> body,
  }) async {
    final data = await _client.patchObject('/databases/$uuid', body: body);
    if (data.isNotEmpty) {
      return DatabaseResource.fromJson(data);
    }
    return get(uuid);
  }

  Future<void> delete(String uuid) async {
    await _client.delete('/databases/$uuid');
  }
}

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

  factory DatabaseResource.fromJson(Map<String, dynamic> json) {
    return DatabaseResource(
      id: _intValue(json['id']),
      uuid: _stringValue(json['uuid']),
      name: _stringValue(json['name'], fallback: 'Unnamed database'),
      description: _stringValue(json['description']),
      status: _stringValue(json['status']),
      environmentId: _intValue(json['environment_id']),
      serviceType: _detectServiceType(json),
      rawJson: Map<String, dynamic>.from(json),
    );
  }

  final int id;
  final String uuid;
  final String name;
  final String description;
  final String status;
  final int environmentId;
  final String serviceType;
  final Map<String, dynamic> rawJson;
}

abstract class _TypedDatabaseCreateApi {
  const _TypedDatabaseCreateApi(this._client, this._path);

  final BaseApiClient _client;
  final String _path;

  Future<DatabaseResource> create(Map<String, dynamic> body) async {
    final data = await _client.postObject(_path, body: body);
    return DatabaseResource.fromJson(data);
  }
}

class PostgreSqlDatabasesApi extends _TypedDatabaseCreateApi {
  PostgreSqlDatabasesApi({required String baseUrl, required String apiToken})
    : super(
        BaseApiClient(baseUrl: baseUrl, apiToken: apiToken),
        '/databases/postgresql',
      );
}

class ClickHouseDatabasesApi extends _TypedDatabaseCreateApi {
  ClickHouseDatabasesApi({required String baseUrl, required String apiToken})
    : super(
        BaseApiClient(baseUrl: baseUrl, apiToken: apiToken),
        '/databases/clickhouse',
      );
}

class DragonflyDatabasesApi extends _TypedDatabaseCreateApi {
  DragonflyDatabasesApi({required String baseUrl, required String apiToken})
    : super(
        BaseApiClient(baseUrl: baseUrl, apiToken: apiToken),
        '/databases/dragonfly',
      );
}

class RedisDatabasesApi extends _TypedDatabaseCreateApi {
  RedisDatabasesApi({required String baseUrl, required String apiToken})
    : super(
        BaseApiClient(baseUrl: baseUrl, apiToken: apiToken),
        '/databases/redis',
      );
}

class KeyDbDatabasesApi extends _TypedDatabaseCreateApi {
  KeyDbDatabasesApi({required String baseUrl, required String apiToken})
    : super(
        BaseApiClient(baseUrl: baseUrl, apiToken: apiToken),
        '/databases/keydb',
      );
}

class MariaDbDatabasesApi extends _TypedDatabaseCreateApi {
  MariaDbDatabasesApi({required String baseUrl, required String apiToken})
    : super(
        BaseApiClient(baseUrl: baseUrl, apiToken: apiToken),
        '/databases/mariadb',
      );
}

class MySqlDatabasesApi extends _TypedDatabaseCreateApi {
  MySqlDatabasesApi({required String baseUrl, required String apiToken})
    : super(
        BaseApiClient(baseUrl: baseUrl, apiToken: apiToken),
        '/databases/mysql',
      );
}

class MongoDbDatabasesApi extends _TypedDatabaseCreateApi {
  MongoDbDatabasesApi({required String baseUrl, required String apiToken})
    : super(
        BaseApiClient(baseUrl: baseUrl, apiToken: apiToken),
        '/databases/mongodb',
      );
}

String _detectServiceType(Map<String, dynamic> json) {
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
