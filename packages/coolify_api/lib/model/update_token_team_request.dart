//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateTokenTeamRequest {
  /// Returns a new [UpdateTokenTeamRequest] instance.
  UpdateTokenTeamRequest({
    required this.isBuildServerFallbackEnabled,
  });

  /// Whether deployments can fall back to the deployment server when no usable dedicated build server is available.
  bool isBuildServerFallbackEnabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateTokenTeamRequest &&
    other.isBuildServerFallbackEnabled == isBuildServerFallbackEnabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (isBuildServerFallbackEnabled.hashCode);

  @override
  String toString() => 'UpdateTokenTeamRequest[isBuildServerFallbackEnabled=$isBuildServerFallbackEnabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'is_build_server_fallback_enabled'] = this.isBuildServerFallbackEnabled;
    return json;
  }

  /// Returns a new [UpdateTokenTeamRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateTokenTeamRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateTokenTeamRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateTokenTeamRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateTokenTeamRequest(
        isBuildServerFallbackEnabled: mapValueOfType<bool>(json, r'is_build_server_fallback_enabled')!,
      );
    }
    return null;
  }

  static List<UpdateTokenTeamRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateTokenTeamRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateTokenTeamRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateTokenTeamRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateTokenTeamRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateTokenTeamRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateTokenTeamRequest-objects as value to a dart map
  static Map<String, List<UpdateTokenTeamRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateTokenTeamRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateTokenTeamRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'is_build_server_fallback_enabled',
  };
}

