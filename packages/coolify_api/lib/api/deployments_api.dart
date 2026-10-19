//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DeploymentsApi {
  DeploymentsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Cancel
  ///
  /// Cancel a deployment by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Deployment UUID
  Future<Response> cancelDeploymentByUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/deployments/{uuid}/cancel'
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

  /// Cancel
  ///
  /// Cancel a deployment by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Deployment UUID
  Future<CancelDeploymentByUuid200Response?> cancelDeploymentByUuid(String uuid,) async {
    final response = await cancelDeploymentByUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CancelDeploymentByUuid200Response',) as CancelDeploymentByUuid200Response;
    
    }
    return null;
  }

  /// Deploy
  ///
  /// Deploy by tag or UUID using query parameters or a JSON body.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tag:
  ///   Tag name(s). Comma separated list is also accepted.
  ///
  /// * [String] uuid:
  ///   Resource UUID(s). Comma separated list is also accepted.
  ///
  /// * [bool] force:
  ///   Force rebuild (without cache)
  ///
  /// * [int] pr:
  ///   Pull Request Id for deploying specific PR builds. Cannot be used with tag parameter.
  ///
  /// * [int] pullRequestId:
  ///   Preview deployment identifier. Alias of pr.
  ///
  /// * [String] dockerTag:
  ///   Docker image tag for Docker Image preview deployments. Requires pull_request_id.
  Future<Response> deployByTagOrUuidWithHttpInfo({ String? tag, String? uuid, bool? force, int? pr, int? pullRequestId, String? dockerTag, }) async {
    // ignore: prefer_const_declarations
    final path = r'/deploy';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (tag != null) {
      queryParams.addAll(_queryParams('', 'tag', tag));
    }
    if (uuid != null) {
      queryParams.addAll(_queryParams('', 'uuid', uuid));
    }
    if (force != null) {
      queryParams.addAll(_queryParams('', 'force', force));
    }
    if (pr != null) {
      queryParams.addAll(_queryParams('', 'pr', pr));
    }
    if (pullRequestId != null) {
      queryParams.addAll(_queryParams('', 'pull_request_id', pullRequestId));
    }
    if (dockerTag != null) {
      queryParams.addAll(_queryParams('', 'docker_tag', dockerTag));
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

  /// Deploy
  ///
  /// Deploy by tag or UUID using query parameters or a JSON body.
  ///
  /// Parameters:
  ///
  /// * [String] tag:
  ///   Tag name(s). Comma separated list is also accepted.
  ///
  /// * [String] uuid:
  ///   Resource UUID(s). Comma separated list is also accepted.
  ///
  /// * [bool] force:
  ///   Force rebuild (without cache)
  ///
  /// * [int] pr:
  ///   Pull Request Id for deploying specific PR builds. Cannot be used with tag parameter.
  ///
  /// * [int] pullRequestId:
  ///   Preview deployment identifier. Alias of pr.
  ///
  /// * [String] dockerTag:
  ///   Docker image tag for Docker Image preview deployments. Requires pull_request_id.
  Future<DeployByTagOrUuid200Response?> deployByTagOrUuid({ String? tag, String? uuid, bool? force, int? pr, int? pullRequestId, String? dockerTag, }) async {
    final response = await deployByTagOrUuidWithHttpInfo( tag: tag, uuid: uuid, force: force, pr: pr, pullRequestId: pullRequestId, dockerTag: dockerTag, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeployByTagOrUuid200Response',) as DeployByTagOrUuid200Response;
    
    }
    return null;
  }

  /// Get
  ///
  /// Get deployment by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Deployment UUID
  Future<Response> getDeploymentByUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/deployments/{uuid}'
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
  /// Get deployment by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Deployment UUID
  Future<ApplicationDeploymentQueue?> getDeploymentByUuid(String uuid,) async {
    final response = await getDeploymentByUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApplicationDeploymentQueue',) as ApplicationDeploymentQueue;
    
    }
    return null;
  }

  /// List
  ///
  /// List currently running deployments
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listDeploymentsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/deployments';

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
  /// List currently running deployments
  Future<List<ApplicationDeploymentQueue>?> listDeployments() async {
    final response = await listDeploymentsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ApplicationDeploymentQueue>') as List)
        .cast<ApplicationDeploymentQueue>()
        .toList(growable: false);

    }
    return null;
  }

  /// List application deployments
  ///
  /// List application deployments by using the app uuid
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [int] skip:
  ///   Number of records to skip.
  ///
  /// * [int] take:
  ///   Number of records to take.
  Future<Response> listDeploymentsByAppUuidWithHttpInfo(String uuid, { int? skip, int? take, }) async {
    // ignore: prefer_const_declarations
    final path = r'/deployments/applications/{uuid}'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (skip != null) {
      queryParams.addAll(_queryParams('', 'skip', skip));
    }
    if (take != null) {
      queryParams.addAll(_queryParams('', 'take', take));
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

  /// List application deployments
  ///
  /// List application deployments by using the app uuid
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [int] skip:
  ///   Number of records to skip.
  ///
  /// * [int] take:
  ///   Number of records to take.
  Future<List<ApplicationDeploymentQueue>?> listDeploymentsByAppUuid(String uuid, { int? skip, int? take, }) async {
    final response = await listDeploymentsByAppUuidWithHttpInfo(uuid,  skip: skip, take: take, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ApplicationDeploymentQueue>') as List)
        .cast<ApplicationDeploymentQueue>()
        .toList(growable: false);

    }
    return null;
  }
}
