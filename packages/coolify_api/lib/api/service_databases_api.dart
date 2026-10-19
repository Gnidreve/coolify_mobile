//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ServiceDatabasesApi {
  ServiceDatabasesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Import service database backup
  ///
  /// Restore a backup into the service database. Every import source requires the deploy ability.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Service UUID.
  ///
  /// * [String] databaseUuid (required):
  ///   Service database UUID.
  ///
  /// * [DatabaseImportRequest] databaseImportRequest (required):
  Future<Response> createServiceDatabaseImportWithHttpInfo(String uuid, String databaseUuid, DatabaseImportRequest databaseImportRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/databases/{database_uuid}/imports'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{database_uuid}', databaseUuid);

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

  /// Import service database backup
  ///
  /// Restore a backup into the service database. Every import source requires the deploy ability.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Service UUID.
  ///
  /// * [String] databaseUuid (required):
  ///   Service database UUID.
  ///
  /// * [DatabaseImportRequest] databaseImportRequest (required):
  Future<void> createServiceDatabaseImport(String uuid, String databaseUuid, DatabaseImportRequest databaseImportRequest,) async {
    final response = await createServiceDatabaseImportWithHttpInfo(uuid, databaseUuid, databaseImportRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get service database
  ///
  /// Get a compose database by service UUID and database UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Service UUID.
  ///
  /// * [String] databaseUuid (required):
  ///   Service database UUID.
  Future<Response> getServiceDatabaseByServiceAndDatabaseUuidWithHttpInfo(String uuid, String databaseUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/databases/{database_uuid}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{database_uuid}', databaseUuid);

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

  /// Get service database
  ///
  /// Get a compose database by service UUID and database UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Service UUID.
  ///
  /// * [String] databaseUuid (required):
  ///   Service database UUID.
  Future<Map<String, Object>?> getServiceDatabaseByServiceAndDatabaseUuid(String uuid, String databaseUuid,) async {
    final response = await getServiceDatabaseByServiceAndDatabaseUuidWithHttpInfo(uuid, databaseUuid,);
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

  /// Get service database import status
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Service UUID.
  ///
  /// * [String] databaseUuid (required):
  ///   Service database UUID.
  ///
  /// * [int] activityId (required):
  ///   Import activity ID.
  Future<Response> getServiceDatabaseImportWithHttpInfo(String uuid, String databaseUuid, int activityId,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/databases/{database_uuid}/imports/{activity_id}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{database_uuid}', databaseUuid)
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

  /// Get service database import status
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Service UUID.
  ///
  /// * [String] databaseUuid (required):
  ///   Service database UUID.
  ///
  /// * [int] activityId (required):
  ///   Import activity ID.
  Future<DatabaseImportStatus?> getServiceDatabaseImport(String uuid, String databaseUuid, int activityId,) async {
    final response = await getServiceDatabaseImportWithHttpInfo(uuid, databaseUuid, activityId,);
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

  /// Get service database logs
  ///
  /// Get Docker logs for a compose database container. Requires the `read:sensitive` or `root` token ability.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] databaseUuid (required):
  ///
  /// * [String] lines:
  ///   Number of lines to show from the end of the logs. Use `all` to return all logs. `-1` remains available as a compatibility alias.
  Future<Response> getServiceDatabaseLogsByServiceAndDatabaseUuidWithHttpInfo(String uuid, String databaseUuid, { String? lines, }) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/databases/{database_uuid}/logs'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{database_uuid}', databaseUuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (lines != null) {
      queryParams.addAll(_queryParams('', 'lines', lines));
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

  /// Get service database logs
  ///
  /// Get Docker logs for a compose database container. Requires the `read:sensitive` or `root` token ability.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] databaseUuid (required):
  ///
  /// * [String] lines:
  ///   Number of lines to show from the end of the logs. Use `all` to return all logs. `-1` remains available as a compatibility alias.
  Future<GetApplicationLogsByUuid200Response?> getServiceDatabaseLogsByServiceAndDatabaseUuid(String uuid, String databaseUuid, { String? lines, }) async {
    final response = await getServiceDatabaseLogsByServiceAndDatabaseUuidWithHttpInfo(uuid, databaseUuid,  lines: lines, );
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

  /// List service databases
  ///
  /// List compose databases for a single service.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Service UUID.
  Future<Response> listServiceDatabasesByServiceUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/databases'
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

  /// List service databases
  ///
  /// List compose databases for a single service.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Service UUID.
  Future<Object?> listServiceDatabasesByServiceUuid(String uuid,) async {
    final response = await listServiceDatabasesByServiceUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Update service database
  ///
  /// Update mutable fields for a compose service database.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Service UUID.
  ///
  /// * [String] databaseUuid (required):
  ///   Service database UUID.
  ///
  /// * [PatchServiceDatabaseByServiceAndDatabaseUuidRequest] patchServiceDatabaseByServiceAndDatabaseUuidRequest:
  Future<Response> patchServiceDatabaseByServiceAndDatabaseUuidWithHttpInfo(String uuid, String databaseUuid, { PatchServiceDatabaseByServiceAndDatabaseUuidRequest? patchServiceDatabaseByServiceAndDatabaseUuidRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/databases/{database_uuid}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{database_uuid}', databaseUuid);

    // ignore: prefer_final_locals
    Object? postBody = patchServiceDatabaseByServiceAndDatabaseUuidRequest;

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

  /// Update service database
  ///
  /// Update mutable fields for a compose service database.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Service UUID.
  ///
  /// * [String] databaseUuid (required):
  ///   Service database UUID.
  ///
  /// * [PatchServiceDatabaseByServiceAndDatabaseUuidRequest] patchServiceDatabaseByServiceAndDatabaseUuidRequest:
  Future<Map<String, Object>?> patchServiceDatabaseByServiceAndDatabaseUuid(String uuid, String databaseUuid, { PatchServiceDatabaseByServiceAndDatabaseUuidRequest? patchServiceDatabaseByServiceAndDatabaseUuidRequest, }) async {
    final response = await patchServiceDatabaseByServiceAndDatabaseUuidWithHttpInfo(uuid, databaseUuid,  patchServiceDatabaseByServiceAndDatabaseUuidRequest: patchServiceDatabaseByServiceAndDatabaseUuidRequest, );
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

  /// Restart service database container
  ///
  /// Restart a compose database container.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] databaseUuid (required):
  Future<Response> restartServiceDatabaseByServiceAndDatabaseUuidWithHttpInfo(String uuid, String databaseUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/databases/{database_uuid}/restart'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{database_uuid}', databaseUuid);

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

  /// Restart service database container
  ///
  /// Restart a compose database container.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] databaseUuid (required):
  Future<DeletePreviewDeploymentByPullRequestId200Response?> restartServiceDatabaseByServiceAndDatabaseUuid(String uuid, String databaseUuid,) async {
    final response = await restartServiceDatabaseByServiceAndDatabaseUuidWithHttpInfo(uuid, databaseUuid,);
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

  /// Start or redeploy service database container
  ///
  /// Run docker compose up for a single compose database.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] databaseUuid (required):
  ///
  /// * [bool] force:
  ///
  /// * [bool] latest:
  Future<Response> startServiceDatabaseByServiceAndDatabaseUuidWithHttpInfo(String uuid, String databaseUuid, { bool? force, bool? latest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/databases/{database_uuid}/start'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{database_uuid}', databaseUuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (force != null) {
      queryParams.addAll(_queryParams('', 'force', force));
    }
    if (latest != null) {
      queryParams.addAll(_queryParams('', 'latest', latest));
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

  /// Start or redeploy service database container
  ///
  /// Run docker compose up for a single compose database.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] databaseUuid (required):
  ///
  /// * [bool] force:
  ///
  /// * [bool] latest:
  Future<DeletePreviewDeploymentByPullRequestId200Response?> startServiceDatabaseByServiceAndDatabaseUuid(String uuid, String databaseUuid, { bool? force, bool? latest, }) async {
    final response = await startServiceDatabaseByServiceAndDatabaseUuidWithHttpInfo(uuid, databaseUuid,  force: force, latest: latest, );
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

  /// Stop service database container
  ///
  /// Stop a compose database container.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] databaseUuid (required):
  Future<Response> stopServiceDatabaseByServiceAndDatabaseUuidWithHttpInfo(String uuid, String databaseUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/databases/{database_uuid}/stop'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{database_uuid}', databaseUuid);

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

  /// Stop service database container
  ///
  /// Stop a compose database container.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] databaseUuid (required):
  Future<DeletePreviewDeploymentByPullRequestId200Response?> stopServiceDatabaseByServiceAndDatabaseUuid(String uuid, String databaseUuid,) async {
    final response = await stopServiceDatabaseByServiceAndDatabaseUuidWithHttpInfo(uuid, databaseUuid,);
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

  /// Upload service database import
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Service UUID.
  ///
  /// * [String] databaseUuid (required):
  ///   Service database UUID.
  Future<Response> uploadServiceDatabaseImportWithHttpInfo(String uuid, String databaseUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/databases/{database_uuid}/imports/uploads'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{database_uuid}', databaseUuid);

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

  /// Upload service database import
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Service UUID.
  ///
  /// * [String] databaseUuid (required):
  ///   Service database UUID.
  Future<void> uploadServiceDatabaseImport(String uuid, String databaseUuid,) async {
    final response = await uploadServiceDatabaseImportWithHttpInfo(uuid, databaseUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
