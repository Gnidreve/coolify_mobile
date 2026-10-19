//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ApplicationsApi {
  ApplicationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add Destination
  ///
  /// Attach an additional standalone Docker destination to an application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [AddApplicationDestinationRequest] addApplicationDestinationRequest (required):
  Future<Response> addApplicationDestinationWithHttpInfo(String uuid, AddApplicationDestinationRequest addApplicationDestinationRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/destinations'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = addApplicationDestinationRequest;

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

  /// Add Destination
  ///
  /// Attach an additional standalone Docker destination to an application.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [AddApplicationDestinationRequest] addApplicationDestinationRequest (required):
  Future<void> addApplicationDestination(String uuid, AddApplicationDestinationRequest addApplicationDestinationRequest,) async {
    final response = await addApplicationDestinationWithHttpInfo(uuid, addApplicationDestinationRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Clone
  ///
  /// Clone an application to a destination owned by the authenticated team.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [CloneApplicationByUuidRequest] cloneApplicationByUuidRequest (required):
  Future<Response> cloneApplicationByUuidWithHttpInfo(String uuid, CloneApplicationByUuidRequest cloneApplicationByUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/clone'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = cloneApplicationByUuidRequest;

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
  /// Clone an application to a destination owned by the authenticated team.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [CloneApplicationByUuidRequest] cloneApplicationByUuidRequest (required):
  Future<CloneApplicationByUuid201Response?> cloneApplicationByUuid(String uuid, CloneApplicationByUuidRequest cloneApplicationByUuidRequest,) async {
    final response = await cloneApplicationByUuidWithHttpInfo(uuid, cloneApplicationByUuidRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CloneApplicationByUuid201Response',) as CloneApplicationByUuid201Response;
    
    }
    return null;
  }

  /// Create (Dockerfile without git)
  ///
  /// Create new application based on a simple Dockerfile (without git).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateDockerfileApplicationRequest] createDockerfileApplicationRequest (required):
  ///   Application object that needs to be created.
  Future<Response> createDockerfileApplicationWithHttpInfo(CreateDockerfileApplicationRequest createDockerfileApplicationRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/dockerfile';

    // ignore: prefer_final_locals
    Object? postBody = createDockerfileApplicationRequest;

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

  /// Create (Dockerfile without git)
  ///
  /// Create new application based on a simple Dockerfile (without git).
  ///
  /// Parameters:
  ///
  /// * [CreateDockerfileApplicationRequest] createDockerfileApplicationRequest (required):
  ///   Application object that needs to be created.
  Future<CreatePublicApplication201Response?> createDockerfileApplication(CreateDockerfileApplicationRequest createDockerfileApplicationRequest,) async {
    final response = await createDockerfileApplicationWithHttpInfo(createDockerfileApplicationRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreatePublicApplication201Response',) as CreatePublicApplication201Response;
    
    }
    return null;
  }

  /// Create (Docker Image without git)
  ///
  /// Create new application based on a prebuilt docker image (without git).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateDockerimageApplicationRequest] createDockerimageApplicationRequest (required):
  ///   Application object that needs to be created.
  Future<Response> createDockerimageApplicationWithHttpInfo(CreateDockerimageApplicationRequest createDockerimageApplicationRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/dockerimage';

    // ignore: prefer_final_locals
    Object? postBody = createDockerimageApplicationRequest;

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

  /// Create (Docker Image without git)
  ///
  /// Create new application based on a prebuilt docker image (without git).
  ///
  /// Parameters:
  ///
  /// * [CreateDockerimageApplicationRequest] createDockerimageApplicationRequest (required):
  ///   Application object that needs to be created.
  Future<CreatePublicApplication201Response?> createDockerimageApplication(CreateDockerimageApplicationRequest createDockerimageApplicationRequest,) async {
    final response = await createDockerimageApplicationWithHttpInfo(createDockerimageApplicationRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreatePublicApplication201Response',) as CreatePublicApplication201Response;
    
    }
    return null;
  }

  /// Create Env
  ///
  /// Create env by application UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [CreateEnvByApplicationUuidRequest] createEnvByApplicationUuidRequest (required):
  ///   Env created.
  Future<Response> createEnvByApplicationUuidWithHttpInfo(String uuid, CreateEnvByApplicationUuidRequest createEnvByApplicationUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/envs'
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
  /// Create env by application UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [CreateEnvByApplicationUuidRequest] createEnvByApplicationUuidRequest (required):
  ///   Env created.
  Future<CreateEnvByApplicationUuid201Response?> createEnvByApplicationUuid(String uuid, CreateEnvByApplicationUuidRequest createEnvByApplicationUuidRequest,) async {
    final response = await createEnvByApplicationUuidWithHttpInfo(uuid, createEnvByApplicationUuidRequest,);
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

  /// Create Preview Deployment
  ///
  /// Open a preview deployment for a pull request and queue its deployment. When the preview already exists, it is redeployed. Git based applications need git_type unless they use a GitHub or GitLab App source; Bitbucket also needs commit. Docker Image applications need docker_tag for a new preview.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [CreatePreviewDeploymentByApplicationUuidRequest] createPreviewDeploymentByApplicationUuidRequest (required):
  Future<Response> createPreviewDeploymentByApplicationUuidWithHttpInfo(String uuid, CreatePreviewDeploymentByApplicationUuidRequest createPreviewDeploymentByApplicationUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/previews'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = createPreviewDeploymentByApplicationUuidRequest;

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

  /// Create Preview Deployment
  ///
  /// Open a preview deployment for a pull request and queue its deployment. When the preview already exists, it is redeployed. Git based applications need git_type unless they use a GitHub or GitLab App source; Bitbucket also needs commit. Docker Image applications need docker_tag for a new preview.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [CreatePreviewDeploymentByApplicationUuidRequest] createPreviewDeploymentByApplicationUuidRequest (required):
  Future<ApplicationPreviewDeployment?> createPreviewDeploymentByApplicationUuid(String uuid, CreatePreviewDeploymentByApplicationUuidRequest createPreviewDeploymentByApplicationUuidRequest,) async {
    final response = await createPreviewDeploymentByApplicationUuidWithHttpInfo(uuid, createPreviewDeploymentByApplicationUuidRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApplicationPreviewDeployment',) as ApplicationPreviewDeployment;
    
    }
    return null;
  }

  /// Create (Private - Deploy Key)
  ///
  /// Create new application based on a private repository through a Deploy Key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreatePrivateDeployKeyApplicationRequest] createPrivateDeployKeyApplicationRequest (required):
  ///   Application object that needs to be created.
  Future<Response> createPrivateDeployKeyApplicationWithHttpInfo(CreatePrivateDeployKeyApplicationRequest createPrivateDeployKeyApplicationRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/private-deploy-key';

    // ignore: prefer_final_locals
    Object? postBody = createPrivateDeployKeyApplicationRequest;

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

  /// Create (Private - Deploy Key)
  ///
  /// Create new application based on a private repository through a Deploy Key.
  ///
  /// Parameters:
  ///
  /// * [CreatePrivateDeployKeyApplicationRequest] createPrivateDeployKeyApplicationRequest (required):
  ///   Application object that needs to be created.
  Future<CreatePublicApplication201Response?> createPrivateDeployKeyApplication(CreatePrivateDeployKeyApplicationRequest createPrivateDeployKeyApplicationRequest,) async {
    final response = await createPrivateDeployKeyApplicationWithHttpInfo(createPrivateDeployKeyApplicationRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreatePublicApplication201Response',) as CreatePublicApplication201Response;
    
    }
    return null;
  }

  /// Create (Private - GH App)
  ///
  /// Create new application based on a private repository through a Github App.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreatePrivateGithubAppApplicationRequest] createPrivateGithubAppApplicationRequest (required):
  ///   Application object that needs to be created.
  Future<Response> createPrivateGithubAppApplicationWithHttpInfo(CreatePrivateGithubAppApplicationRequest createPrivateGithubAppApplicationRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/private-github-app';

    // ignore: prefer_final_locals
    Object? postBody = createPrivateGithubAppApplicationRequest;

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

  /// Create (Private - GH App)
  ///
  /// Create new application based on a private repository through a Github App.
  ///
  /// Parameters:
  ///
  /// * [CreatePrivateGithubAppApplicationRequest] createPrivateGithubAppApplicationRequest (required):
  ///   Application object that needs to be created.
  Future<CreatePublicApplication201Response?> createPrivateGithubAppApplication(CreatePrivateGithubAppApplicationRequest createPrivateGithubAppApplicationRequest,) async {
    final response = await createPrivateGithubAppApplicationWithHttpInfo(createPrivateGithubAppApplicationRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreatePublicApplication201Response',) as CreatePublicApplication201Response;
    
    }
    return null;
  }

  /// Create (Public)
  ///
  /// Create new application based on a public git repository.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreatePublicApplicationRequest] createPublicApplicationRequest (required):
  ///   Application object that needs to be created.
  Future<Response> createPublicApplicationWithHttpInfo(CreatePublicApplicationRequest createPublicApplicationRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/public';

    // ignore: prefer_final_locals
    Object? postBody = createPublicApplicationRequest;

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

  /// Create (Public)
  ///
  /// Create new application based on a public git repository.
  ///
  /// Parameters:
  ///
  /// * [CreatePublicApplicationRequest] createPublicApplicationRequest (required):
  ///   Application object that needs to be created.
  Future<CreatePublicApplication201Response?> createPublicApplication(CreatePublicApplicationRequest createPublicApplicationRequest,) async {
    final response = await createPublicApplicationWithHttpInfo(createPublicApplicationRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreatePublicApplication201Response',) as CreatePublicApplication201Response;
    
    }
    return null;
  }

  /// Create Storage
  ///
  /// Create a persistent storage or file storage for an application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [CreateStorageByApplicationUuidRequest] createStorageByApplicationUuidRequest (required):
  Future<Response> createStorageByApplicationUuidWithHttpInfo(String uuid, CreateStorageByApplicationUuidRequest createStorageByApplicationUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/storages'
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
  /// Create a persistent storage or file storage for an application.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [CreateStorageByApplicationUuidRequest] createStorageByApplicationUuidRequest (required):
  Future<Map<String, Object>?> createStorageByApplicationUuid(String uuid, CreateStorageByApplicationUuidRequest createStorageByApplicationUuidRequest,) async {
    final response = await createStorageByApplicationUuidWithHttpInfo(uuid, createStorageByApplicationUuidRequest,);
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
  /// Add tag(s) to an application by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [CreateTagByApplicationUuidRequest] createTagByApplicationUuidRequest (required):
  Future<Response> createTagByApplicationUuidWithHttpInfo(String uuid, CreateTagByApplicationUuidRequest createTagByApplicationUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/tags'
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
  /// Add tag(s) to an application by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [CreateTagByApplicationUuidRequest] createTagByApplicationUuidRequest (required):
  Future<List<Tag>?> createTagByApplicationUuid(String uuid, CreateTagByApplicationUuidRequest createTagByApplicationUuidRequest,) async {
    final response = await createTagByApplicationUuidWithHttpInfo(uuid, createTagByApplicationUuidRequest,);
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

  /// Delete
  ///
  /// Delete application by UUID. Needs a token with the write and deploy permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
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
  Future<Response> deleteApplicationByUuidWithHttpInfo(String uuid, { bool? deleteConfigurations, bool? deleteVolumes, bool? dockerCleanup, bool? deleteConnectedNetworks, }) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}'
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
  /// Delete application by UUID. Needs a token with the write and deploy permissions.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
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
  Future<DeleteApplicationByUuid200Response?> deleteApplicationByUuid(String uuid, { bool? deleteConfigurations, bool? deleteVolumes, bool? dockerCleanup, bool? deleteConnectedNetworks, }) async {
    final response = await deleteApplicationByUuidWithHttpInfo(uuid,  deleteConfigurations: deleteConfigurations, deleteVolumes: deleteVolumes, dockerCleanup: dockerCleanup, deleteConnectedNetworks: deleteConnectedNetworks, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteApplicationByUuid200Response',) as DeleteApplicationByUuid200Response;
    
    }
    return null;
  }

  /// Delete application storage backup schedule
  ///
  /// Delete the backup schedule and its local and S3 archives for an application storage.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] storageUuid (required):
  Future<Response> deleteApplicationStorageBackupScheduleWithHttpInfo(String uuid, String storageUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/storages/{storage_uuid}/backups'
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

  /// Delete application storage backup schedule
  ///
  /// Delete the backup schedule and its local and S3 archives for an application storage.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] storageUuid (required):
  Future<void> deleteApplicationStorageBackupSchedule(String uuid, String storageUuid,) async {
    final response = await deleteApplicationStorageBackupScheduleWithHttpInfo(uuid, storageUuid,);
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
  ///   UUID of the application.
  ///
  /// * [String] envUuid (required):
  ///   UUID of the environment variable.
  Future<Response> deleteEnvByApplicationUuidWithHttpInfo(String uuid, String envUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/envs/{env_uuid}'
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
  ///   UUID of the application.
  ///
  /// * [String] envUuid (required):
  ///   UUID of the environment variable.
  Future<DeleteEnvByApplicationUuid200Response?> deleteEnvByApplicationUuid(String uuid, String envUuid,) async {
    final response = await deleteEnvByApplicationUuidWithHttpInfo(uuid, envUuid,);
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

  /// Delete Preview Deployment
  ///
  /// Delete a preview deployment for a pull request. Cancels active deployments, stops containers, removes volumes/networks, and deletes the preview record. Needs a token with the write and deploy permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [int] pullRequestId (required):
  ///   Pull request ID of the preview to delete.
  Future<Response> deletePreviewDeploymentByPullRequestIdWithHttpInfo(String uuid, int pullRequestId,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/previews/{pull_request_id}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{pull_request_id}', pullRequestId.toString());

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

  /// Delete Preview Deployment
  ///
  /// Delete a preview deployment for a pull request. Cancels active deployments, stops containers, removes volumes/networks, and deletes the preview record. Needs a token with the write and deploy permissions.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [int] pullRequestId (required):
  ///   Pull request ID of the preview to delete.
  Future<DeletePreviewDeploymentByPullRequestId200Response?> deletePreviewDeploymentByPullRequestId(String uuid, int pullRequestId,) async {
    final response = await deletePreviewDeploymentByPullRequestIdWithHttpInfo(uuid, pullRequestId,);
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

  /// Delete Storage
  ///
  /// Delete a persistent storage or file storage by application UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [String] storageUuid (required):
  ///   UUID of the storage.
  Future<Response> deleteStorageByApplicationUuidWithHttpInfo(String uuid, String storageUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/storages/{storage_uuid}'
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
  /// Delete a persistent storage or file storage by application UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [String] storageUuid (required):
  ///   UUID of the storage.
  Future<DeletePreviewDeploymentByPullRequestId200Response?> deleteStorageByApplicationUuid(String uuid, String storageUuid,) async {
    final response = await deleteStorageByApplicationUuidWithHttpInfo(uuid, storageUuid,);
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
  /// Remove a tag from an application by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [String] tagUuid (required):
  ///   UUID of the tag.
  Future<Response> deleteTagByApplicationUuidWithHttpInfo(String uuid, String tagUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/tags/{tag_uuid}'
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
  /// Remove a tag from an application by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [String] tagUuid (required):
  ///   UUID of the tag.
  Future<void> deleteTagByApplicationUuid(String uuid, String tagUuid,) async {
    final response = await deleteTagByApplicationUuidWithHttpInfo(uuid, tagUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get
  ///
  /// Get application by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  Future<Response> getApplicationByUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}'
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
  /// Get application by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  Future<Application?> getApplicationByUuid(String uuid,) async {
    final response = await getApplicationByUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Application',) as Application;
    
    }
    return null;
  }

  /// Get application logs.
  ///
  /// Get application logs by UUID. Requires the `read:sensitive` or `root` token ability.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [String] lines:
  ///   Number of lines to show from the end of the logs. Use `all` to return all logs. `-1` remains available as a compatibility alias.
  ///
  /// * [bool] showTimestamps:
  ///   Show timestamps in the logs.
  ///
  /// * [String] serviceName:
  ///   Return logs only from the container of the Docker Compose service with this name. Returns 404 when no running container matches.
  Future<Response> getApplicationLogsByUuidWithHttpInfo(String uuid, { String? lines, bool? showTimestamps, String? serviceName, }) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/logs'
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
    if (serviceName != null) {
      queryParams.addAll(_queryParams('', 'service_name', serviceName));
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

  /// Get application logs.
  ///
  /// Get application logs by UUID. Requires the `read:sensitive` or `root` token ability.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [String] lines:
  ///   Number of lines to show from the end of the logs. Use `all` to return all logs. `-1` remains available as a compatibility alias.
  ///
  /// * [bool] showTimestamps:
  ///   Show timestamps in the logs.
  ///
  /// * [String] serviceName:
  ///   Return logs only from the container of the Docker Compose service with this name. Returns 404 when no running container matches.
  Future<GetApplicationLogsByUuid200Response?> getApplicationLogsByUuid(String uuid, { String? lines, bool? showTimestamps, String? serviceName, }) async {
    final response = await getApplicationLogsByUuidWithHttpInfo(uuid,  lines: lines, showTimestamps: showTimestamps, serviceName: serviceName, );
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

  /// Get preview application logs.
  ///
  /// Get runtime container logs for a preview deployment by application UUID and pull request ID. Requires the `read:sensitive` or `root` token ability.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [int] pullRequestId (required):
  ///   Pull request ID of the preview deployment.
  ///
  /// * [String] lines:
  ///   Number of lines to show from the end of the logs. Use `all` to return all logs. `-1` remains available as a compatibility alias.
  ///
  /// * [bool] showTimestamps:
  ///   Show timestamps in the logs.
  ///
  /// * [String] serviceName:
  ///   Return logs only from the container of the Docker Compose service with this name. Returns 404 when no running container matches.
  Future<Response> getPreviewApplicationLogsByPullRequestIdWithHttpInfo(String uuid, int pullRequestId, { String? lines, bool? showTimestamps, String? serviceName, }) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/previews/{pull_request_id}/logs'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{pull_request_id}', pullRequestId.toString());

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
    if (serviceName != null) {
      queryParams.addAll(_queryParams('', 'service_name', serviceName));
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

  /// Get preview application logs.
  ///
  /// Get runtime container logs for a preview deployment by application UUID and pull request ID. Requires the `read:sensitive` or `root` token ability.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [int] pullRequestId (required):
  ///   Pull request ID of the preview deployment.
  ///
  /// * [String] lines:
  ///   Number of lines to show from the end of the logs. Use `all` to return all logs. `-1` remains available as a compatibility alias.
  ///
  /// * [bool] showTimestamps:
  ///   Show timestamps in the logs.
  ///
  /// * [String] serviceName:
  ///   Return logs only from the container of the Docker Compose service with this name. Returns 404 when no running container matches.
  Future<GetApplicationLogsByUuid200Response?> getPreviewApplicationLogsByPullRequestId(String uuid, int pullRequestId, { String? lines, bool? showTimestamps, String? serviceName, }) async {
    final response = await getPreviewApplicationLogsByPullRequestIdWithHttpInfo(uuid, pullRequestId,  lines: lines, showTimestamps: showTimestamps, serviceName: serviceName, );
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

  /// Get Preview Deployment
  ///
  /// Get a preview deployment by pull request ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [int] pullRequestId (required):
  ///   Pull request ID of the preview.
  Future<Response> getPreviewDeploymentByPullRequestIdWithHttpInfo(String uuid, int pullRequestId,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/previews/{pull_request_id}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{pull_request_id}', pullRequestId.toString());

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

  /// Get Preview Deployment
  ///
  /// Get a preview deployment by pull request ID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [int] pullRequestId (required):
  ///   Pull request ID of the preview.
  Future<ApplicationPreview?> getPreviewDeploymentByPullRequestId(String uuid, int pullRequestId,) async {
    final response = await getPreviewDeploymentByPullRequestIdWithHttpInfo(uuid, pullRequestId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApplicationPreview',) as ApplicationPreview;
    
    }
    return null;
  }

  /// List Destinations
  ///
  /// List primary and additional destinations for a standalone application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  Future<Response> listApplicationDestinationsWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/destinations'
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

  /// List Destinations
  ///
  /// List primary and additional destinations for a standalone application.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  Future<void> listApplicationDestinations(String uuid,) async {
    final response = await listApplicationDestinationsWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List Rollback Images
  ///
  /// List available Docker images for rolling back an application. Returns an empty list when the server is unavailable or remote inspection is not possible.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  Future<Response> listApplicationRollbackImagesWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/rollback-images'
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

  /// List Rollback Images
  ///
  /// List available Docker images for rolling back an application. Returns an empty list when the server is unavailable or remote inspection is not possible.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  Future<ListApplicationRollbackImages200Response?> listApplicationRollbackImages(String uuid,) async {
    final response = await listApplicationRollbackImagesWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListApplicationRollbackImages200Response',) as ListApplicationRollbackImages200Response;
    
    }
    return null;
  }

  /// List
  ///
  /// List all applications.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tag:
  ///   Filter applications by tag name.
  Future<Response> listApplicationsWithHttpInfo({ String? tag, }) async {
    // ignore: prefer_const_declarations
    final path = r'/applications';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (tag != null) {
      queryParams.addAll(_queryParams('', 'tag', tag));
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

  /// List
  ///
  /// List all applications.
  ///
  /// Parameters:
  ///
  /// * [String] tag:
  ///   Filter applications by tag name.
  Future<List<Application>?> listApplications({ String? tag, }) async {
    final response = await listApplicationsWithHttpInfo( tag: tag, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Application>') as List)
        .cast<Application>()
        .toList(growable: false);

    }
    return null;
  }

  /// List Envs
  ///
  /// List all envs by application UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  Future<Response> listEnvsByApplicationUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/envs'
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
  /// List all envs by application UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  Future<List<EnvironmentVariable>?> listEnvsByApplicationUuid(String uuid,) async {
    final response = await listEnvsByApplicationUuidWithHttpInfo(uuid,);
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

  /// List Preview Deployments
  ///
  /// List the preview deployments of an application, newest pull request first.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  Future<Response> listPreviewDeploymentsByApplicationUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/previews'
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

  /// List Preview Deployments
  ///
  /// List the preview deployments of an application, newest pull request first.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  Future<List<ApplicationPreview>?> listPreviewDeploymentsByApplicationUuid(String uuid,) async {
    final response = await listPreviewDeploymentsByApplicationUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ApplicationPreview>') as List)
        .cast<ApplicationPreview>()
        .toList(growable: false);

    }
    return null;
  }

  /// List Storages
  ///
  /// List all persistent storages and file storages by application UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  Future<Response> listStoragesByApplicationUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/storages'
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
  /// List all persistent storages and file storages by application UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  Future<ListStoragesByApplicationUuid200Response?> listStoragesByApplicationUuid(String uuid,) async {
    final response = await listStoragesByApplicationUuidWithHttpInfo(uuid,);
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
  /// List tags for an application by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  Future<Response> listTagsByApplicationUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/tags'
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
  /// List tags for an application by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  Future<List<Tag>?> listTagsByApplicationUuid(String uuid,) async {
    final response = await listTagsByApplicationUuidWithHttpInfo(uuid,);
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
  /// Migrate an application to another destination/server owned by the authenticated team. Stops the application, optionally transfers persistent volume data when both servers are managed by Coolify, and updates database records. Redeploy after migration completes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [MigrateApplicationByUuidRequest] migrateApplicationByUuidRequest (required):
  Future<Response> migrateApplicationByUuidWithHttpInfo(String uuid, MigrateApplicationByUuidRequest migrateApplicationByUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/migrate'
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
  /// Migrate an application to another destination/server owned by the authenticated team. Stops the application, optionally transfers persistent volume data when both servers are managed by Coolify, and updates database records. Redeploy after migration completes.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [MigrateApplicationByUuidRequest] migrateApplicationByUuidRequest (required):
  Future<void> migrateApplicationByUuid(String uuid, MigrateApplicationByUuidRequest migrateApplicationByUuidRequest,) async {
    final response = await migrateApplicationByUuidWithHttpInfo(uuid, migrateApplicationByUuidRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Move
  ///
  /// Move application to another project/environment. This is a purely organizational change — running containers are not affected. Note: after moving, the application will pick up shared environment variables from the new environment on the next deployment.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [MoveApplicationByUuidRequest] moveApplicationByUuidRequest (required):
  ///   Target environment to move the application to.
  Future<Response> moveApplicationByUuidWithHttpInfo(String uuid, MoveApplicationByUuidRequest moveApplicationByUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/move'
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
  /// Move application to another project/environment. This is a purely organizational change — running containers are not affected. Note: after moving, the application will pick up shared environment variables from the new environment on the next deployment.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [MoveApplicationByUuidRequest] moveApplicationByUuidRequest (required):
  ///   Target environment to move the application to.
  Future<MoveApplicationByUuid200Response?> moveApplicationByUuid(String uuid, MoveApplicationByUuidRequest moveApplicationByUuidRequest,) async {
    final response = await moveApplicationByUuidWithHttpInfo(uuid, moveApplicationByUuidRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MoveApplicationByUuid200Response',) as MoveApplicationByUuid200Response;
    
    }
    return null;
  }

  /// Remove Destination
  ///
  /// Detach an additional destination from an application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [String] destinationUuid (required):
  ///   UUID of the destination.
  Future<Response> removeApplicationDestinationWithHttpInfo(String uuid, String destinationUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/destinations/{destination_uuid}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{destination_uuid}', destinationUuid);

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

  /// Remove Destination
  ///
  /// Detach an additional destination from an application.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [String] destinationUuid (required):
  ///   UUID of the destination.
  Future<void> removeApplicationDestination(String uuid, String destinationUuid,) async {
    final response = await removeApplicationDestinationWithHttpInfo(uuid, destinationUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Restart
  ///
  /// Restart application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  Future<Response> restartApplicationByUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/restart'
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
  /// Restart application.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  Future<RestartApplicationByUuid200Response?> restartApplicationByUuid(String uuid,) async {
    final response = await restartApplicationByUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RestartApplicationByUuid200Response',) as RestartApplicationByUuid200Response;
    
    }
    return null;
  }

  /// Rollback
  ///
  /// Queue a rollback deployment for an application to a previous image commit/tag.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [RollbackApplicationByUuidRequest] rollbackApplicationByUuidRequest (required):
  Future<Response> rollbackApplicationByUuidWithHttpInfo(String uuid, RollbackApplicationByUuidRequest rollbackApplicationByUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/rollback'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = rollbackApplicationByUuidRequest;

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

  /// Rollback
  ///
  /// Queue a rollback deployment for an application to a previous image commit/tag.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [RollbackApplicationByUuidRequest] rollbackApplicationByUuidRequest (required):
  Future<RollbackApplicationByUuid200Response?> rollbackApplicationByUuid(String uuid, RollbackApplicationByUuidRequest rollbackApplicationByUuidRequest,) async {
    final response = await rollbackApplicationByUuidWithHttpInfo(uuid, rollbackApplicationByUuidRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RollbackApplicationByUuid200Response',) as RollbackApplicationByUuid200Response;
    
    }
    return null;
  }

  /// Run application storage backup
  ///
  /// Queue an immediate volume backup for an application storage that has a schedule. Needs a token with the write and deploy permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] storageUuid (required):
  Future<Response> runApplicationStorageBackupWithHttpInfo(String uuid, String storageUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/storages/{storage_uuid}/backups/run'
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

  /// Run application storage backup
  ///
  /// Queue an immediate volume backup for an application storage that has a schedule. Needs a token with the write and deploy permissions.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] storageUuid (required):
  Future<void> runApplicationStorageBackup(String uuid, String storageUuid,) async {
    final response = await runApplicationStorageBackupWithHttpInfo(uuid, storageUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Set application storage backup schedule
  ///
  /// Create or replace the backup schedule for an application persistent volume or directory storage. A schedule with stop_during_backup needs a token with the deploy permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [String] storageUuid (required):
  ///   UUID of the persistent volume or directory storage.
  ///
  /// * [VolumeBackupScheduleRequest] volumeBackupScheduleRequest (required):
  Future<Response> setApplicationStorageBackupScheduleWithHttpInfo(String uuid, String storageUuid, VolumeBackupScheduleRequest volumeBackupScheduleRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/storages/{storage_uuid}/backups'
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

  /// Set application storage backup schedule
  ///
  /// Create or replace the backup schedule for an application persistent volume or directory storage. A schedule with stop_during_backup needs a token with the deploy permission.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [String] storageUuid (required):
  ///   UUID of the persistent volume or directory storage.
  ///
  /// * [VolumeBackupScheduleRequest] volumeBackupScheduleRequest (required):
  Future<VolumeBackupScheduleResponse?> setApplicationStorageBackupSchedule(String uuid, String storageUuid, VolumeBackupScheduleRequest volumeBackupScheduleRequest,) async {
    final response = await setApplicationStorageBackupScheduleWithHttpInfo(uuid, storageUuid, volumeBackupScheduleRequest,);
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
  /// Start application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [bool] force:
  ///   Force rebuild.
  ///
  /// * [bool] instantDeploy:
  ///   Instant deploy (skip queuing).
  Future<Response> startApplicationByUuidWithHttpInfo(String uuid, { bool? force, bool? instantDeploy, }) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/start'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (force != null) {
      queryParams.addAll(_queryParams('', 'force', force));
    }
    if (instantDeploy != null) {
      queryParams.addAll(_queryParams('', 'instant_deploy', instantDeploy));
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

  /// Start
  ///
  /// Start application.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [bool] force:
  ///   Force rebuild.
  ///
  /// * [bool] instantDeploy:
  ///   Instant deploy (skip queuing).
  Future<StartApplicationByUuid200Response?> startApplicationByUuid(String uuid, { bool? force, bool? instantDeploy, }) async {
    final response = await startApplicationByUuidWithHttpInfo(uuid,  force: force, instantDeploy: instantDeploy, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StartApplicationByUuid200Response',) as StartApplicationByUuid200Response;
    
    }
    return null;
  }

  /// Stop
  ///
  /// Stop application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [bool] dockerCleanup:
  ///   Run docker cleanup when the server disk usage is at or above its cleanup threshold. Skipped when a cleanup ran on the server in the last hour.
  Future<Response> stopApplicationByUuidWithHttpInfo(String uuid, { bool? dockerCleanup, }) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/stop'
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
  /// Stop application.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [bool] dockerCleanup:
  ///   Run docker cleanup when the server disk usage is at or above its cleanup threshold. Skipped when a cleanup ran on the server in the last hour.
  Future<StopApplicationByUuid200Response?> stopApplicationByUuid(String uuid, { bool? dockerCleanup, }) async {
    final response = await stopApplicationByUuidWithHttpInfo(uuid,  dockerCleanup: dockerCleanup, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StopApplicationByUuid200Response',) as StopApplicationByUuid200Response;
    
    }
    return null;
  }

  /// Update
  ///
  /// Update application by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [UpdateApplicationByUuidRequest] updateApplicationByUuidRequest (required):
  ///   Application updated.
  Future<Response> updateApplicationByUuidWithHttpInfo(String uuid, UpdateApplicationByUuidRequest updateApplicationByUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = updateApplicationByUuidRequest;

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
  /// Update application by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [UpdateApplicationByUuidRequest] updateApplicationByUuidRequest (required):
  ///   Application updated.
  Future<CreatePublicApplication201Response?> updateApplicationByUuid(String uuid, UpdateApplicationByUuidRequest updateApplicationByUuidRequest,) async {
    final response = await updateApplicationByUuidWithHttpInfo(uuid, updateApplicationByUuidRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreatePublicApplication201Response',) as CreatePublicApplication201Response;
    
    }
    return null;
  }

  /// Update Env
  ///
  /// Update env by application UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [UpdateEnvByApplicationUuidRequest] updateEnvByApplicationUuidRequest (required):
  ///   Env updated.
  Future<Response> updateEnvByApplicationUuidWithHttpInfo(String uuid, UpdateEnvByApplicationUuidRequest updateEnvByApplicationUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/envs'
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
  /// Update env by application UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [UpdateEnvByApplicationUuidRequest] updateEnvByApplicationUuidRequest (required):
  ///   Env updated.
  Future<EnvironmentVariable?> updateEnvByApplicationUuid(String uuid, UpdateEnvByApplicationUuidRequest updateEnvByApplicationUuidRequest,) async {
    final response = await updateEnvByApplicationUuidWithHttpInfo(uuid, updateEnvByApplicationUuidRequest,);
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
  /// Update multiple envs by application UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [UpdateEnvsByApplicationUuidRequest] updateEnvsByApplicationUuidRequest (required):
  ///   Bulk envs updated.
  Future<Response> updateEnvsByApplicationUuidWithHttpInfo(String uuid, UpdateEnvsByApplicationUuidRequest updateEnvsByApplicationUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/envs/bulk'
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
  /// Update multiple envs by application UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [UpdateEnvsByApplicationUuidRequest] updateEnvsByApplicationUuidRequest (required):
  ///   Bulk envs updated.
  Future<List<EnvironmentVariable>?> updateEnvsByApplicationUuid(String uuid, UpdateEnvsByApplicationUuidRequest updateEnvsByApplicationUuidRequest,) async {
    final response = await updateEnvsByApplicationUuidWithHttpInfo(uuid, updateEnvsByApplicationUuidRequest,);
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

  /// Update Preview Domains
  ///
  /// Replace domains for a preview deployment. Use domains for regular applications or docker_compose_domains for Docker Compose applications. Ports are stored as internal overrides while public domains remain portless.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [int] pullRequestId (required):
  ///
  /// * [UpdatePreviewDomainsByPullRequestIdRequest] updatePreviewDomainsByPullRequestIdRequest (required):
  Future<Response> updatePreviewDomainsByPullRequestIdWithHttpInfo(String uuid, int pullRequestId, UpdatePreviewDomainsByPullRequestIdRequest updatePreviewDomainsByPullRequestIdRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/previews/{pull_request_id}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{pull_request_id}', pullRequestId.toString());

    // ignore: prefer_final_locals
    Object? postBody = updatePreviewDomainsByPullRequestIdRequest;

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

  /// Update Preview Domains
  ///
  /// Replace domains for a preview deployment. Use domains for regular applications or docker_compose_domains for Docker Compose applications. Ports are stored as internal overrides while public domains remain portless.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [int] pullRequestId (required):
  ///
  /// * [UpdatePreviewDomainsByPullRequestIdRequest] updatePreviewDomainsByPullRequestIdRequest (required):
  Future<void> updatePreviewDomainsByPullRequestId(String uuid, int pullRequestId, UpdatePreviewDomainsByPullRequestIdRequest updatePreviewDomainsByPullRequestIdRequest,) async {
    final response = await updatePreviewDomainsByPullRequestIdWithHttpInfo(uuid, pullRequestId, updatePreviewDomainsByPullRequestIdRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update Storage
  ///
  /// Update a persistent storage or file storage by application UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [UpdateStorageByApplicationUuidRequest] updateStorageByApplicationUuidRequest (required):
  ///   Storage updated. For read-only storages (from docker-compose or services), only is_preview_suffix_enabled can be updated.
  Future<Response> updateStorageByApplicationUuidWithHttpInfo(String uuid, UpdateStorageByApplicationUuidRequest updateStorageByApplicationUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/storages'
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
  /// Update a persistent storage or file storage by application UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [UpdateStorageByApplicationUuidRequest] updateStorageByApplicationUuidRequest (required):
  ///   Storage updated. For read-only storages (from docker-compose or services), only is_preview_suffix_enabled can be updated.
  Future<Map<String, Object>?> updateStorageByApplicationUuid(String uuid, UpdateStorageByApplicationUuidRequest updateStorageByApplicationUuidRequest,) async {
    final response = await updateStorageByApplicationUuidWithHttpInfo(uuid, updateStorageByApplicationUuidRequest,);
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
