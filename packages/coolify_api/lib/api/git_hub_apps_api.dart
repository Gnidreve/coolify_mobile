//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GitHubAppsApi {
  GitHubAppsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create GitHub App
  ///
  /// Create a new GitHub app.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateGithubAppRequest] createGithubAppRequest (required):
  ///   GitHub app creation payload.
  Future<Response> createGithubAppWithHttpInfo(CreateGithubAppRequest createGithubAppRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/github-apps';

    // ignore: prefer_final_locals
    Object? postBody = createGithubAppRequest;

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

  /// Create GitHub App
  ///
  /// Create a new GitHub app.
  ///
  /// Parameters:
  ///
  /// * [CreateGithubAppRequest] createGithubAppRequest (required):
  ///   GitHub app creation payload.
  Future<CreateGithubApp201Response?> createGithubApp(CreateGithubAppRequest createGithubAppRequest,) async {
    final response = await createGithubAppWithHttpInfo(createGithubAppRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateGithubApp201Response',) as CreateGithubApp201Response;
    
    }
    return null;
  }

  /// Delete GitHub App
  ///
  /// Delete a GitHub app if it's not being used by any applications.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] githubAppId (required):
  ///   GitHub App ID
  Future<Response> deleteGithubAppWithHttpInfo(int githubAppId,) async {
    // ignore: prefer_const_declarations
    final path = r'/github-apps/{github_app_id}'
      .replaceAll('{github_app_id}', githubAppId.toString());

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

  /// Delete GitHub App
  ///
  /// Delete a GitHub app if it's not being used by any applications.
  ///
  /// Parameters:
  ///
  /// * [int] githubAppId (required):
  ///   GitHub App ID
  Future<DeleteGithubApp200Response?> deleteGithubApp(int githubAppId,) async {
    final response = await deleteGithubAppWithHttpInfo(githubAppId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteGithubApp200Response',) as DeleteGithubApp200Response;
    
    }
    return null;
  }

  /// List
  ///
  /// List all GitHub apps.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listGithubAppsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/github-apps';

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
  /// List all GitHub apps.
  Future<List<ListGithubApps200ResponseInner>?> listGithubApps() async {
    final response = await listGithubAppsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ListGithubApps200ResponseInner>') as List)
        .cast<ListGithubApps200ResponseInner>()
        .toList(growable: false);

    }
    return null;
  }

  /// Load Branches for a GitHub Repository
  ///
  /// Fetch branches from GitHub for a given repository.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] githubAppId (required):
  ///   GitHub App ID
  ///
  /// * [String] owner (required):
  ///   Repository owner
  ///
  /// * [String] repo (required):
  ///   Repository name
  Future<Response> loadBranchesWithHttpInfo(int githubAppId, String owner, String repo,) async {
    // ignore: prefer_const_declarations
    final path = r'/github-apps/{github_app_id}/repositories/{owner}/{repo}/branches'
      .replaceAll('{github_app_id}', githubAppId.toString())
      .replaceAll('{owner}', owner)
      .replaceAll('{repo}', repo);

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

  /// Load Branches for a GitHub Repository
  ///
  /// Fetch branches from GitHub for a given repository.
  ///
  /// Parameters:
  ///
  /// * [int] githubAppId (required):
  ///   GitHub App ID
  ///
  /// * [String] owner (required):
  ///   Repository owner
  ///
  /// * [String] repo (required):
  ///   Repository name
  Future<LoadBranches200Response?> loadBranches(int githubAppId, String owner, String repo,) async {
    final response = await loadBranchesWithHttpInfo(githubAppId, owner, repo,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LoadBranches200Response',) as LoadBranches200Response;
    
    }
    return null;
  }

  /// Load Repositories for a GitHub App
  ///
  /// Fetch repositories from GitHub for a given GitHub app.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] githubAppId (required):
  ///   GitHub App ID
  Future<Response> loadRepositoriesWithHttpInfo(int githubAppId,) async {
    // ignore: prefer_const_declarations
    final path = r'/github-apps/{github_app_id}/repositories'
      .replaceAll('{github_app_id}', githubAppId.toString());

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

  /// Load Repositories for a GitHub App
  ///
  /// Fetch repositories from GitHub for a given GitHub app.
  ///
  /// Parameters:
  ///
  /// * [int] githubAppId (required):
  ///   GitHub App ID
  Future<LoadRepositories200Response?> loadRepositories(int githubAppId,) async {
    final response = await loadRepositoriesWithHttpInfo(githubAppId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LoadRepositories200Response',) as LoadRepositories200Response;
    
    }
    return null;
  }

  /// Update GitHub App
  ///
  /// Update an existing GitHub app.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] githubAppId (required):
  ///   GitHub App ID
  ///
  /// * [UpdateGithubAppRequest] updateGithubAppRequest (required):
  Future<Response> updateGithubAppWithHttpInfo(int githubAppId, UpdateGithubAppRequest updateGithubAppRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/github-apps/{github_app_id}'
      .replaceAll('{github_app_id}', githubAppId.toString());

    // ignore: prefer_final_locals
    Object? postBody = updateGithubAppRequest;

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

  /// Update GitHub App
  ///
  /// Update an existing GitHub app.
  ///
  /// Parameters:
  ///
  /// * [int] githubAppId (required):
  ///   GitHub App ID
  ///
  /// * [UpdateGithubAppRequest] updateGithubAppRequest (required):
  Future<UpdateGithubApp200Response?> updateGithubApp(int githubAppId, UpdateGithubAppRequest updateGithubAppRequest,) async {
    final response = await updateGithubAppWithHttpInfo(githubAppId, updateGithubAppRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UpdateGithubApp200Response',) as UpdateGithubApp200Response;
    
    }
    return null;
  }
}
