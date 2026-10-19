//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ProjectsApi {
  ProjectsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Environment
  ///
  /// Create environment in project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Project UUID
  ///
  /// * [CreateEnvironmentRequest] createEnvironmentRequest (required):
  ///   Environment created.
  Future<Response> createEnvironmentWithHttpInfo(String uuid, CreateEnvironmentRequest createEnvironmentRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{uuid}/environments'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = createEnvironmentRequest;

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

  /// Create Environment
  ///
  /// Create environment in project.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Project UUID
  ///
  /// * [CreateEnvironmentRequest] createEnvironmentRequest (required):
  ///   Environment created.
  Future<CreateEnvironment201Response?> createEnvironment(String uuid, CreateEnvironmentRequest createEnvironmentRequest,) async {
    final response = await createEnvironmentWithHttpInfo(uuid, createEnvironmentRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateEnvironment201Response',) as CreateEnvironment201Response;
    
    }
    return null;
  }

  /// Create
  ///
  /// Create Project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateProjectRequest] createProjectRequest (required):
  ///   Project created.
  Future<Response> createProjectWithHttpInfo(CreateProjectRequest createProjectRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects';

    // ignore: prefer_final_locals
    Object? postBody = createProjectRequest;

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

  /// Create
  ///
  /// Create Project.
  ///
  /// Parameters:
  ///
  /// * [CreateProjectRequest] createProjectRequest (required):
  ///   Project created.
  Future<CreateProject201Response?> createProject(CreateProjectRequest createProjectRequest,) async {
    final response = await createProjectWithHttpInfo(createProjectRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateProject201Response',) as CreateProject201Response;
    
    }
    return null;
  }

  /// Delete Environment
  ///
  /// Delete environment by name or UUID. Environment must be empty.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Project UUID
  ///
  /// * [String] environmentNameOrUuid (required):
  ///   Environment name or UUID
  Future<Response> deleteEnvironmentWithHttpInfo(String uuid, String environmentNameOrUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{uuid}/environments/{environment_name_or_uuid}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{environment_name_or_uuid}', environmentNameOrUuid);

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

  /// Delete Environment
  ///
  /// Delete environment by name or UUID. Environment must be empty.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Project UUID
  ///
  /// * [String] environmentNameOrUuid (required):
  ///   Environment name or UUID
  Future<DeleteEnvironment200Response?> deleteEnvironment(String uuid, String environmentNameOrUuid,) async {
    final response = await deleteEnvironmentWithHttpInfo(uuid, environmentNameOrUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteEnvironment200Response',) as DeleteEnvironment200Response;
    
    }
    return null;
  }

  /// Delete
  ///
  /// Delete project by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  Future<Response> deleteProjectByUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{uuid}'
      .replaceAll('{uuid}', uuid);

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

  /// Delete
  ///
  /// Delete project by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  Future<DeleteProjectByUuid200Response?> deleteProjectByUuid(String uuid,) async {
    final response = await deleteProjectByUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteProjectByUuid200Response',) as DeleteProjectByUuid200Response;
    
    }
    return null;
  }

  /// Environment
  ///
  /// Get environment by name or UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Project UUID
  ///
  /// * [String] environmentNameOrUuid (required):
  ///   Environment name or UUID
  Future<Response> getEnvironmentByNameOrUuidWithHttpInfo(String uuid, String environmentNameOrUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{uuid}/{environment_name_or_uuid}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{environment_name_or_uuid}', environmentNameOrUuid);

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

  /// Environment
  ///
  /// Get environment by name or UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Project UUID
  ///
  /// * [String] environmentNameOrUuid (required):
  ///   Environment name or UUID
  Future<Environment?> getEnvironmentByNameOrUuid(String uuid, String environmentNameOrUuid,) async {
    final response = await getEnvironmentByNameOrUuidWithHttpInfo(uuid, environmentNameOrUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Environment',) as Environment;
    
    }
    return null;
  }

  /// List Environments
  ///
  /// List all environments in a project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Project UUID
  Future<Response> getEnvironmentsWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{uuid}/environments'
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

  /// List Environments
  ///
  /// List all environments in a project.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Project UUID
  Future<List<Environment>?> getEnvironments(String uuid,) async {
    final response = await getEnvironmentsWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Environment>') as List)
        .cast<Environment>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get
  ///
  /// Get project by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Project UUID
  Future<Response> getProjectByUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{uuid}'
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
  /// Get project by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Project UUID
  Future<Project?> getProjectByUuid(String uuid,) async {
    final response = await getProjectByUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Project',) as Project;
    
    }
    return null;
  }

  /// List
  ///
  /// List projects.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listProjectsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/projects';

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
  /// List projects.
  Future<List<Project>?> listProjects() async {
    final response = await listProjectsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Project>') as List)
        .cast<Project>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Environment
  ///
  /// Update environment by name or UUID within a project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Project UUID
  ///
  /// * [String] environmentNameOrUuid (required):
  ///   Environment name or UUID
  ///
  /// * [UpdateEnvironmentRequest] updateEnvironmentRequest (required):
  ///   Environment fields to update.
  Future<Response> updateEnvironmentWithHttpInfo(String uuid, String environmentNameOrUuid, UpdateEnvironmentRequest updateEnvironmentRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{uuid}/environments/{environment_name_or_uuid}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{environment_name_or_uuid}', environmentNameOrUuid);

    // ignore: prefer_final_locals
    Object? postBody = updateEnvironmentRequest;

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

  /// Update Environment
  ///
  /// Update environment by name or UUID within a project.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Project UUID
  ///
  /// * [String] environmentNameOrUuid (required):
  ///   Environment name or UUID
  ///
  /// * [UpdateEnvironmentRequest] updateEnvironmentRequest (required):
  ///   Environment fields to update.
  Future<UpdateEnvironment200Response?> updateEnvironment(String uuid, String environmentNameOrUuid, UpdateEnvironmentRequest updateEnvironmentRequest,) async {
    final response = await updateEnvironmentWithHttpInfo(uuid, environmentNameOrUuid, updateEnvironmentRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UpdateEnvironment200Response',) as UpdateEnvironment200Response;
    
    }
    return null;
  }

  /// Update
  ///
  /// Update Project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the project.
  ///
  /// * [CreateProjectRequest] createProjectRequest (required):
  ///   Project updated.
  Future<Response> updateProjectByUuidWithHttpInfo(String uuid, CreateProjectRequest createProjectRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{uuid}'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = createProjectRequest;

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
  /// Update Project.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the project.
  ///
  /// * [CreateProjectRequest] createProjectRequest (required):
  ///   Project updated.
  Future<UpdateProjectByUuid201Response?> updateProjectByUuid(String uuid, CreateProjectRequest createProjectRequest,) async {
    final response = await updateProjectByUuidWithHttpInfo(uuid, createProjectRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UpdateProjectByUuid201Response',) as UpdateProjectByUuid201Response;
    
    }
    return null;
  }
}
