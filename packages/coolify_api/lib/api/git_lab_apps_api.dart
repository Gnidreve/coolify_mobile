//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GitLabAppsApi {
  GitLabAppsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create GitLab App
  ///
  /// Create a new GitLab app (OAuth source). Credentials may be supplied later via the UI or update endpoint.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateGitlabAppRequest] createGitlabAppRequest (required):
  ///   GitLab app creation payload.
  Future<Response> createGitlabAppWithHttpInfo(CreateGitlabAppRequest createGitlabAppRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/gitlab-apps';

    // ignore: prefer_final_locals
    Object? postBody = createGitlabAppRequest;

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

  /// Create GitLab App
  ///
  /// Create a new GitLab app (OAuth source). Credentials may be supplied later via the UI or update endpoint.
  ///
  /// Parameters:
  ///
  /// * [CreateGitlabAppRequest] createGitlabAppRequest (required):
  ///   GitLab app creation payload.
  Future<CreateGitlabApp201Response?> createGitlabApp(CreateGitlabAppRequest createGitlabAppRequest,) async {
    final response = await createGitlabAppWithHttpInfo(createGitlabAppRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateGitlabApp201Response',) as CreateGitlabApp201Response;
    
    }
    return null;
  }

  /// Delete GitLab App
  ///
  /// Delete a GitLab app if it is not being used by any applications.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] gitlabAppId (required):
  ///   GitLab App ID
  Future<Response> deleteGitlabAppWithHttpInfo(int gitlabAppId,) async {
    // ignore: prefer_const_declarations
    final path = r'/gitlab-apps/{gitlab_app_id}'
      .replaceAll('{gitlab_app_id}', gitlabAppId.toString());

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

  /// Delete GitLab App
  ///
  /// Delete a GitLab app if it is not being used by any applications.
  ///
  /// Parameters:
  ///
  /// * [int] gitlabAppId (required):
  ///   GitLab App ID
  Future<DeleteGitlabApp200Response?> deleteGitlabApp(int gitlabAppId,) async {
    final response = await deleteGitlabAppWithHttpInfo(gitlabAppId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteGitlabApp200Response',) as DeleteGitlabApp200Response;
    
    }
    return null;
  }

  /// List
  ///
  /// List all GitLab apps for the current team (and system-wide sources).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listGitlabAppsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/gitlab-apps';

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
  /// List all GitLab apps for the current team (and system-wide sources).
  Future<List<ListGitlabApps200ResponseInner>?> listGitlabApps() async {
    final response = await listGitlabAppsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ListGitlabApps200ResponseInner>') as List)
        .cast<ListGitlabApps200ResponseInner>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update GitLab App
  ///
  /// Update an existing GitLab app.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] gitlabAppId (required):
  ///   GitLab App ID
  ///
  /// * [UpdateGitlabAppRequest] updateGitlabAppRequest (required):
  Future<Response> updateGitlabAppWithHttpInfo(int gitlabAppId, UpdateGitlabAppRequest updateGitlabAppRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/gitlab-apps/{gitlab_app_id}'
      .replaceAll('{gitlab_app_id}', gitlabAppId.toString());

    // ignore: prefer_final_locals
    Object? postBody = updateGitlabAppRequest;

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

  /// Update GitLab App
  ///
  /// Update an existing GitLab app.
  ///
  /// Parameters:
  ///
  /// * [int] gitlabAppId (required):
  ///   GitLab App ID
  ///
  /// * [UpdateGitlabAppRequest] updateGitlabAppRequest (required):
  Future<UpdateGitlabApp200Response?> updateGitlabApp(int gitlabAppId, UpdateGitlabAppRequest updateGitlabAppRequest,) async {
    final response = await updateGitlabAppWithHttpInfo(gitlabAppId, updateGitlabAppRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UpdateGitlabApp200Response',) as UpdateGitlabApp200Response;
    
    }
    return null;
  }
}
