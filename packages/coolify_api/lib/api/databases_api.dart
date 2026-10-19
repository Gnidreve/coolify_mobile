//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DatabasesApi {
  DatabasesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Clone
  ///
  /// Clone a database to a destination owned by the authenticated team.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [CloneDatabaseByUuidRequest] cloneDatabaseByUuidRequest (required):
  Future<Response> cloneDatabaseByUuidWithHttpInfo(String uuid, CloneDatabaseByUuidRequest cloneDatabaseByUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/clone'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = cloneDatabaseByUuidRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Clone
  ///
  /// Clone a database to a destination owned by the authenticated team.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [CloneDatabaseByUuidRequest] cloneDatabaseByUuidRequest (required):
  Future<void> cloneDatabaseByUuid(String uuid, CloneDatabaseByUuidRequest cloneDatabaseByUuidRequest,) async {
    final response = await cloneDatabaseByUuidWithHttpInfo(uuid, cloneDatabaseByUuidRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create Backup
  ///
  /// Create a new scheduled backup configuration for a database
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [CreateDatabaseBackupRequest] createDatabaseBackupRequest (required):
  ///   Backup configuration data
  Future<Response> createDatabaseBackupWithHttpInfo(String uuid, CreateDatabaseBackupRequest createDatabaseBackupRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/backups'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = createDatabaseBackupRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create Backup
  ///
  /// Create a new scheduled backup configuration for a database
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [CreateDatabaseBackupRequest] createDatabaseBackupRequest (required):
  ///   Backup configuration data
  Future<CreateDatabaseBackup201Response?> createDatabaseBackup(String uuid, CreateDatabaseBackupRequest createDatabaseBackupRequest,) async {
    final response = await createDatabaseBackupWithHttpInfo(uuid, createDatabaseBackupRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateDatabaseBackup201Response',) as CreateDatabaseBackup201Response;
    
    }
    return null;
  }

  /// Create (Clickhouse)
  ///
  /// Create a new Clickhouse database.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateDatabaseClickhouseRequest] createDatabaseClickhouseRequest (required):
  ///   Database data
  Future<Response> createDatabaseClickhouseWithHttpInfo(CreateDatabaseClickhouseRequest createDatabaseClickhouseRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/clickhouse';

    // ignore: prefer_final_locals
    Object? postBody = createDatabaseClickhouseRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create (Clickhouse)
  ///
  /// Create a new Clickhouse database.
  ///
  /// Parameters:
  ///
  /// * [CreateDatabaseClickhouseRequest] createDatabaseClickhouseRequest (required):
  ///   Database data
  Future<void> createDatabaseClickhouse(CreateDatabaseClickhouseRequest createDatabaseClickhouseRequest,) async {
    final response = await createDatabaseClickhouseWithHttpInfo(createDatabaseClickhouseRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create (DragonFly)
  ///
  /// Create a new DragonFly database.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateDatabaseDragonflyRequest] createDatabaseDragonflyRequest (required):
  ///   Database data
  Future<Response> createDatabaseDragonflyWithHttpInfo(CreateDatabaseDragonflyRequest createDatabaseDragonflyRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/dragonfly';

    // ignore: prefer_final_locals
    Object? postBody = createDatabaseDragonflyRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create (DragonFly)
  ///
  /// Create a new DragonFly database.
  ///
  /// Parameters:
  ///
  /// * [CreateDatabaseDragonflyRequest] createDatabaseDragonflyRequest (required):
  ///   Database data
  Future<void> createDatabaseDragonfly(CreateDatabaseDragonflyRequest createDatabaseDragonflyRequest,) async {
    final response = await createDatabaseDragonflyWithHttpInfo(createDatabaseDragonflyRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Import database backup
  ///
  /// Restore a backup into the database. Every import source requires the deploy ability.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [DatabaseImportRequest] databaseImportRequest (required):
  Future<Response> createDatabaseImportWithHttpInfo(String uuid, DatabaseImportRequest databaseImportRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/imports'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = databaseImportRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Import database backup
  ///
  /// Restore a backup into the database. Every import source requires the deploy ability.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [DatabaseImportRequest] databaseImportRequest (required):
  Future<void> createDatabaseImport(String uuid, DatabaseImportRequest databaseImportRequest,) async {
    final response = await createDatabaseImportWithHttpInfo(uuid, databaseImportRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create (KeyDB)
  ///
  /// Create a new KeyDB database.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateDatabaseKeydbRequest] createDatabaseKeydbRequest (required):
  ///   Database data
  Future<Response> createDatabaseKeydbWithHttpInfo(CreateDatabaseKeydbRequest createDatabaseKeydbRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/keydb';

    // ignore: prefer_final_locals
    Object? postBody = createDatabaseKeydbRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create (KeyDB)
  ///
  /// Create a new KeyDB database.
  ///
  /// Parameters:
  ///
  /// * [CreateDatabaseKeydbRequest] createDatabaseKeydbRequest (required):
  ///   Database data
  Future<void> createDatabaseKeydb(CreateDatabaseKeydbRequest createDatabaseKeydbRequest,) async {
    final response = await createDatabaseKeydbWithHttpInfo(createDatabaseKeydbRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create (MariaDB)
  ///
  /// Create a new MariaDB database.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateDatabaseMariadbRequest] createDatabaseMariadbRequest (required):
  ///   Database data
  Future<Response> createDatabaseMariadbWithHttpInfo(CreateDatabaseMariadbRequest createDatabaseMariadbRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/mariadb';

    // ignore: prefer_final_locals
    Object? postBody = createDatabaseMariadbRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create (MariaDB)
  ///
  /// Create a new MariaDB database.
  ///
  /// Parameters:
  ///
  /// * [CreateDatabaseMariadbRequest] createDatabaseMariadbRequest (required):
  ///   Database data
  Future<void> createDatabaseMariadb(CreateDatabaseMariadbRequest createDatabaseMariadbRequest,) async {
    final response = await createDatabaseMariadbWithHttpInfo(createDatabaseMariadbRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create (MongoDB)
  ///
  /// Create a new MongoDB database.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateDatabaseMongodbRequest] createDatabaseMongodbRequest (required):
  ///   Database data
  Future<Response> createDatabaseMongodbWithHttpInfo(CreateDatabaseMongodbRequest createDatabaseMongodbRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/mongodb';

    // ignore: prefer_final_locals
    Object? postBody = createDatabaseMongodbRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create (MongoDB)
  ///
  /// Create a new MongoDB database.
  ///
  /// Parameters:
  ///
  /// * [CreateDatabaseMongodbRequest] createDatabaseMongodbRequest (required):
  ///   Database data
  Future<void> createDatabaseMongodb(CreateDatabaseMongodbRequest createDatabaseMongodbRequest,) async {
    final response = await createDatabaseMongodbWithHttpInfo(createDatabaseMongodbRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create (MySQL)
  ///
  /// Create a new MySQL database.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateDatabaseMysqlRequest] createDatabaseMysqlRequest (required):
  ///   Database data
  Future<Response> createDatabaseMysqlWithHttpInfo(CreateDatabaseMysqlRequest createDatabaseMysqlRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/mysql';

    // ignore: prefer_final_locals
    Object? postBody = createDatabaseMysqlRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create (MySQL)
  ///
  /// Create a new MySQL database.
  ///
  /// Parameters:
  ///
  /// * [CreateDatabaseMysqlRequest] createDatabaseMysqlRequest (required):
  ///   Database data
  Future<void> createDatabaseMysql(CreateDatabaseMysqlRequest createDatabaseMysqlRequest,) async {
    final response = await createDatabaseMysqlWithHttpInfo(createDatabaseMysqlRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create (PostgreSQL)
  ///
  /// Create a new PostgreSQL database.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateDatabasePostgresqlRequest] createDatabasePostgresqlRequest (required):
  ///   Database data
  Future<Response> createDatabasePostgresqlWithHttpInfo(CreateDatabasePostgresqlRequest createDatabasePostgresqlRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/postgresql';

    // ignore: prefer_final_locals
    Object? postBody = createDatabasePostgresqlRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create (PostgreSQL)
  ///
  /// Create a new PostgreSQL database.
  ///
  /// Parameters:
  ///
  /// * [CreateDatabasePostgresqlRequest] createDatabasePostgresqlRequest (required):
  ///   Database data
  Future<void> createDatabasePostgresql(CreateDatabasePostgresqlRequest createDatabasePostgresqlRequest,) async {
    final response = await createDatabasePostgresqlWithHttpInfo(createDatabasePostgresqlRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create (Redis)
  ///
  /// Create a new Redis database.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateDatabaseRedisRequest] createDatabaseRedisRequest (required):
  ///   Database data
  Future<Response> createDatabaseRedisWithHttpInfo(CreateDatabaseRedisRequest createDatabaseRedisRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/redis';

    // ignore: prefer_final_locals
    Object? postBody = createDatabaseRedisRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create (Redis)
  ///
  /// Create a new Redis database.
  ///
  /// Parameters:
  ///
  /// * [CreateDatabaseRedisRequest] createDatabaseRedisRequest (required):
  ///   Database data
  Future<void> createDatabaseRedis(CreateDatabaseRedisRequest createDatabaseRedisRequest,) async {
    final response = await createDatabaseRedisWithHttpInfo(createDatabaseRedisRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create (SQLite)
  ///
  /// Create a new SQLite database.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateDatabaseSqliteRequest] createDatabaseSqliteRequest (required):
  ///   Database data
  Future<Response> createDatabaseSqliteWithHttpInfo(CreateDatabaseSqliteRequest createDatabaseSqliteRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/sqlite';

    // ignore: prefer_final_locals
    Object? postBody = createDatabaseSqliteRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create (SQLite)
  ///
  /// Create a new SQLite database.
  ///
  /// Parameters:
  ///
  /// * [CreateDatabaseSqliteRequest] createDatabaseSqliteRequest (required):
  ///   Database data
  Future<void> createDatabaseSqlite(CreateDatabaseSqliteRequest createDatabaseSqliteRequest,) async {
    final response = await createDatabaseSqliteWithHttpInfo(createDatabaseSqliteRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create Env
  ///
  /// Create env by database UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [CreateEnvByDatabaseUuidRequest] createEnvByDatabaseUuidRequest (required):
  ///   Env created.
  Future<Response> createEnvByDatabaseUuidWithHttpInfo(String uuid, CreateEnvByDatabaseUuidRequest createEnvByDatabaseUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/envs'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = createEnvByDatabaseUuidRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create Env
  ///
  /// Create env by database UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [CreateEnvByDatabaseUuidRequest] createEnvByDatabaseUuidRequest (required):
  ///   Env created.
  Future<CreateEnvByApplicationUuid201Response?> createEnvByDatabaseUuid(String uuid, CreateEnvByDatabaseUuidRequest createEnvByDatabaseUuidRequest,) async {
    final response = await createEnvByDatabaseUuidWithHttpInfo(uuid, createEnvByDatabaseUuidRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateEnvByApplicationUuid201Response',) as CreateEnvByApplicationUuid201Response;
    
    }
    return null;
  }

  /// Create Storage
  ///
  /// Create a persistent storage or file storage for a database.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [CreateStorageByApplicationUuidRequest] createStorageByApplicationUuidRequest (required):
  Future<Response> createStorageByDatabaseUuidWithHttpInfo(String uuid, CreateStorageByApplicationUuidRequest createStorageByApplicationUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/storages'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = createStorageByApplicationUuidRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create Storage
  ///
  /// Create a persistent storage or file storage for a database.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [CreateStorageByApplicationUuidRequest] createStorageByApplicationUuidRequest (required):
  Future<Map<String, Object>?> createStorageByDatabaseUuid(String uuid, CreateStorageByApplicationUuidRequest createStorageByApplicationUuidRequest,) async {
    final response = await createStorageByDatabaseUuidWithHttpInfo(uuid, createStorageByApplicationUuidRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Create Tag
  ///
  /// Add tag(s) to a database by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [CreateTagByApplicationUuidRequest] createTagByApplicationUuidRequest (required):
  Future<Response> createTagByDatabaseUuidWithHttpInfo(String uuid, CreateTagByApplicationUuidRequest createTagByApplicationUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/tags'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = createTagByApplicationUuidRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create Tag
  ///
  /// Add tag(s) to a database by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [CreateTagByApplicationUuidRequest] createTagByApplicationUuidRequest (required):
  Future<List<Tag>?> createTagByDatabaseUuid(String uuid, CreateTagByApplicationUuidRequest createTagByApplicationUuidRequest,) async {
    final response = await createTagByDatabaseUuidWithHttpInfo(uuid, createTagByApplicationUuidRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Tag>') as List)
        .cast<Tag>()
        .toList(growable: false);

    }
    return null;
  }

  /// Delete backup configuration
  ///
  /// Deletes a backup configuration and all its executions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database
  ///
  /// * [String] scheduledBackupUuid (required):
  ///   UUID of the backup configuration to delete
  ///
  /// * [bool] deleteS3:
  ///   Whether to delete all backup files from S3
  Future<Response> deleteBackupConfigurationByUuidWithHttpInfo(String uuid, String scheduledBackupUuid, { bool? deleteS3, }) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/backups/{scheduled_backup_uuid}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{scheduled_backup_uuid}', scheduledBackupUuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deleteS3 != null) {
      queryParams.addAll(_queryParams('', 'delete_s3', deleteS3));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete backup configuration
  ///
  /// Deletes a backup configuration and all its executions.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database
  ///
  /// * [String] scheduledBackupUuid (required):
  ///   UUID of the backup configuration to delete
  ///
  /// * [bool] deleteS3:
  ///   Whether to delete all backup files from S3
  Future<DeleteBackupConfigurationByUuid200Response?> deleteBackupConfigurationByUuid(String uuid, String scheduledBackupUuid, { bool? deleteS3, }) async {
    final response = await deleteBackupConfigurationByUuidWithHttpInfo(uuid, scheduledBackupUuid,  deleteS3: deleteS3, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteBackupConfigurationByUuid200Response',) as DeleteBackupConfigurationByUuid200Response;
    
    }
    return null;
  }

  /// Delete backup execution
  ///
  /// Deletes a specific backup execution.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database
  ///
  /// * [String] scheduledBackupUuid (required):
  ///   UUID of the backup configuration
  ///
  /// * [String] executionUuid (required):
  ///   UUID of the backup execution to delete
  ///
  /// * [bool] deleteS3:
  ///   Whether to delete the backup from S3
  Future<Response> deleteBackupExecutionByUuidWithHttpInfo(String uuid, String scheduledBackupUuid, String executionUuid, { bool? deleteS3, }) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/backups/{scheduled_backup_uuid}/executions/{execution_uuid}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{scheduled_backup_uuid}', scheduledBackupUuid)
      .replaceAll('{execution_uuid}', executionUuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deleteS3 != null) {
      queryParams.addAll(_queryParams('', 'delete_s3', deleteS3));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete backup execution
  ///
  /// Deletes a specific backup execution.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database
  ///
  /// * [String] scheduledBackupUuid (required):
  ///   UUID of the backup configuration
  ///
  /// * [String] executionUuid (required):
  ///   UUID of the backup execution to delete
  ///
  /// * [bool] deleteS3:
  ///   Whether to delete the backup from S3
  Future<DeleteBackupExecutionByUuid200Response?> deleteBackupExecutionByUuid(String uuid, String scheduledBackupUuid, String executionUuid, { bool? deleteS3, }) async {
    final response = await deleteBackupExecutionByUuidWithHttpInfo(uuid, scheduledBackupUuid, executionUuid,  deleteS3: deleteS3, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteBackupExecutionByUuid200Response',) as DeleteBackupExecutionByUuid200Response;
    
    }
    return null;
  }

  /// Delete
  ///
  /// Delete database by UUID. Needs a token with the write and deploy permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [bool] deleteConfigurations:
  ///   Delete configurations.
  ///
  /// * [bool] deleteVolumes:
  ///   Delete volumes.
  ///
  /// * [bool] dockerCleanup:
  ///   Run docker cleanup when the server disk usage is at or above its cleanup threshold. Skipped when a cleanup ran on the server in the last hour.
  ///
  /// * [bool] deleteConnectedNetworks:
  ///   Delete connected networks.
  Future<Response> deleteDatabaseByUuidWithHttpInfo(String uuid, { bool? deleteConfigurations, bool? deleteVolumes, bool? dockerCleanup, bool? deleteConnectedNetworks, }) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deleteConfigurations != null) {
      queryParams.addAll(_queryParams('', 'delete_configurations', deleteConfigurations));
    }
    if (deleteVolumes != null) {
      queryParams.addAll(_queryParams('', 'delete_volumes', deleteVolumes));
    }
    if (dockerCleanup != null) {
      queryParams.addAll(_queryParams('', 'docker_cleanup', dockerCleanup));
    }
    if (deleteConnectedNetworks != null) {
      queryParams.addAll(_queryParams('', 'delete_connected_networks', deleteConnectedNetworks));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete
  ///
  /// Delete database by UUID. Needs a token with the write and deploy permissions.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [bool] deleteConfigurations:
  ///   Delete configurations.
  ///
  /// * [bool] deleteVolumes:
  ///   Delete volumes.
  ///
  /// * [bool] dockerCleanup:
  ///   Run docker cleanup when the server disk usage is at or above its cleanup threshold. Skipped when a cleanup ran on the server in the last hour.
  ///
  /// * [bool] deleteConnectedNetworks:
  ///   Delete connected networks.
  Future<DeleteDatabaseByUuid200Response?> deleteDatabaseByUuid(String uuid, { bool? deleteConfigurations, bool? deleteVolumes, bool? dockerCleanup, bool? deleteConnectedNetworks, }) async {
    final response = await deleteDatabaseByUuidWithHttpInfo(uuid,  deleteConfigurations: deleteConfigurations, deleteVolumes: deleteVolumes, dockerCleanup: dockerCleanup, deleteConnectedNetworks: deleteConnectedNetworks, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteDatabaseByUuid200Response',) as DeleteDatabaseByUuid200Response;
    
    }
    return null;
  }

  /// Delete database storage backup schedule
  ///
  /// Delete the backup schedule and its local and S3 archives for a database storage.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] storageUuid (required):
  Future<Response> deleteDatabaseStorageBackupScheduleWithHttpInfo(String uuid, String storageUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/storages/{storage_uuid}/backups'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{storage_uuid}', storageUuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete database storage backup schedule
  ///
  /// Delete the backup schedule and its local and S3 archives for a database storage.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] storageUuid (required):
  Future<void> deleteDatabaseStorageBackupSchedule(String uuid, String storageUuid,) async {
    final response = await deleteDatabaseStorageBackupScheduleWithHttpInfo(uuid, storageUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete Env
  ///
  /// Delete env by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [String] envUuid (required):
  ///   UUID of the environment variable.
  Future<Response> deleteEnvByDatabaseUuidWithHttpInfo(String uuid, String envUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/envs/{env_uuid}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{env_uuid}', envUuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete Env
  ///
  /// Delete env by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [String] envUuid (required):
  ///   UUID of the environment variable.
  Future<DeleteEnvByApplicationUuid200Response?> deleteEnvByDatabaseUuid(String uuid, String envUuid,) async {
    final response = await deleteEnvByDatabaseUuidWithHttpInfo(uuid, envUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteEnvByApplicationUuid200Response',) as DeleteEnvByApplicationUuid200Response;
    
    }
    return null;
  }

  /// Delete Storage
  ///
  /// Delete a persistent storage or file storage by database UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [String] storageUuid (required):
  ///   UUID of the storage.
  Future<Response> deleteStorageByDatabaseUuidWithHttpInfo(String uuid, String storageUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/storages/{storage_uuid}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{storage_uuid}', storageUuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete Storage
  ///
  /// Delete a persistent storage or file storage by database UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [String] storageUuid (required):
  ///   UUID of the storage.
  Future<DeletePreviewDeploymentByPullRequestId200Response?> deleteStorageByDatabaseUuid(String uuid, String storageUuid,) async {
    final response = await deleteStorageByDatabaseUuidWithHttpInfo(uuid, storageUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeletePreviewDeploymentByPullRequestId200Response',) as DeletePreviewDeploymentByPullRequestId200Response;
    
    }
    return null;
  }

  /// Delete Tag
  ///
  /// Remove a tag from a database by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [String] tagUuid (required):
  ///   UUID of the tag.
  Future<Response> deleteTagByDatabaseUuidWithHttpInfo(String uuid, String tagUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/tags/{tag_uuid}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{tag_uuid}', tagUuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete Tag
  ///
  /// Remove a tag from a database by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [String] tagUuid (required):
  ///   UUID of the tag.
  Future<void> deleteTagByDatabaseUuid(String uuid, String tagUuid,) async {
    final response = await deleteTagByDatabaseUuidWithHttpInfo(uuid, tagUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get
  ///
  /// Get backups details by database UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  Future<Response> getDatabaseBackupsByUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/backups'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get
  ///
  /// Get backups details by database UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  Future<String?> getDatabaseBackupsByUuid(String uuid,) async {
    final response = await getDatabaseBackupsByUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Get
  ///
  /// Get database by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  Future<Response> getDatabaseByUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get
  ///
  /// Get database by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  Future<String?> getDatabaseByUuid(String uuid,) async {
    final response = await getDatabaseByUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Get database import status
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [int] activityId (required):
  ///   Import activity ID.
  Future<Response> getDatabaseImportWithHttpInfo(String uuid, int activityId,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/imports/{activity_id}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{activity_id}', activityId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get database import status
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [int] activityId (required):
  ///   Import activity ID.
  Future<DatabaseImportStatus?> getDatabaseImport(String uuid, int activityId,) async {
    final response = await getDatabaseImportWithHttpInfo(uuid, activityId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DatabaseImportStatus',) as DatabaseImportStatus;
    
    }
    return null;
  }

  /// Get database logs.
  ///
  /// Get database logs by UUID. Requires the `read:sensitive` or `root` token ability.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [String] lines:
  ///   Number of lines to show from the end of the logs. Use `all` to return all logs. `-1` remains available as a compatibility alias.
  ///
  /// * [bool] showTimestamps:
  ///   Show timestamps in the logs.
  Future<Response> getDatabaseLogsByUuidWithHttpInfo(String uuid, { String? lines, bool? showTimestamps, }) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/logs'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (lines != null) {
      queryParams.addAll(_queryParams('', 'lines', lines));
    }
    if (showTimestamps != null) {
      queryParams.addAll(_queryParams('', 'show_timestamps', showTimestamps));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get database logs.
  ///
  /// Get database logs by UUID. Requires the `read:sensitive` or `root` token ability.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [String] lines:
  ///   Number of lines to show from the end of the logs. Use `all` to return all logs. `-1` remains available as a compatibility alias.
  ///
  /// * [bool] showTimestamps:
  ///   Show timestamps in the logs.
  Future<GetApplicationLogsByUuid200Response?> getDatabaseLogsByUuid(String uuid, { String? lines, bool? showTimestamps, }) async {
    final response = await getDatabaseLogsByUuidWithHttpInfo(uuid,  lines: lines, showTimestamps: showTimestamps, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetApplicationLogsByUuid200Response',) as GetApplicationLogsByUuid200Response;
    
    }
    return null;
  }

  /// List backup executions
  ///
  /// Get all executions for a specific backup configuration.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database
  ///
  /// * [String] scheduledBackupUuid (required):
  ///   UUID of the backup configuration
  Future<Response> listBackupExecutionsWithHttpInfo(String uuid, String scheduledBackupUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/backups/{scheduled_backup_uuid}/executions'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{scheduled_backup_uuid}', scheduledBackupUuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List backup executions
  ///
  /// Get all executions for a specific backup configuration.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database
  ///
  /// * [String] scheduledBackupUuid (required):
  ///   UUID of the backup configuration
  Future<ListBackupExecutions200Response?> listBackupExecutions(String uuid, String scheduledBackupUuid,) async {
    final response = await listBackupExecutionsWithHttpInfo(uuid, scheduledBackupUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListBackupExecutions200Response',) as ListBackupExecutions200Response;
    
    }
    return null;
  }

  /// List
  ///
  /// List all databases.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listDatabasesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/databases';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List
  ///
  /// List all databases.
  Future<String?> listDatabases() async {
    final response = await listDatabasesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// List Envs
  ///
  /// List all envs by database UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  Future<Response> listEnvsByDatabaseUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/envs'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List Envs
  ///
  /// List all envs by database UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  Future<List<EnvironmentVariable>?> listEnvsByDatabaseUuid(String uuid,) async {
    final response = await listEnvsByDatabaseUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EnvironmentVariable>') as List)
        .cast<EnvironmentVariable>()
        .toList(growable: false);

    }
    return null;
  }

  /// List Storages
  ///
  /// List all persistent storages and file storages by database UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  Future<Response> listStoragesByDatabaseUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/storages'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List Storages
  ///
  /// List all persistent storages and file storages by database UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  Future<ListStoragesByApplicationUuid200Response?> listStoragesByDatabaseUuid(String uuid,) async {
    final response = await listStoragesByDatabaseUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListStoragesByApplicationUuid200Response',) as ListStoragesByApplicationUuid200Response;
    
    }
    return null;
  }

  /// List Tags
  ///
  /// List tags for a database by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  Future<Response> listTagsByDatabaseUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/tags'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List Tags
  ///
  /// List tags for a database by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  Future<List<Tag>?> listTagsByDatabaseUuid(String uuid,) async {
    final response = await listTagsByDatabaseUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Tag>') as List)
        .cast<Tag>()
        .toList(growable: false);

    }
    return null;
  }

  /// Migrate to Server
  ///
  /// Migrate a database to another destination/server owned by the authenticated team. Stops the database, optionally transfers persistent volume data when both servers are managed by Coolify, and updates database records. Redeploy after migration completes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [MigrateApplicationByUuidRequest] migrateApplicationByUuidRequest (required):
  Future<Response> migrateDatabaseByUuidWithHttpInfo(String uuid, MigrateApplicationByUuidRequest migrateApplicationByUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/migrate'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = migrateApplicationByUuidRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Migrate to Server
  ///
  /// Migrate a database to another destination/server owned by the authenticated team. Stops the database, optionally transfers persistent volume data when both servers are managed by Coolify, and updates database records. Redeploy after migration completes.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [MigrateApplicationByUuidRequest] migrateApplicationByUuidRequest (required):
  Future<void> migrateDatabaseByUuid(String uuid, MigrateApplicationByUuidRequest migrateApplicationByUuidRequest,) async {
    final response = await migrateDatabaseByUuidWithHttpInfo(uuid, migrateApplicationByUuidRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Move
  ///
  /// Move database to another project/environment. This is a purely organizational change — running containers are not affected. Note: after moving, the database will pick up shared environment variables from the new environment on the next deployment.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [MoveApplicationByUuidRequest] moveApplicationByUuidRequest (required):
  ///   Target environment to move the database to.
  Future<Response> moveDatabaseByUuidWithHttpInfo(String uuid, MoveApplicationByUuidRequest moveApplicationByUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/move'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = moveApplicationByUuidRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Move
  ///
  /// Move database to another project/environment. This is a purely organizational change — running containers are not affected. Note: after moving, the database will pick up shared environment variables from the new environment on the next deployment.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [MoveApplicationByUuidRequest] moveApplicationByUuidRequest (required):
  ///   Target environment to move the database to.
  Future<MoveDatabaseByUuid200Response?> moveDatabaseByUuid(String uuid, MoveApplicationByUuidRequest moveApplicationByUuidRequest,) async {
    final response = await moveDatabaseByUuidWithHttpInfo(uuid, moveApplicationByUuidRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MoveDatabaseByUuid200Response',) as MoveDatabaseByUuid200Response;
    
    }
    return null;
  }

  /// Restart
  ///
  /// Restart database.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  Future<Response> restartDatabaseByUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/restart'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Restart
  ///
  /// Restart database.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  Future<RestartDatabaseByUuid200Response?> restartDatabaseByUuid(String uuid,) async {
    final response = await restartDatabaseByUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RestartDatabaseByUuid200Response',) as RestartDatabaseByUuid200Response;
    
    }
    return null;
  }

  /// Run database storage backup
  ///
  /// Queue an immediate volume backup for a database storage that has a schedule. Needs a token with the write and deploy permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] storageUuid (required):
  Future<Response> runDatabaseStorageBackupWithHttpInfo(String uuid, String storageUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/storages/{storage_uuid}/backups/run'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{storage_uuid}', storageUuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Run database storage backup
  ///
  /// Queue an immediate volume backup for a database storage that has a schedule. Needs a token with the write and deploy permissions.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] storageUuid (required):
  Future<void> runDatabaseStorageBackup(String uuid, String storageUuid,) async {
    final response = await runDatabaseStorageBackupWithHttpInfo(uuid, storageUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Set database storage backup schedule
  ///
  /// Create or replace the backup schedule for a database persistent volume or directory storage. A schedule with stop_during_backup needs a token with the deploy permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [String] storageUuid (required):
  ///   UUID of the persistent volume or directory storage.
  ///
  /// * [VolumeBackupScheduleRequest] volumeBackupScheduleRequest (required):
  Future<Response> setDatabaseStorageBackupScheduleWithHttpInfo(String uuid, String storageUuid, VolumeBackupScheduleRequest volumeBackupScheduleRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/storages/{storage_uuid}/backups'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{storage_uuid}', storageUuid);

    // ignore: prefer_final_locals
    Object? postBody = volumeBackupScheduleRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Set database storage backup schedule
  ///
  /// Create or replace the backup schedule for a database persistent volume or directory storage. A schedule with stop_during_backup needs a token with the deploy permission.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [String] storageUuid (required):
  ///   UUID of the persistent volume or directory storage.
  ///
  /// * [VolumeBackupScheduleRequest] volumeBackupScheduleRequest (required):
  Future<VolumeBackupScheduleResponse?> setDatabaseStorageBackupSchedule(String uuid, String storageUuid, VolumeBackupScheduleRequest volumeBackupScheduleRequest,) async {
    final response = await setDatabaseStorageBackupScheduleWithHttpInfo(uuid, storageUuid, volumeBackupScheduleRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VolumeBackupScheduleResponse',) as VolumeBackupScheduleResponse;
    
    }
    return null;
  }

  /// Start
  ///
  /// Start database.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  Future<Response> startDatabaseByUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/start'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Start
  ///
  /// Start database.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  Future<StartDatabaseByUuid200Response?> startDatabaseByUuid(String uuid,) async {
    final response = await startDatabaseByUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StartDatabaseByUuid200Response',) as StartDatabaseByUuid200Response;
    
    }
    return null;
  }

  /// Stop
  ///
  /// Stop database.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [bool] dockerCleanup:
  ///   Run docker cleanup when the server disk usage is at or above its cleanup threshold. Skipped when a cleanup ran on the server in the last hour.
  Future<Response> stopDatabaseByUuidWithHttpInfo(String uuid, { bool? dockerCleanup, }) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/stop'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dockerCleanup != null) {
      queryParams.addAll(_queryParams('', 'docker_cleanup', dockerCleanup));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Stop
  ///
  /// Stop database.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [bool] dockerCleanup:
  ///   Run docker cleanup when the server disk usage is at or above its cleanup threshold. Skipped when a cleanup ran on the server in the last hour.
  Future<StopDatabaseByUuid200Response?> stopDatabaseByUuid(String uuid, { bool? dockerCleanup, }) async {
    final response = await stopDatabaseByUuidWithHttpInfo(uuid,  dockerCleanup: dockerCleanup, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StopDatabaseByUuid200Response',) as StopDatabaseByUuid200Response;
    
    }
    return null;
  }

  /// Update
  ///
  /// Update a specific backup configuration for a given database, identified by its UUID and the backup ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [String] scheduledBackupUuid (required):
  ///   UUID of the backup configuration.
  ///
  /// * [UpdateDatabaseBackupRequest] updateDatabaseBackupRequest (required):
  ///   Database backup configuration data
  Future<Response> updateDatabaseBackupWithHttpInfo(String uuid, String scheduledBackupUuid, UpdateDatabaseBackupRequest updateDatabaseBackupRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/backups/{scheduled_backup_uuid}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{scheduled_backup_uuid}', scheduledBackupUuid);

    // ignore: prefer_final_locals
    Object? postBody = updateDatabaseBackupRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update
  ///
  /// Update a specific backup configuration for a given database, identified by its UUID and the backup ID
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [String] scheduledBackupUuid (required):
  ///   UUID of the backup configuration.
  ///
  /// * [UpdateDatabaseBackupRequest] updateDatabaseBackupRequest (required):
  ///   Database backup configuration data
  Future<void> updateDatabaseBackup(String uuid, String scheduledBackupUuid, UpdateDatabaseBackupRequest updateDatabaseBackupRequest,) async {
    final response = await updateDatabaseBackupWithHttpInfo(uuid, scheduledBackupUuid, updateDatabaseBackupRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update
  ///
  /// Update database by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [UpdateDatabaseByUuidRequest] updateDatabaseByUuidRequest (required):
  ///   Database data
  Future<Response> updateDatabaseByUuidWithHttpInfo(String uuid, UpdateDatabaseByUuidRequest updateDatabaseByUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = updateDatabaseByUuidRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update
  ///
  /// Update database by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [UpdateDatabaseByUuidRequest] updateDatabaseByUuidRequest (required):
  ///   Database data
  Future<void> updateDatabaseByUuid(String uuid, UpdateDatabaseByUuidRequest updateDatabaseByUuidRequest,) async {
    final response = await updateDatabaseByUuidWithHttpInfo(uuid, updateDatabaseByUuidRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update Env
  ///
  /// Update env by database UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [UpdateEnvByDatabaseUuidRequest] updateEnvByDatabaseUuidRequest (required):
  ///   Env updated.
  Future<Response> updateEnvByDatabaseUuidWithHttpInfo(String uuid, UpdateEnvByDatabaseUuidRequest updateEnvByDatabaseUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/envs'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = updateEnvByDatabaseUuidRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update Env
  ///
  /// Update env by database UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [UpdateEnvByDatabaseUuidRequest] updateEnvByDatabaseUuidRequest (required):
  ///   Env updated.
  Future<EnvironmentVariable?> updateEnvByDatabaseUuid(String uuid, UpdateEnvByDatabaseUuidRequest updateEnvByDatabaseUuidRequest,) async {
    final response = await updateEnvByDatabaseUuidWithHttpInfo(uuid, updateEnvByDatabaseUuidRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EnvironmentVariable',) as EnvironmentVariable;
    
    }
    return null;
  }

  /// Update Envs (Bulk)
  ///
  /// Update multiple envs by database UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [UpdateEnvsByDatabaseUuidRequest] updateEnvsByDatabaseUuidRequest (required):
  ///   Bulk envs updated.
  Future<Response> updateEnvsByDatabaseUuidWithHttpInfo(String uuid, UpdateEnvsByDatabaseUuidRequest updateEnvsByDatabaseUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/envs/bulk'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = updateEnvsByDatabaseUuidRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update Envs (Bulk)
  ///
  /// Update multiple envs by database UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [UpdateEnvsByDatabaseUuidRequest] updateEnvsByDatabaseUuidRequest (required):
  ///   Bulk envs updated.
  Future<List<EnvironmentVariable>?> updateEnvsByDatabaseUuid(String uuid, UpdateEnvsByDatabaseUuidRequest updateEnvsByDatabaseUuidRequest,) async {
    final response = await updateEnvsByDatabaseUuidWithHttpInfo(uuid, updateEnvsByDatabaseUuidRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EnvironmentVariable>') as List)
        .cast<EnvironmentVariable>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Storage
  ///
  /// Update a persistent storage or file storage by database UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [UpdateStorageByApplicationUuidRequest] updateStorageByApplicationUuidRequest (required):
  ///   Storage updated. For read-only storages (from docker-compose or services), only is_preview_suffix_enabled can be updated.
  Future<Response> updateStorageByDatabaseUuidWithHttpInfo(String uuid, UpdateStorageByApplicationUuidRequest updateStorageByApplicationUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/storages'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = updateStorageByApplicationUuidRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update Storage
  ///
  /// Update a persistent storage or file storage by database UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  ///
  /// * [UpdateStorageByApplicationUuidRequest] updateStorageByApplicationUuidRequest (required):
  ///   Storage updated. For read-only storages (from docker-compose or services), only is_preview_suffix_enabled can be updated.
  Future<Map<String, Object>?> updateStorageByDatabaseUuid(String uuid, UpdateStorageByApplicationUuidRequest updateStorageByApplicationUuidRequest,) async {
    final response = await updateStorageByDatabaseUuidWithHttpInfo(uuid, updateStorageByApplicationUuidRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Upload database import
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  Future<Response> uploadDatabaseImportWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/databases/{uuid}/imports/uploads'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Upload database import
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the database.
  Future<void> uploadDatabaseImport(String uuid,) async {
    final response = await uploadDatabaseImportWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
