//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ServiceApplicationsApi {
  ServiceApplicationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get service application
  ///
  /// Get a single compose service application by service UUID and application UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Service UUID.
  ///
  /// * [String] appUuid (required):
  ///   Service application UUID.
  Future<Response> getServiceApplicationByServiceAndAppUuidWithHttpInfo(String uuid, String appUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/applications/{app_uuid}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{app_uuid}', appUuid);

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

  /// Get service application
  ///
  /// Get a single compose service application by service UUID and application UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Service UUID.
  ///
  /// * [String] appUuid (required):
  ///   Service application UUID.
  Future<Map<String, Object>?> getServiceApplicationByServiceAndAppUuid(String uuid, String appUuid,) async {
    final response = await getServiceApplicationByServiceAndAppUuidWithHttpInfo(uuid, appUuid,);
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

  /// Get service application logs
  ///
  /// Get Docker logs for a single compose service container. Requires the `read:sensitive` or `root` token ability.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Service UUID.
  ///
  /// * [String] appUuid (required):
  ///   Service application UUID.
  ///
  /// * [String] lines:
  ///   Number of lines to show from the end of the logs. Use `all` to return all logs. `-1` remains available as a compatibility alias.
  Future<Response> getServiceApplicationLogsByServiceAndAppUuidWithHttpInfo(String uuid, String appUuid, { String? lines, }) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/applications/{app_uuid}/logs'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{app_uuid}', appUuid);

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

  /// Get service application logs
  ///
  /// Get Docker logs for a single compose service container. Requires the `read:sensitive` or `root` token ability.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Service UUID.
  ///
  /// * [String] appUuid (required):
  ///   Service application UUID.
  ///
  /// * [String] lines:
  ///   Number of lines to show from the end of the logs. Use `all` to return all logs. `-1` remains available as a compatibility alias.
  Future<GetApplicationLogsByUuid200Response?> getServiceApplicationLogsByServiceAndAppUuid(String uuid, String appUuid, { String? lines, }) async {
    final response = await getServiceApplicationLogsByServiceAndAppUuidWithHttpInfo(uuid, appUuid,  lines: lines, );
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

  /// List service applications
  ///
  /// List compose service applications (containers) for a single service.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Service UUID.
  Future<Response> listServiceApplicationsByServiceUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/applications'
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

  /// List service applications
  ///
  /// List compose service applications (containers) for a single service.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Service UUID.
  Future<Object?> listServiceApplicationsByServiceUuid(String uuid,) async {
    final response = await listServiceApplicationsByServiceUuidWithHttpInfo(uuid,);
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

  /// Update service application
  ///
  /// Update fields for a compose service application. Use `url` for comma-separated public URLs (same rules as `urls[].url` on PATCH /services/{uuid}).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Service UUID.
  ///
  /// * [String] appUuid (required):
  ///   Service application UUID.
  ///
  /// * [bool] forceDomainOverride:
  ///   When true, allow duplicate URLs in the request and proceed despite domain conflicts (same as service PATCH).
  ///
  /// * [PatchServiceApplicationByServiceAndAppUuidRequest] patchServiceApplicationByServiceAndAppUuidRequest:
  Future<Response> patchServiceApplicationByServiceAndAppUuidWithHttpInfo(String uuid, String appUuid, { bool? forceDomainOverride, PatchServiceApplicationByServiceAndAppUuidRequest? patchServiceApplicationByServiceAndAppUuidRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/applications/{app_uuid}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{app_uuid}', appUuid);

    // ignore: prefer_final_locals
    Object? postBody = patchServiceApplicationByServiceAndAppUuidRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (forceDomainOverride != null) {
      queryParams.addAll(_queryParams('', 'force_domain_override', forceDomainOverride));
    }

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

  /// Update service application
  ///
  /// Update fields for a compose service application. Use `url` for comma-separated public URLs (same rules as `urls[].url` on PATCH /services/{uuid}).
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Service UUID.
  ///
  /// * [String] appUuid (required):
  ///   Service application UUID.
  ///
  /// * [bool] forceDomainOverride:
  ///   When true, allow duplicate URLs in the request and proceed despite domain conflicts (same as service PATCH).
  ///
  /// * [PatchServiceApplicationByServiceAndAppUuidRequest] patchServiceApplicationByServiceAndAppUuidRequest:
  Future<Map<String, Object>?> patchServiceApplicationByServiceAndAppUuid(String uuid, String appUuid, { bool? forceDomainOverride, PatchServiceApplicationByServiceAndAppUuidRequest? patchServiceApplicationByServiceAndAppUuidRequest, }) async {
    final response = await patchServiceApplicationByServiceAndAppUuidWithHttpInfo(uuid, appUuid,  forceDomainOverride: forceDomainOverride, patchServiceApplicationByServiceAndAppUuidRequest: patchServiceApplicationByServiceAndAppUuidRequest, );
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

  /// Restart service application container
  ///
  /// Restarts a single compose service container.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] appUuid (required):
  Future<Response> postRestartServiceApplicationByServiceAndAppUuidWithHttpInfo(String uuid, String appUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/applications/{app_uuid}/restart'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{app_uuid}', appUuid);

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

  /// Restart service application container
  ///
  /// Restarts a single compose service container.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] appUuid (required):
  Future<DeletePreviewDeploymentByPullRequestId200Response?> postRestartServiceApplicationByServiceAndAppUuid(String uuid, String appUuid,) async {
    final response = await postRestartServiceApplicationByServiceAndAppUuidWithHttpInfo(uuid, appUuid,);
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

  /// Get service application logs
  ///
  /// Get Docker logs for a single compose service container. Requires the `read:sensitive` or `root` token ability.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] appUuid (required):
  ///
  /// * [String] lines:
  ///   Number of lines to show from the end of the logs. Use `all` to return all logs. `-1` remains available as a compatibility alias.
  Future<Response> postServiceApplicationLogsByServiceAndAppUuidWithHttpInfo(String uuid, String appUuid, { String? lines, }) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/applications/{app_uuid}/logs'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{app_uuid}', appUuid);

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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get service application logs
  ///
  /// Get Docker logs for a single compose service container. Requires the `read:sensitive` or `root` token ability.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] appUuid (required):
  ///
  /// * [String] lines:
  ///   Number of lines to show from the end of the logs. Use `all` to return all logs. `-1` remains available as a compatibility alias.
  Future<GetApplicationLogsByUuid200Response?> postServiceApplicationLogsByServiceAndAppUuid(String uuid, String appUuid, { String? lines, }) async {
    final response = await postServiceApplicationLogsByServiceAndAppUuidWithHttpInfo(uuid, appUuid,  lines: lines, );
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

  /// Start or redeploy service application container
  ///
  /// Runs docker compose up for a single compose service (no-deps), optionally pulling the image and rebuilding.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] appUuid (required):
  ///
  /// * [bool] force:
  ///
  /// * [bool] latest:
  Future<Response> postStartServiceApplicationByServiceAndAppUuidWithHttpInfo(String uuid, String appUuid, { bool? force, bool? latest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/applications/{app_uuid}/start'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{app_uuid}', appUuid);

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

  /// Start or redeploy service application container
  ///
  /// Runs docker compose up for a single compose service (no-deps), optionally pulling the image and rebuilding.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] appUuid (required):
  ///
  /// * [bool] force:
  ///
  /// * [bool] latest:
  Future<DeletePreviewDeploymentByPullRequestId200Response?> postStartServiceApplicationByServiceAndAppUuid(String uuid, String appUuid, { bool? force, bool? latest, }) async {
    final response = await postStartServiceApplicationByServiceAndAppUuidWithHttpInfo(uuid, appUuid,  force: force, latest: latest, );
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

  /// Stop service application container
  ///
  /// Stops a single compose service container.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] appUuid (required):
  Future<Response> postStopServiceApplicationByServiceAndAppUuidWithHttpInfo(String uuid, String appUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/applications/{app_uuid}/stop'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{app_uuid}', appUuid);

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

  /// Stop service application container
  ///
  /// Stops a single compose service container.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] appUuid (required):
  Future<DeletePreviewDeploymentByPullRequestId200Response?> postStopServiceApplicationByServiceAndAppUuid(String uuid, String appUuid,) async {
    final response = await postStopServiceApplicationByServiceAndAppUuidWithHttpInfo(uuid, appUuid,);
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
}
