//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class NotificationsApi {
  NotificationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Discord notification settings
  ///
  /// Get the current team Discord notification settings. Encrypted secrets are only returned when the token has `read:sensitive` (or `root`) and the user is a team admin/owner.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCurrentTeamDiscordNotificationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/notifications/discord';

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

  /// Get Discord notification settings
  ///
  /// Get the current team Discord notification settings. Encrypted secrets are only returned when the token has `read:sensitive` (or `root`) and the user is a team admin/owner.
  Future<void> getCurrentTeamDiscordNotifications() async {
    final response = await getCurrentTeamDiscordNotificationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get email notification settings
  ///
  /// Get the current team email notification settings, including `smtp_ehlo_domain`, the hostname sent with SMTP EHLO. Encrypted secrets are only returned when the token has `read:sensitive` (or `root`) and the user is a team admin/owner.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCurrentTeamEmailNotificationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/notifications/email';

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

  /// Get email notification settings
  ///
  /// Get the current team email notification settings, including `smtp_ehlo_domain`, the hostname sent with SMTP EHLO. Encrypted secrets are only returned when the token has `read:sensitive` (or `root`) and the user is a team admin/owner.
  Future<void> getCurrentTeamEmailNotifications() async {
    final response = await getCurrentTeamEmailNotificationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Pushover notification settings
  ///
  /// Get the current team Pushover notification settings. Encrypted secrets are only returned when the token has `read:sensitive` (or `root`) and the user is a team admin/owner.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCurrentTeamPushoverNotificationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/notifications/pushover';

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

  /// Get Pushover notification settings
  ///
  /// Get the current team Pushover notification settings. Encrypted secrets are only returned when the token has `read:sensitive` (or `root`) and the user is a team admin/owner.
  Future<void> getCurrentTeamPushoverNotifications() async {
    final response = await getCurrentTeamPushoverNotificationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Slack notification settings
  ///
  /// Get the current team Slack notification settings. Encrypted secrets are only returned when the token has `read:sensitive` (or `root`) and the user is a team admin/owner.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCurrentTeamSlackNotificationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/notifications/slack';

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

  /// Get Slack notification settings
  ///
  /// Get the current team Slack notification settings. Encrypted secrets are only returned when the token has `read:sensitive` (or `root`) and the user is a team admin/owner.
  Future<void> getCurrentTeamSlackNotifications() async {
    final response = await getCurrentTeamSlackNotificationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Telegram notification settings
  ///
  /// Get the current team Telegram notification settings. Encrypted secrets are only returned when the token has `read:sensitive` (or `root`) and the user is a team admin/owner.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCurrentTeamTelegramNotificationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/notifications/telegram';

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

  /// Get Telegram notification settings
  ///
  /// Get the current team Telegram notification settings. Encrypted secrets are only returned when the token has `read:sensitive` (or `root`) and the user is a team admin/owner.
  Future<void> getCurrentTeamTelegramNotifications() async {
    final response = await getCurrentTeamTelegramNotificationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get webhook notification settings
  ///
  /// Get the current team webhook notification settings. Encrypted secrets are only returned when the token has `read:sensitive` (or `root`) and the user is a team admin/owner.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCurrentTeamWebhookNotificationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/notifications/webhook';

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

  /// Get webhook notification settings
  ///
  /// Get the current team webhook notification settings. Encrypted secrets are only returned when the token has `read:sensitive` (or `root`) and the user is a team admin/owner.
  Future<void> getCurrentTeamWebhookNotifications() async {
    final response = await getCurrentTeamWebhookNotificationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update Discord notification settings
  ///
  /// Update the current team Discord notification settings.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> updateCurrentTeamDiscordNotificationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/notifications/discord';

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

  /// Update Discord notification settings
  ///
  /// Update the current team Discord notification settings.
  Future<void> updateCurrentTeamDiscordNotifications() async {
    final response = await updateCurrentTeamDiscordNotificationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update email notification settings
  ///
  /// Update the current team email notification settings. Set `smtp_ehlo_domain` to a valid hostname to control the SMTP EHLO domain, or `null` to use the system default.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> updateCurrentTeamEmailNotificationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/notifications/email';

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

  /// Update email notification settings
  ///
  /// Update the current team email notification settings. Set `smtp_ehlo_domain` to a valid hostname to control the SMTP EHLO domain, or `null` to use the system default.
  Future<void> updateCurrentTeamEmailNotifications() async {
    final response = await updateCurrentTeamEmailNotificationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update Pushover notification settings
  ///
  /// Update the current team Pushover notification settings.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> updateCurrentTeamPushoverNotificationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/notifications/pushover';

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

  /// Update Pushover notification settings
  ///
  /// Update the current team Pushover notification settings.
  Future<void> updateCurrentTeamPushoverNotifications() async {
    final response = await updateCurrentTeamPushoverNotificationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update Slack notification settings
  ///
  /// Update the current team Slack notification settings.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> updateCurrentTeamSlackNotificationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/notifications/slack';

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

  /// Update Slack notification settings
  ///
  /// Update the current team Slack notification settings.
  Future<void> updateCurrentTeamSlackNotifications() async {
    final response = await updateCurrentTeamSlackNotificationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update Telegram notification settings
  ///
  /// Update the current team Telegram notification settings.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> updateCurrentTeamTelegramNotificationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/notifications/telegram';

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

  /// Update Telegram notification settings
  ///
  /// Update the current team Telegram notification settings.
  Future<void> updateCurrentTeamTelegramNotifications() async {
    final response = await updateCurrentTeamTelegramNotificationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update webhook notification settings
  ///
  /// Update the current team webhook notification settings.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> updateCurrentTeamWebhookNotificationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/notifications/webhook';

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

  /// Update webhook notification settings
  ///
  /// Update the current team webhook notification settings.
  Future<void> updateCurrentTeamWebhookNotifications() async {
    final response = await updateCurrentTeamWebhookNotificationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
