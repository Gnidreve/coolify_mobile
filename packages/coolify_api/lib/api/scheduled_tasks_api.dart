//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ScheduledTasksApi {
  ScheduledTasksApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Task
  ///
  /// Create a new scheduled task for an application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [CreateScheduledTaskByApplicationUuidRequest] createScheduledTaskByApplicationUuidRequest (required):
  ///   Scheduled task data
  Future<Response> createScheduledTaskByApplicationUuidWithHttpInfo(String uuid, CreateScheduledTaskByApplicationUuidRequest createScheduledTaskByApplicationUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/scheduled-tasks'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = createScheduledTaskByApplicationUuidRequest;

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

  /// Create Task
  ///
  /// Create a new scheduled task for an application.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [CreateScheduledTaskByApplicationUuidRequest] createScheduledTaskByApplicationUuidRequest (required):
  ///   Scheduled task data
  Future<ScheduledTask?> createScheduledTaskByApplicationUuid(String uuid, CreateScheduledTaskByApplicationUuidRequest createScheduledTaskByApplicationUuidRequest,) async {
    final response = await createScheduledTaskByApplicationUuidWithHttpInfo(uuid, createScheduledTaskByApplicationUuidRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScheduledTask',) as ScheduledTask;
    
    }
    return null;
  }

  /// Create Task
  ///
  /// Create a new scheduled task for a service.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [CreateScheduledTaskByApplicationUuidRequest] createScheduledTaskByApplicationUuidRequest (required):
  ///   Scheduled task data
  Future<Response> createScheduledTaskByServiceUuidWithHttpInfo(String uuid, CreateScheduledTaskByApplicationUuidRequest createScheduledTaskByApplicationUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/scheduled-tasks'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = createScheduledTaskByApplicationUuidRequest;

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

  /// Create Task
  ///
  /// Create a new scheduled task for a service.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [CreateScheduledTaskByApplicationUuidRequest] createScheduledTaskByApplicationUuidRequest (required):
  ///   Scheduled task data
  Future<ScheduledTask?> createScheduledTaskByServiceUuid(String uuid, CreateScheduledTaskByApplicationUuidRequest createScheduledTaskByApplicationUuidRequest,) async {
    final response = await createScheduledTaskByServiceUuidWithHttpInfo(uuid, createScheduledTaskByApplicationUuidRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScheduledTask',) as ScheduledTask;
    
    }
    return null;
  }

  /// Delete Task
  ///
  /// Delete a scheduled task for an application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [String] taskUuid (required):
  ///   UUID of the scheduled task.
  Future<Response> deleteScheduledTaskByApplicationUuidWithHttpInfo(String uuid, String taskUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/scheduled-tasks/{task_uuid}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{task_uuid}', taskUuid);

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

  /// Delete Task
  ///
  /// Delete a scheduled task for an application.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [String] taskUuid (required):
  ///   UUID of the scheduled task.
  Future<DeleteScheduledTaskByApplicationUuid200Response?> deleteScheduledTaskByApplicationUuid(String uuid, String taskUuid,) async {
    final response = await deleteScheduledTaskByApplicationUuidWithHttpInfo(uuid, taskUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteScheduledTaskByApplicationUuid200Response',) as DeleteScheduledTaskByApplicationUuid200Response;
    
    }
    return null;
  }

  /// Delete Task
  ///
  /// Delete a scheduled task for a service.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [String] taskUuid (required):
  ///   UUID of the scheduled task.
  Future<Response> deleteScheduledTaskByServiceUuidWithHttpInfo(String uuid, String taskUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/scheduled-tasks/{task_uuid}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{task_uuid}', taskUuid);

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

  /// Delete Task
  ///
  /// Delete a scheduled task for a service.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [String] taskUuid (required):
  ///   UUID of the scheduled task.
  Future<DeleteScheduledTaskByApplicationUuid200Response?> deleteScheduledTaskByServiceUuid(String uuid, String taskUuid,) async {
    final response = await deleteScheduledTaskByServiceUuidWithHttpInfo(uuid, taskUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteScheduledTaskByApplicationUuid200Response',) as DeleteScheduledTaskByApplicationUuid200Response;
    
    }
    return null;
  }

  /// Execute Task
  ///
  /// Queue immediate execution of a scheduled task for an application. Requires the deploy ability.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [String] taskUuid (required):
  ///   UUID of the scheduled task.
  Future<Response> executeScheduledTaskByApplicationUuidWithHttpInfo(String uuid, String taskUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/scheduled-tasks/{task_uuid}/execute'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{task_uuid}', taskUuid);

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

  /// Execute Task
  ///
  /// Queue immediate execution of a scheduled task for an application. Requires the deploy ability.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [String] taskUuid (required):
  ///   UUID of the scheduled task.
  Future<void> executeScheduledTaskByApplicationUuid(String uuid, String taskUuid,) async {
    final response = await executeScheduledTaskByApplicationUuidWithHttpInfo(uuid, taskUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Execute Task
  ///
  /// Queue immediate execution of a scheduled task for a service. Requires the deploy ability.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [String] taskUuid (required):
  ///   UUID of the scheduled task.
  Future<Response> executeScheduledTaskByServiceUuidWithHttpInfo(String uuid, String taskUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/scheduled-tasks/{task_uuid}/execute'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{task_uuid}', taskUuid);

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

  /// Execute Task
  ///
  /// Queue immediate execution of a scheduled task for a service. Requires the deploy ability.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [String] taskUuid (required):
  ///   UUID of the scheduled task.
  Future<void> executeScheduledTaskByServiceUuid(String uuid, String taskUuid,) async {
    final response = await executeScheduledTaskByServiceUuidWithHttpInfo(uuid, taskUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List Executions
  ///
  /// List all executions for a scheduled task on an application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [String] taskUuid (required):
  ///   UUID of the scheduled task.
  Future<Response> listScheduledTaskExecutionsByApplicationUuidWithHttpInfo(String uuid, String taskUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/scheduled-tasks/{task_uuid}/executions'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{task_uuid}', taskUuid);

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

  /// List Executions
  ///
  /// List all executions for a scheduled task on an application.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [String] taskUuid (required):
  ///   UUID of the scheduled task.
  Future<List<ScheduledTaskExecution>?> listScheduledTaskExecutionsByApplicationUuid(String uuid, String taskUuid,) async {
    final response = await listScheduledTaskExecutionsByApplicationUuidWithHttpInfo(uuid, taskUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ScheduledTaskExecution>') as List)
        .cast<ScheduledTaskExecution>()
        .toList(growable: false);

    }
    return null;
  }

  /// List Executions
  ///
  /// List all executions for a scheduled task on a service.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [String] taskUuid (required):
  ///   UUID of the scheduled task.
  Future<Response> listScheduledTaskExecutionsByServiceUuidWithHttpInfo(String uuid, String taskUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/scheduled-tasks/{task_uuid}/executions'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{task_uuid}', taskUuid);

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

  /// List Executions
  ///
  /// List all executions for a scheduled task on a service.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [String] taskUuid (required):
  ///   UUID of the scheduled task.
  Future<List<ScheduledTaskExecution>?> listScheduledTaskExecutionsByServiceUuid(String uuid, String taskUuid,) async {
    final response = await listScheduledTaskExecutionsByServiceUuidWithHttpInfo(uuid, taskUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ScheduledTaskExecution>') as List)
        .cast<ScheduledTaskExecution>()
        .toList(growable: false);

    }
    return null;
  }

  /// List Tasks
  ///
  /// List all scheduled tasks for an application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  Future<Response> listScheduledTasksByApplicationUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/scheduled-tasks'
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

  /// List Tasks
  ///
  /// List all scheduled tasks for an application.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  Future<List<ScheduledTask>?> listScheduledTasksByApplicationUuid(String uuid,) async {
    final response = await listScheduledTasksByApplicationUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ScheduledTask>') as List)
        .cast<ScheduledTask>()
        .toList(growable: false);

    }
    return null;
  }

  /// List Tasks
  ///
  /// List all scheduled tasks for a service.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  Future<Response> listScheduledTasksByServiceUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/scheduled-tasks'
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

  /// List Tasks
  ///
  /// List all scheduled tasks for a service.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  Future<List<ScheduledTask>?> listScheduledTasksByServiceUuid(String uuid,) async {
    final response = await listScheduledTasksByServiceUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ScheduledTask>') as List)
        .cast<ScheduledTask>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Task
  ///
  /// Update a scheduled task for an application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [String] taskUuid (required):
  ///   UUID of the scheduled task.
  ///
  /// * [UpdateScheduledTaskByApplicationUuidRequest] updateScheduledTaskByApplicationUuidRequest (required):
  ///   Scheduled task data
  Future<Response> updateScheduledTaskByApplicationUuidWithHttpInfo(String uuid, String taskUuid, UpdateScheduledTaskByApplicationUuidRequest updateScheduledTaskByApplicationUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/scheduled-tasks/{task_uuid}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{task_uuid}', taskUuid);

    // ignore: prefer_final_locals
    Object? postBody = updateScheduledTaskByApplicationUuidRequest;

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

  /// Update Task
  ///
  /// Update a scheduled task for an application.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the application.
  ///
  /// * [String] taskUuid (required):
  ///   UUID of the scheduled task.
  ///
  /// * [UpdateScheduledTaskByApplicationUuidRequest] updateScheduledTaskByApplicationUuidRequest (required):
  ///   Scheduled task data
  Future<ScheduledTask?> updateScheduledTaskByApplicationUuid(String uuid, String taskUuid, UpdateScheduledTaskByApplicationUuidRequest updateScheduledTaskByApplicationUuidRequest,) async {
    final response = await updateScheduledTaskByApplicationUuidWithHttpInfo(uuid, taskUuid, updateScheduledTaskByApplicationUuidRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScheduledTask',) as ScheduledTask;
    
    }
    return null;
  }

  /// Update Task
  ///
  /// Update a scheduled task for a service.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [String] taskUuid (required):
  ///   UUID of the scheduled task.
  ///
  /// * [UpdateScheduledTaskByApplicationUuidRequest] updateScheduledTaskByApplicationUuidRequest (required):
  ///   Scheduled task data
  Future<Response> updateScheduledTaskByServiceUuidWithHttpInfo(String uuid, String taskUuid, UpdateScheduledTaskByApplicationUuidRequest updateScheduledTaskByApplicationUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{uuid}/scheduled-tasks/{task_uuid}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{task_uuid}', taskUuid);

    // ignore: prefer_final_locals
    Object? postBody = updateScheduledTaskByApplicationUuidRequest;

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

  /// Update Task
  ///
  /// Update a scheduled task for a service.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the service.
  ///
  /// * [String] taskUuid (required):
  ///   UUID of the scheduled task.
  ///
  /// * [UpdateScheduledTaskByApplicationUuidRequest] updateScheduledTaskByApplicationUuidRequest (required):
  ///   Scheduled task data
  Future<ScheduledTask?> updateScheduledTaskByServiceUuid(String uuid, String taskUuid, UpdateScheduledTaskByApplicationUuidRequest updateScheduledTaskByApplicationUuidRequest,) async {
    final response = await updateScheduledTaskByServiceUuidWithHttpInfo(uuid, taskUuid, updateScheduledTaskByApplicationUuidRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScheduledTask',) as ScheduledTask;
    
    }
    return null;
  }
}
