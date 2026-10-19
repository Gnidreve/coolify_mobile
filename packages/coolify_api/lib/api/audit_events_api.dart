//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AuditEventsApi {
  AuditEventsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List
  ///
  /// List audit events of the team. Only team admins and owners can view audit events. Actor e-mail, token, metadata, changes, IP address, and user agent are returned only for tokens with the read:sensitive or root permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] perPage:
  ///   Items per page.
  ///
  /// * [int] page:
  ///   Page number.
  ///
  /// * [String] search:
  ///   Search text.
  ///
  /// * [String] action:
  ///   Filter by action. Use all for every action.
  ///
  /// * [String] source_:
  ///   Filter by source.
  Future<Response> listAuditEventsWithHttpInfo({ int? perPage, int? page, String? search, String? action, String? source_, }) async {
    // ignore: prefer_const_declarations
    final path = r'/audit-events';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (action != null) {
      queryParams.addAll(_queryParams('', 'action', action));
    }
    if (source_ != null) {
      queryParams.addAll(_queryParams('', 'source', source_));
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
  /// List audit events of the team. Only team admins and owners can view audit events. Actor e-mail, token, metadata, changes, IP address, and user agent are returned only for tokens with the read:sensitive or root permission.
  ///
  /// Parameters:
  ///
  /// * [int] perPage:
  ///   Items per page.
  ///
  /// * [int] page:
  ///   Page number.
  ///
  /// * [String] search:
  ///   Search text.
  ///
  /// * [String] action:
  ///   Filter by action. Use all for every action.
  ///
  /// * [String] source_:
  ///   Filter by source.
  Future<ListAuditEvents200Response?> listAuditEvents({ int? perPage, int? page, String? search, String? action, String? source_, }) async {
    final response = await listAuditEventsWithHttpInfo( perPage: perPage, page: page, search: search, action: action, source_: source_, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListAuditEvents200Response',) as ListAuditEvents200Response;
    
    }
    return null;
  }
}
