//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListGitlabApps200ResponseInner {
  /// Returns a new [ListGitlabApps200ResponseInner] instance.
  ListGitlabApps200ResponseInner({
    this.id,
    this.uuid,
    this.name,
    this.apiUrl,
    this.htmlUrl,
    this.customUser,
    this.customPort,
    this.clientId,
    this.groupName,
    this.redirectUri,
    this.isSystemWide,
    this.isPublic,
    this.teamId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uuid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? apiUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? htmlUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? customUser;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? customPort;

  String? clientId;

  String? groupName;

  String? redirectUri;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSystemWide;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPublic;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? teamId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListGitlabApps200ResponseInner &&
    other.id == id &&
    other.uuid == uuid &&
    other.name == name &&
    other.apiUrl == apiUrl &&
    other.htmlUrl == htmlUrl &&
    other.customUser == customUser &&
    other.customPort == customPort &&
    other.clientId == clientId &&
    other.groupName == groupName &&
    other.redirectUri == redirectUri &&
    other.isSystemWide == isSystemWide &&
    other.isPublic == isPublic &&
    other.teamId == teamId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (uuid == null ? 0 : uuid!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (apiUrl == null ? 0 : apiUrl!.hashCode) +
    (htmlUrl == null ? 0 : htmlUrl!.hashCode) +
    (customUser == null ? 0 : customUser!.hashCode) +
    (customPort == null ? 0 : customPort!.hashCode) +
    (clientId == null ? 0 : clientId!.hashCode) +
    (groupName == null ? 0 : groupName!.hashCode) +
    (redirectUri == null ? 0 : redirectUri!.hashCode) +
    (isSystemWide == null ? 0 : isSystemWide!.hashCode) +
    (isPublic == null ? 0 : isPublic!.hashCode) +
    (teamId == null ? 0 : teamId!.hashCode);

  @override
  String toString() => 'ListGitlabApps200ResponseInner[id=$id, uuid=$uuid, name=$name, apiUrl=$apiUrl, htmlUrl=$htmlUrl, customUser=$customUser, customPort=$customPort, clientId=$clientId, groupName=$groupName, redirectUri=$redirectUri, isSystemWide=$isSystemWide, isPublic=$isPublic, teamId=$teamId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.uuid != null) {
      json[r'uuid'] = this.uuid;
    } else {
      json[r'uuid'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.apiUrl != null) {
      json[r'api_url'] = this.apiUrl;
    } else {
      json[r'api_url'] = null;
    }
    if (this.htmlUrl != null) {
      json[r'html_url'] = this.htmlUrl;
    } else {
      json[r'html_url'] = null;
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
    if (this.clientId != null) {
      json[r'client_id'] = this.clientId;
    } else {
      json[r'client_id'] = null;
    }
    if (this.groupName != null) {
      json[r'group_name'] = this.groupName;
    } else {
      json[r'group_name'] = null;
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
    if (this.isPublic != null) {
      json[r'is_public'] = this.isPublic;
    } else {
      json[r'is_public'] = null;
    }
    if (this.teamId != null) {
      json[r'team_id'] = this.teamId;
    } else {
      json[r'team_id'] = null;
    }
    return json;
  }

  /// Returns a new [ListGitlabApps200ResponseInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListGitlabApps200ResponseInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListGitlabApps200ResponseInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListGitlabApps200ResponseInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListGitlabApps200ResponseInner(
        id: mapValueOfType<int>(json, r'id'),
        uuid: mapValueOfType<String>(json, r'uuid'),
        name: mapValueOfType<String>(json, r'name'),
        apiUrl: mapValueOfType<String>(json, r'api_url'),
        htmlUrl: mapValueOfType<String>(json, r'html_url'),
        customUser: mapValueOfType<String>(json, r'custom_user'),
        customPort: mapValueOfType<int>(json, r'custom_port'),
        clientId: mapValueOfType<String>(json, r'client_id'),
        groupName: mapValueOfType<String>(json, r'group_name'),
        redirectUri: mapValueOfType<String>(json, r'redirect_uri'),
        isSystemWide: mapValueOfType<bool>(json, r'is_system_wide'),
        isPublic: mapValueOfType<bool>(json, r'is_public'),
        teamId: mapValueOfType<int>(json, r'team_id'),
      );
    }
    return null;
  }

  static List<ListGitlabApps200ResponseInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListGitlabApps200ResponseInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListGitlabApps200ResponseInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListGitlabApps200ResponseInner> mapFromJson(dynamic json) {
    final map = <String, ListGitlabApps200ResponseInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListGitlabApps200ResponseInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListGitlabApps200ResponseInner-objects as value to a dart map
  static Map<String, List<ListGitlabApps200ResponseInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListGitlabApps200ResponseInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListGitlabApps200ResponseInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

