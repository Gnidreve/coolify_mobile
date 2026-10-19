//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RunServerDockerCleanupRequest {
  /// Returns a new [RunServerDockerCleanupRequest] instance.
  RunServerDockerCleanupRequest({
    this.deleteUnusedVolumes,
    this.deleteUnusedNetworks,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deleteUnusedVolumes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deleteUnusedNetworks;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RunServerDockerCleanupRequest &&
    other.deleteUnusedVolumes == deleteUnusedVolumes &&
    other.deleteUnusedNetworks == deleteUnusedNetworks;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (deleteUnusedVolumes == null ? 0 : deleteUnusedVolumes!.hashCode) +
    (deleteUnusedNetworks == null ? 0 : deleteUnusedNetworks!.hashCode);

  @override
  String toString() => 'RunServerDockerCleanupRequest[deleteUnusedVolumes=$deleteUnusedVolumes, deleteUnusedNetworks=$deleteUnusedNetworks]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.deleteUnusedVolumes != null) {
      json[r'delete_unused_volumes'] = this.deleteUnusedVolumes;
    } else {
      json[r'delete_unused_volumes'] = null;
    }
    if (this.deleteUnusedNetworks != null) {
      json[r'delete_unused_networks'] = this.deleteUnusedNetworks;
    } else {
      json[r'delete_unused_networks'] = null;
    }
    return json;
  }

  /// Returns a new [RunServerDockerCleanupRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RunServerDockerCleanupRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RunServerDockerCleanupRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RunServerDockerCleanupRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RunServerDockerCleanupRequest(
        deleteUnusedVolumes: mapValueOfType<bool>(json, r'delete_unused_volumes'),
        deleteUnusedNetworks: mapValueOfType<bool>(json, r'delete_unused_networks'),
      );
    }
    return null;
  }

  static List<RunServerDockerCleanupRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RunServerDockerCleanupRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RunServerDockerCleanupRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RunServerDockerCleanupRequest> mapFromJson(dynamic json) {
    final map = <String, RunServerDockerCleanupRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RunServerDockerCleanupRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RunServerDockerCleanupRequest-objects as value to a dart map
  static Map<String, List<RunServerDockerCleanupRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RunServerDockerCleanupRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RunServerDockerCleanupRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

