//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ServicesApi {
  ServicesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Clone
  ///
  /// Clone a service to a destination owned by the authenticated team.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [CloneDatabaseByUuidRequest] cloneDatabaseByUuidRequest (required):
  Future<Response> cloneServiceByUuidWithHttpInfo(String uuid, CloneDatabaseByUuidRequest cloneDatabaseByUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/clone'
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
  /// Clone a service to a destination owned by the authenticated team.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [CloneDatabaseByUuidRequest] cloneDatabaseByUuidRequest (required):
  Future<void> cloneServiceByUuid(String uuid, CloneDatabaseByUuidRequest cloneDatabaseByUuidRequest,) async {
    final response = await cloneServiceByUuidWithHttpInfo(uuid, cloneDatabaseByUuidRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create Env
  ///
  /// Create env by service UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [CreateEnvByApplicationUuidRequest] createEnvByApplicationUuidRequest (required):
  ///   Env created.
  Future<Response> createEnvByServiceUuidWithHttpInfo(String uuid, CreateEnvByApplicationUuidRequest createEnvByApplicationUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/envs'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = createEnvByApplicationUuidRequest;

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
  /// Create env by service UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [CreateEnvByApplicationUuidRequest] createEnvByApplicationUuidRequest (required):
  ///   Env created.
  Future<CreateEnvByApplicationUuid201Response?> createEnvByServiceUuid(String uuid, CreateEnvByApplicationUuidRequest createEnvByApplicationUuidRequest,) async {
    final response = await createEnvByServiceUuidWithHttpInfo(uuid, createEnvByApplicationUuidRequest,);
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

  /// Create service
  ///
  /// Create a one-click / custom service
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateServiceRequest] createServiceRequest (required):
  Future<Response> createServiceWithHttpInfo(CreateServiceRequest createServiceRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/services';

    // ignore: prefer_final_locals
    Object? postBody = createServiceRequest;

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

  /// Create service
  ///
  /// Create a one-click / custom service
  ///
  /// Parameters:
  ///
  /// * [CreateServiceRequest] createServiceRequest (required):
  Future<CreateService201Response?> createService(CreateServiceRequest createServiceRequest,) async {
    final response = await createServiceWithHttpInfo(createServiceRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateService201Response',) as CreateService201Response;
    
    }
    return null;
  }

  /// Create Storage
  ///
  /// Create a persistent storage or file storage for a service sub-resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [CreateStorageByServiceUuidRequest] createStorageByServiceUuidRequest (required):
  Future<Response> createStorageByServiceUuidWithHttpInfo(String uuid, CreateStorageByServiceUuidRequest createStorageByServiceUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/storages'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = createStorageByServiceUuidRequest;

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
  /// Create a persistent storage or file storage for a service sub-resource.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [CreateStorageByServiceUuidRequest] createStorageByServiceUuidRequest (required):
  Future<Map<String, Object>?> createStorageByServiceUuid(String uuid, CreateStorageByServiceUuidRequest createStorageByServiceUuidRequest,) async {
    final response = await createStorageByServiceUuidWithHttpInfo(uuid, createStorageByServiceUuidRequest,);
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
  /// Add tag(s) to a service by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [CreateTagByApplicationUuidRequest] createTagByApplicationUuidRequest (required):
  Future<Response> createTagByServiceUuidWithHttpInfo(String uuid, CreateTagByApplicationUuidRequest createTagByApplicationUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/tags'
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
  /// Add tag(s) to a service by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [CreateTagByApplicationUuidRequest] createTagByApplicationUuidRequest (required):
  Future<List<Tag>?> createTagByServiceUuid(String uuid, CreateTagByApplicationUuidRequest createTagByApplicationUuidRequest,) async {
    final response = await createTagByServiceUuidWithHttpInfo(uuid, createTagByApplicationUuidRequest,);
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

  /// Delete Env
  ///
  /// Delete env by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [String] envUuid (required):
  ///   UUID of the environment variable.
  Future<Response> deleteEnvByServiceUuidWithHttpInfo(String uuid, String envUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/envs/{env_uuid}'
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
  ///   UUID of the service.
  ///
  /// * [String] envUuid (required):
  ///   UUID of the environment variable.
  Future<DeleteEnvByApplicationUuid200Response?> deleteEnvByServiceUuid(String uuid, String envUuid,) async {
    final response = await deleteEnvByServiceUuidWithHttpInfo(uuid, envUuid,);
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

  /// Delete
  ///
  /// Delete service by UUID. Needs a token with the write and deploy permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Service UUID
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
  ///
  /// * [bool] deleteFromCoolifyOnly:
  ///   Remove only Coolify metadata without deleting Docker resources.
  Future<Response> deleteServiceByUuidWithHttpInfo(String uuid, { bool? deleteConfigurations, bool? deleteVolumes, bool? dockerCleanup, bool? deleteConnectedNetworks, bool? deleteFromCoolifyOnly, }) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}'
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
    if (deleteFromCoolifyOnly != null) {
      queryParams.addAll(_queryParams('', 'delete_from_coolify_only', deleteFromCoolifyOnly));
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
  /// Delete service by UUID. Needs a token with the write and deploy permissions.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Service UUID
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
  ///
  /// * [bool] deleteFromCoolifyOnly:
  ///   Remove only Coolify metadata without deleting Docker resources.
  Future<DeleteServiceByUuid200Response?> deleteServiceByUuid(String uuid, { bool? deleteConfigurations, bool? deleteVolumes, bool? dockerCleanup, bool? deleteConnectedNetworks, bool? deleteFromCoolifyOnly, }) async {
    final response = await deleteServiceByUuidWithHttpInfo(uuid,  deleteConfigurations: deleteConfigurations, deleteVolumes: deleteVolumes, dockerCleanup: dockerCleanup, deleteConnectedNetworks: deleteConnectedNetworks, deleteFromCoolifyOnly: deleteFromCoolifyOnly, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteServiceByUuid200Response',) as DeleteServiceByUuid200Response;
    
    }
    return null;
  }

  /// Delete service storage backup schedule
  ///
  /// Delete the backup schedule and its local and S3 archives for a service storage.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] storageUuid (required):
  Future<Response> deleteServiceStorageBackupScheduleWithHttpInfo(String uuid, String storageUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/storages/{storage_uuid}/backups'
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

  /// Delete service storage backup schedule
  ///
  /// Delete the backup schedule and its local and S3 archives for a service storage.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] storageUuid (required):
  Future<void> deleteServiceStorageBackupSchedule(String uuid, String storageUuid,) async {
    final response = await deleteServiceStorageBackupScheduleWithHttpInfo(uuid, storageUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete Storage
  ///
  /// Delete a persistent storage or file storage by service UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [String] storageUuid (required):
  ///   UUID of the storage.
  Future<Response> deleteStorageByServiceUuidWithHttpInfo(String uuid, String storageUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/storages/{storage_uuid}'
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
  /// Delete a persistent storage or file storage by service UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [String] storageUuid (required):
  ///   UUID of the storage.
  Future<DeletePreviewDeploymentByPullRequestId200Response?> deleteStorageByServiceUuid(String uuid, String storageUuid,) async {
    final response = await deleteStorageByServiceUuidWithHttpInfo(uuid, storageUuid,);
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
  /// Remove a tag from a service by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [String] tagUuid (required):
  ///   UUID of the tag.
  Future<Response> deleteTagByServiceUuidWithHttpInfo(String uuid, String tagUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/tags/{tag_uuid}'
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
  /// Remove a tag from a service by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [String] tagUuid (required):
  ///   UUID of the tag.
  Future<void> deleteTagByServiceUuid(String uuid, String tagUuid,) async {
    final response = await deleteTagByServiceUuidWithHttpInfo(uuid, tagUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get
  ///
  /// Get service by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Service UUID
  Future<Response> getServiceByUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}'
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
  /// Get service by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Service UUID
  Future<Service?> getServiceByUuid(String uuid,) async {
    final response = await getServiceByUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Service',) as Service;
    
    }
    return null;
  }

  /// Get service logs.
  ///
  /// Get logs for a specific service sub-resource by service UUID. The `sub_service_name` query parameter must match the `name` field of one of the service applications or databases returned by `GET /services/{uuid}`. Requires the `read:sensitive` or `root` token ability.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [String] subServiceName (required):
  ///   Sub-service name from `GET /services/{uuid}` under `applications[].name` or `databases[].name`. Do not use `human_name` or the Docker container name with the service UUID suffix.
  ///
  /// * [String] lines:
  ///   Number of lines to show from the end of the logs. Use `all` to return all logs. `-1` remains available as a compatibility alias.
  ///
  /// * [bool] showTimestamps:
  ///   Show timestamps in the logs.
  Future<Response> getServiceLogsByUuidWithHttpInfo(String uuid, String subServiceName, { String? lines, bool? showTimestamps, }) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/logs'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'sub_service_name', subServiceName));
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

  /// Get service logs.
  ///
  /// Get logs for a specific service sub-resource by service UUID. The `sub_service_name` query parameter must match the `name` field of one of the service applications or databases returned by `GET /services/{uuid}`. Requires the `read:sensitive` or `root` token ability.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [String] subServiceName (required):
  ///   Sub-service name from `GET /services/{uuid}` under `applications[].name` or `databases[].name`. Do not use `human_name` or the Docker container name with the service UUID suffix.
  ///
  /// * [String] lines:
  ///   Number of lines to show from the end of the logs. Use `all` to return all logs. `-1` remains available as a compatibility alias.
  ///
  /// * [bool] showTimestamps:
  ///   Show timestamps in the logs.
  Future<GetApplicationLogsByUuid200Response?> getServiceLogsByUuid(String uuid, String subServiceName, { String? lines, bool? showTimestamps, }) async {
    final response = await getServiceLogsByUuidWithHttpInfo(uuid, subServiceName,  lines: lines, showTimestamps: showTimestamps, );
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

  /// List Envs
  ///
  /// List all envs by service UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  Future<Response> listEnvsByServiceUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/envs'
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
  /// List all envs by service UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  Future<List<EnvironmentVariable>?> listEnvsByServiceUuid(String uuid,) async {
    final response = await listEnvsByServiceUuidWithHttpInfo(uuid,);
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

  /// List
  ///
  /// List all services.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listServicesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/services';

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
  /// List all services.
  Future<List<Service>?> listServices() async {
    final response = await listServicesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Service>') as List)
        .cast<Service>()
        .toList(growable: false);

    }
    return null;
  }

  /// List Storages
  ///
  /// List all persistent storages and file storages by service UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  Future<Response> listStoragesByServiceUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/storages'
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
  /// List all persistent storages and file storages by service UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  Future<ListStoragesByApplicationUuid200Response?> listStoragesByServiceUuid(String uuid,) async {
    final response = await listStoragesByServiceUuidWithHttpInfo(uuid,);
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
  /// List tags for a service by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  Future<Response> listTagsByServiceUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/tags'
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
  /// List tags for a service by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  Future<List<Tag>?> listTagsByServiceUuid(String uuid,) async {
    final response = await listTagsByServiceUuidWithHttpInfo(uuid,);
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
  /// Migrate a service to another destination/server owned by the authenticated team. Stops the service, optionally transfers persistent volume data when both servers are managed by Coolify, and updates database records. Redeploy after migration completes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [MigrateApplicationByUuidRequest] migrateApplicationByUuidRequest (required):
  Future<Response> migrateServiceByUuidWithHttpInfo(String uuid, MigrateApplicationByUuidRequest migrateApplicationByUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/migrate'
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
  /// Migrate a service to another destination/server owned by the authenticated team. Stops the service, optionally transfers persistent volume data when both servers are managed by Coolify, and updates database records. Redeploy after migration completes.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [MigrateApplicationByUuidRequest] migrateApplicationByUuidRequest (required):
  Future<void> migrateServiceByUuid(String uuid, MigrateApplicationByUuidRequest migrateApplicationByUuidRequest,) async {
    final response = await migrateServiceByUuidWithHttpInfo(uuid, migrateApplicationByUuidRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Move
  ///
  /// Move service to another project/environment. This is a purely organizational change — running containers are not affected. Note: after moving, the service will pick up shared environment variables from the new environment on the next deployment.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [MoveApplicationByUuidRequest] moveApplicationByUuidRequest (required):
  ///   Target environment to move the service to.
  Future<Response> moveServiceByUuidWithHttpInfo(String uuid, MoveApplicationByUuidRequest moveApplicationByUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/move'
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
  /// Move service to another project/environment. This is a purely organizational change — running containers are not affected. Note: after moving, the service will pick up shared environment variables from the new environment on the next deployment.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [MoveApplicationByUuidRequest] moveApplicationByUuidRequest (required):
  ///   Target environment to move the service to.
  Future<MoveServiceByUuid200Response?> moveServiceByUuid(String uuid, MoveApplicationByUuidRequest moveApplicationByUuidRequest,) async {
    final response = await moveServiceByUuidWithHttpInfo(uuid, moveApplicationByUuidRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MoveServiceByUuid200Response',) as MoveServiceByUuid200Response;
    
    }
    return null;
  }

  /// Restart
  ///
  /// Restart service.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [bool] latest:
  ///   Pull latest images.
  Future<Response> restartServiceByUuidWithHttpInfo(String uuid, { bool? latest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/restart'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Restart
  ///
  /// Restart service.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [bool] latest:
  ///   Pull latest images.
  Future<RestartServiceByUuid200Response?> restartServiceByUuid(String uuid, { bool? latest, }) async {
    final response = await restartServiceByUuidWithHttpInfo(uuid,  latest: latest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RestartServiceByUuid200Response',) as RestartServiceByUuid200Response;
    
    }
    return null;
  }

  /// Run service storage backup
  ///
  /// Queue an immediate volume backup for a service storage that has a schedule. Needs a token with the write and deploy permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] storageUuid (required):
  Future<Response> runServiceStorageBackupWithHttpInfo(String uuid, String storageUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/storages/{storage_uuid}/backups/run'
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

  /// Run service storage backup
  ///
  /// Queue an immediate volume backup for a service storage that has a schedule. Needs a token with the write and deploy permissions.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] storageUuid (required):
  Future<void> runServiceStorageBackup(String uuid, String storageUuid,) async {
    final response = await runServiceStorageBackupWithHttpInfo(uuid, storageUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Set service storage backup schedule
  ///
  /// Create or replace the backup schedule for a service persistent volume or directory storage. A schedule with stop_during_backup needs a token with the deploy permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [String] storageUuid (required):
  ///   UUID of the persistent volume or directory storage.
  ///
  /// * [VolumeBackupScheduleRequest] volumeBackupScheduleRequest (required):
  Future<Response> setServiceStorageBackupScheduleWithHttpInfo(String uuid, String storageUuid, VolumeBackupScheduleRequest volumeBackupScheduleRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/storages/{storage_uuid}/backups'
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

  /// Set service storage backup schedule
  ///
  /// Create or replace the backup schedule for a service persistent volume or directory storage. A schedule with stop_during_backup needs a token with the deploy permission.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [String] storageUuid (required):
  ///   UUID of the persistent volume or directory storage.
  ///
  /// * [VolumeBackupScheduleRequest] volumeBackupScheduleRequest (required):
  Future<VolumeBackupScheduleResponse?> setServiceStorageBackupSchedule(String uuid, String storageUuid, VolumeBackupScheduleRequest volumeBackupScheduleRequest,) async {
    final response = await setServiceStorageBackupScheduleWithHttpInfo(uuid, storageUuid, volumeBackupScheduleRequest,);
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
  /// Start service.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  Future<Response> startServiceByUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/start'
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
  /// Start service.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  Future<StartServiceByUuid200Response?> startServiceByUuid(String uuid,) async {
    final response = await startServiceByUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StartServiceByUuid200Response',) as StartServiceByUuid200Response;
    
    }
    return null;
  }

  /// Stop
  ///
  /// Stop service.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [bool] dockerCleanup:
  ///   Run docker cleanup when the server disk usage is at or above its cleanup threshold. Skipped when a cleanup ran on the server in the last hour.
  Future<Response> stopServiceByUuidWithHttpInfo(String uuid, { bool? dockerCleanup, }) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/stop'
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
  /// Stop service.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [bool] dockerCleanup:
  ///   Run docker cleanup when the server disk usage is at or above its cleanup threshold. Skipped when a cleanup ran on the server in the last hour.
  Future<StopServiceByUuid200Response?> stopServiceByUuid(String uuid, { bool? dockerCleanup, }) async {
    final response = await stopServiceByUuidWithHttpInfo(uuid,  dockerCleanup: dockerCleanup, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StopServiceByUuid200Response',) as StopServiceByUuid200Response;
    
    }
    return null;
  }

  /// Update Env
  ///
  /// Update env by service UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [UpdateEnvByApplicationUuidRequest] updateEnvByApplicationUuidRequest (required):
  ///   Env updated.
  Future<Response> updateEnvByServiceUuidWithHttpInfo(String uuid, UpdateEnvByApplicationUuidRequest updateEnvByApplicationUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/envs'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = updateEnvByApplicationUuidRequest;

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
  /// Update env by service UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [UpdateEnvByApplicationUuidRequest] updateEnvByApplicationUuidRequest (required):
  ///   Env updated.
  Future<EnvironmentVariable?> updateEnvByServiceUuid(String uuid, UpdateEnvByApplicationUuidRequest updateEnvByApplicationUuidRequest,) async {
    final response = await updateEnvByServiceUuidWithHttpInfo(uuid, updateEnvByApplicationUuidRequest,);
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
  /// Update multiple envs by service UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [UpdateEnvsByApplicationUuidRequest] updateEnvsByApplicationUuidRequest (required):
  ///   Bulk envs updated.
  Future<Response> updateEnvsByServiceUuidWithHttpInfo(String uuid, UpdateEnvsByApplicationUuidRequest updateEnvsByApplicationUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/envs/bulk'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = updateEnvsByApplicationUuidRequest;

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
  /// Update multiple envs by service UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [UpdateEnvsByApplicationUuidRequest] updateEnvsByApplicationUuidRequest (required):
  ///   Bulk envs updated.
  Future<List<EnvironmentVariable>?> updateEnvsByServiceUuid(String uuid, UpdateEnvsByApplicationUuidRequest updateEnvsByApplicationUuidRequest,) async {
    final response = await updateEnvsByServiceUuidWithHttpInfo(uuid, updateEnvsByApplicationUuidRequest,);
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

  /// Update
  ///
  /// Update service by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [UpdateServiceByUuidRequest] updateServiceByUuidRequest (required):
  ///   Service updated.
  Future<Response> updateServiceByUuidWithHttpInfo(String uuid, UpdateServiceByUuidRequest updateServiceByUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = updateServiceByUuidRequest;

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
  /// Update service by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [UpdateServiceByUuidRequest] updateServiceByUuidRequest (required):
  ///   Service updated.
  Future<CreateService201Response?> updateServiceByUuid(String uuid, UpdateServiceByUuidRequest updateServiceByUuidRequest,) async {
    final response = await updateServiceByUuidWithHttpInfo(uuid, updateServiceByUuidRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateService201Response',) as CreateService201Response;
    
    }
    return null;
  }

  /// Update Storage
  ///
  /// Update a persistent storage or file storage by service UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [UpdateStorageByApplicationUuidRequest] updateStorageByApplicationUuidRequest (required):
  ///   Storage updated. For read-only storages (from docker-compose or services), only is_preview_suffix_enabled can be updated.
  Future<Response> updateStorageByServiceUuidWithHttpInfo(String uuid, UpdateStorageByApplicationUuidRequest updateStorageByApplicationUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/storages'
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
  /// Update a persistent storage or file storage by service UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [UpdateStorageByApplicationUuidRequest] updateStorageByApplicationUuidRequest (required):
  ///   Storage updated. For read-only storages (from docker-compose or services), only is_preview_suffix_enabled can be updated.
  Future<Map<String, Object>?> updateStorageByServiceUuid(String uuid, UpdateStorageByApplicationUuidRequest updateStorageByApplicationUuidRequest,) async {
    final response = await updateStorageByServiceUuidWithHttpInfo(uuid, updateStorageByApplicationUuidRequest,);
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
}
