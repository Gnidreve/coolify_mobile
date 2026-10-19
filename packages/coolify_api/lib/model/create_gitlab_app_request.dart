//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateGitlabAppRequest {
  /// Returns a new [CreateGitlabAppRequest] instance.
  CreateGitlabAppRequest({
    required this.name,
    required this.htmlUrl,
    this.apiUrl,
    this.customUser,
    this.customPort,
    this.groupName,
    this.clientId,
    this.clientSecret,
    this.webhookToken,
    this.redirectUri,
    this.isSystemWide,
  });

  /// Name of the GitLab app.
  String name;

  /// GitLab instance URL (e.g., https://gitlab.com).
  String htmlUrl;

  /// GitLab API URL (defaults to {html_url}/api/v4).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? apiUrl;

  /// Custom user for SSH access (default: git).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? customUser;

  /// Custom port for SSH access (default: 22).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? customPort;

  /// Optional comma-separated group names to filter repositories.
  String? groupName;

  /// GitLab OAuth Application ID.
  String? clientId;

  /// GitLab OAuth Application Secret.
  String? clientSecret;

  /// Webhook secret token (auto-generated when omitted).
  String? webhookToken;

  /// OAuth redirect URI registered in GitLab.
  String? redirectUri;

  /// Is this app system-wide (non-cloud instances only).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSystemWide;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateGitlabAppRequest &&
    other.name == name &&
    other.htmlUrl == htmlUrl &&
    other.apiUrl == apiUrl &&
    other.customUser == customUser &&
    other.customPort == customPort &&
    other.groupName == groupName &&
    other.clientId == clientId &&
    other.clientSecret == clientSecret &&
    other.webhookToken == webhookToken &&
    other.redirectUri == redirectUri &&
    other.isSystemWide == isSystemWide;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (htmlUrl.hashCode) +
    (apiUrl == null ? 0 : apiUrl!.hashCode) +
    (customUser == null ? 0 : customUser!.hashCode) +
    (customPort == null ? 0 : customPort!.hashCode) +
    (groupName == null ? 0 : groupName!.hashCode) +
    (clientId == null ? 0 : clientId!.hashCode) +
    (clientSecret == null ? 0 : clientSecret!.hashCode) +
    (webhookToken == null ? 0 : webhookToken!.hashCode) +
    (redirectUri == null ? 0 : redirectUri!.hashCode) +
    (isSystemWide == null ? 0 : isSystemWide!.hashCode);

  @override
  String toString() => 'CreateGitlabAppRequest[name=$name, htmlUrl=$htmlUrl, apiUrl=$apiUrl, customUser=$customUser, customPort=$customPort, groupName=$groupName, clientId=$clientId, clientSecret=$clientSecret, webhookToken=$webhookToken, redirectUri=$redirectUri, isSystemWide=$isSystemWide]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'html_url'] = this.htmlUrl;
    if (this.apiUrl != null) {
      json[r'api_url'] = this.apiUrl;
    } else {
      json[r'api_url'] = null;
    }
    if (this.customUser != null) {
      json[r'custom_user'] = this.customUser;
    } else {
      json[r'custom_user'] = null;
    }
    if (this.customPort != null) {
      json[r'custom_port'] = this.customPort;
    } else {
      json[r'custom_port'] = null;
    }
    if (this.groupName != null) {
      json[r'group_name'] = this.groupName;
    } else {
      json[r'group_name'] = null;
    }
    if (this.clientId != null) {
      json[r'client_id'] = this.clientId;
    } else {
      json[r'client_id'] = null;
    }
    if (this.clientSecret != null) {
      json[r'client_secret'] = this.clientSecret;
    } else {
      json[r'client_secret'] = null;
    }
    if (this.webhookToken != null) {
      json[r'webhook_token'] = this.webhookToken;
    } else {
      json[r'webhook_token'] = null;
    }
    if (this.redirectUri != null) {
      json[r'redirect_uri'] = this.redirectUri;
    } else {
      json[r'redirect_uri'] = null;
    }
    if (this.isSystemWide != null) {
      json[r'is_system_wide'] = this.isSystemWide;
    } else {
      json[r'is_system_wide'] = null;
    }
    return json;
  }

  /// Returns a new [CreateGitlabAppRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateGitlabAppRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateGitlabAppRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateGitlabAppRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateGitlabAppRequest(
        name: mapValueOfType<String>(json, r'name')!,
        htmlUrl: mapValueOfType<String>(json, r'html_url')!,
        apiUrl: mapValueOfType<String>(json, r'api_url'),
        customUser: mapValueOfType<String>(json, r'custom_user'),
        customPort: mapValueOfType<int>(json, r'custom_port'),
        groupName: mapValueOfType<String>(json, r'group_name'),
        clientId: mapValueOfType<String>(json, r'client_id'),
        clientSecret: mapValueOfType<String>(json, r'client_secret'),
        webhookToken: mapValueOfType<String>(json, r'webhook_token'),
        redirectUri: mapValueOfType<String>(json, r'redirect_uri'),
        isSystemWide: mapValueOfType<bool>(json, r'is_system_wide'),
      );
    }
    return null;
  }

  static List<CreateGitlabAppRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateGitlabAppRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateGitlabAppRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateGitlabAppRequest> mapFromJson(dynamic json) {
    final map = <String, CreateGitlabAppRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateGitlabAppRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateGitlabAppRequest-objects as value to a dart map
  static Map<String, List<CreateGitlabAppRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateGitlabAppRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateGitlabAppRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'html_url',
  };
}

