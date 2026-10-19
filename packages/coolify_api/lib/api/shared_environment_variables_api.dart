//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SharedEnvironmentVariablesApi {
  SharedEnvironmentVariablesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Environment Shared Env
  ///
  /// Create a shared environment variable for a project environment (type=environment).
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
  Future<Response> createEnvironmentSharedEnvWithHttpInfo(String uuid, String environmentNameOrUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{uuid}/environments/{environment_name_or_uuid}/envs'
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create Environment Shared Env
  ///
  /// Create a shared environment variable for a project environment (type=environment).
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Project UUID
  ///
  /// * [String] environmentNameOrUuid (required):
  ///   Environment name or UUID
  Future<void> createEnvironmentSharedEnv(String uuid, String environmentNameOrUuid,) async {
    final response = await createEnvironmentSharedEnvWithHttpInfo(uuid, environmentNameOrUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create Project Shared Env
  ///
  /// Create a shared environment variable for a project (type=project).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Project UUID
  Future<Response> createProjectSharedEnvWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{uuid}/envs'
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

  /// Create Project Shared Env
  ///
  /// Create a shared environment variable for a project (type=project).
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Project UUID
  Future<void> createProjectSharedEnv(String uuid,) async {
    final response = await createProjectSharedEnvWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create Server Shared Env
  ///
  /// Create a shared environment variable for a server (type=server).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  Future<Response> createServerSharedEnvWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}/envs'
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

  /// Create Server Shared Env
  ///
  /// Create a shared environment variable for a server (type=server).
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  Future<void> createServerSharedEnv(String uuid,) async {
    final response = await createServerSharedEnvWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create Team Shared Env
  ///
  /// Create a shared environment variable for the current team (type=team).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateTeamSharedEnvRequest] createTeamSharedEnvRequest (required):
  Future<Response> createTeamSharedEnvWithHttpInfo(CreateTeamSharedEnvRequest createTeamSharedEnvRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/team/envs';

    // ignore: prefer_final_locals
    Object? postBody = createTeamSharedEnvRequest;

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

  /// Create Team Shared Env
  ///
  /// Create a shared environment variable for the current team (type=team).
  ///
  /// Parameters:
  ///
  /// * [CreateTeamSharedEnvRequest] createTeamSharedEnvRequest (required):
  Future<void> createTeamSharedEnv(CreateTeamSharedEnvRequest createTeamSharedEnvRequest,) async {
    final response = await createTeamSharedEnvWithHttpInfo(createTeamSharedEnvRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete Environment Shared Env
  ///
  /// Delete an environment shared environment variable by id.
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
  /// * [int] envId (required):
  ///   Shared env id (integer).
  Future<Response> deleteEnvironmentSharedEnvWithHttpInfo(String uuid, String environmentNameOrUuid, int envId,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{uuid}/environments/{environment_name_or_uuid}/envs/{env_id}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{environment_name_or_uuid}', environmentNameOrUuid)
      .replaceAll('{env_id}', envId.toString());

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

  /// Delete Environment Shared Env
  ///
  /// Delete an environment shared environment variable by id.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Project UUID
  ///
  /// * [String] environmentNameOrUuid (required):
  ///   Environment name or UUID
  ///
  /// * [int] envId (required):
  ///   Shared env id (integer).
  Future<void> deleteEnvironmentSharedEnv(String uuid, String environmentNameOrUuid, int envId,) async {
    final response = await deleteEnvironmentSharedEnvWithHttpInfo(uuid, environmentNameOrUuid, envId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete Project Shared Env
  ///
  /// Delete a project shared environment variable by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Project UUID
  ///
  /// * [int] envId (required):
  ///   Shared env id (integer).
  Future<Response> deleteProjectSharedEnvWithHttpInfo(String uuid, int envId,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{uuid}/envs/{env_id}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{env_id}', envId.toString());

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

  /// Delete Project Shared Env
  ///
  /// Delete a project shared environment variable by id.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Project UUID
  ///
  /// * [int] envId (required):
  ///   Shared env id (integer).
  Future<void> deleteProjectSharedEnv(String uuid, int envId,) async {
    final response = await deleteProjectSharedEnvWithHttpInfo(uuid, envId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete Server Shared Env
  ///
  /// Delete a server shared environment variable by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  ///
  /// * [int] envId (required):
  ///   Shared env id (integer).
  Future<Response> deleteServerSharedEnvWithHttpInfo(String uuid, int envId,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}/envs/{env_id}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{env_id}', envId.toString());

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

  /// Delete Server Shared Env
  ///
  /// Delete a server shared environment variable by id.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  ///
  /// * [int] envId (required):
  ///   Shared env id (integer).
  Future<void> deleteServerSharedEnv(String uuid, int envId,) async {
    final response = await deleteServerSharedEnvWithHttpInfo(uuid, envId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete Team Shared Env
  ///
  /// Delete a team shared environment variable by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] envId (required):
  ///   Shared env id (integer).
  Future<Response> deleteTeamSharedEnvWithHttpInfo(int envId,) async {
    // ignore: prefer_const_declarations
    final path = r'/team/envs/{env_id}'
      .replaceAll('{env_id}', envId.toString());

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

  /// Delete Team Shared Env
  ///
  /// Delete a team shared environment variable by id.
  ///
  /// Parameters:
  ///
  /// * [int] envId (required):
  ///   Shared env id (integer).
  Future<void> deleteTeamSharedEnv(int envId,) async {
    final response = await deleteTeamSharedEnvWithHttpInfo(envId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List Environment Shared Envs
  ///
  /// List shared environment variables for a project environment (type=environment).
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
  Future<Response> listEnvironmentSharedEnvsWithHttpInfo(String uuid, String environmentNameOrUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{uuid}/environments/{environment_name_or_uuid}/envs'
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

  /// List Environment Shared Envs
  ///
  /// List shared environment variables for a project environment (type=environment).
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Project UUID
  ///
  /// * [String] environmentNameOrUuid (required):
  ///   Environment name or UUID
  Future<void> listEnvironmentSharedEnvs(String uuid, String environmentNameOrUuid,) async {
    final response = await listEnvironmentSharedEnvsWithHttpInfo(uuid, environmentNameOrUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List Project Shared Envs
  ///
  /// List shared environment variables for a project (type=project).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Project UUID
  Future<Response> listProjectSharedEnvsWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{uuid}/envs'
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

  /// List Project Shared Envs
  ///
  /// List shared environment variables for a project (type=project).
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Project UUID
  Future<void> listProjectSharedEnvs(String uuid,) async {
    final response = await listProjectSharedEnvsWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List Server Shared Envs
  ///
  /// List shared environment variables for a server (type=server).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  Future<Response> listServerSharedEnvsWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}/envs'
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

  /// List Server Shared Envs
  ///
  /// List shared environment variables for a server (type=server).
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  Future<void> listServerSharedEnvs(String uuid,) async {
    final response = await listServerSharedEnvsWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List Team Shared Envs
  ///
  /// List shared environment variables for the current team (type=team).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listTeamSharedEnvsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/team/envs';

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

  /// List Team Shared Envs
  ///
  /// List shared environment variables for the current team (type=team).
  Future<void> listTeamSharedEnvs() async {
    final response = await listTeamSharedEnvsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update Environment Shared Env
  ///
  /// Update an environment shared environment variable by id.
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
  /// * [int] envId (required):
  ///   Shared env id (integer).
  Future<Response> updateEnvironmentSharedEnvWithHttpInfo(String uuid, String environmentNameOrUuid, int envId,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{uuid}/environments/{environment_name_or_uuid}/envs/{env_id}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{environment_name_or_uuid}', environmentNameOrUuid)
      .replaceAll('{env_id}', envId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Update Environment Shared Env
  ///
  /// Update an environment shared environment variable by id.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Project UUID
  ///
  /// * [String] environmentNameOrUuid (required):
  ///   Environment name or UUID
  ///
  /// * [int] envId (required):
  ///   Shared env id (integer).
  Future<void> updateEnvironmentSharedEnv(String uuid, String environmentNameOrUuid, int envId,) async {
    final response = await updateEnvironmentSharedEnvWithHttpInfo(uuid, environmentNameOrUuid, envId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update Project Shared Env
  ///
  /// Update a project shared environment variable by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Project UUID
  ///
  /// * [int] envId (required):
  ///   Shared env id (integer).
  Future<Response> updateProjectSharedEnvWithHttpInfo(String uuid, int envId,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{uuid}/envs/{env_id}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{env_id}', envId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Update Project Shared Env
  ///
  /// Update a project shared environment variable by id.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Project UUID
  ///
  /// * [int] envId (required):
  ///   Shared env id (integer).
  Future<void> updateProjectSharedEnv(String uuid, int envId,) async {
    final response = await updateProjectSharedEnvWithHttpInfo(uuid, envId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update Server Shared Env
  ///
  /// Update a server shared environment variable by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  ///
  /// * [int] envId (required):
  ///   Shared env id (integer).
  Future<Response> updateServerSharedEnvWithHttpInfo(String uuid, int envId,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}/envs/{env_id}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{env_id}', envId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Update Server Shared Env
  ///
  /// Update a server shared environment variable by id.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  ///
  /// * [int] envId (required):
  ///   Shared env id (integer).
  Future<void> updateServerSharedEnv(String uuid, int envId,) async {
    final response = await updateServerSharedEnvWithHttpInfo(uuid, envId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update Team Shared Env
  ///
  /// Update a team shared environment variable by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] envId (required):
  ///   Shared env id (integer).
  Future<Response> updateTeamSharedEnvWithHttpInfo(int envId,) async {
    // ignore: prefer_const_declarations
    final path = r'/team/envs/{env_id}'
      .replaceAll('{env_id}', envId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Update Team Shared Env
  ///
  /// Update a team shared environment variable by id.
  ///
  /// Parameters:
  ///
  /// * [int] envId (required):
  ///   Shared env id (integer).
  Future<void> updateTeamSharedEnv(int envId,) async {
    final response = await updateTeamSharedEnvWithHttpInfo(envId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
