//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MoveApplicationByUuid200Response {
  /// Returns a new [MoveApplicationByUuid200Response] instance.
  MoveApplicationByUuid200Response({
    this.message,
    this.uuid,
    this.projectUuid,
    this.environmentUuid,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

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
  String? projectUuid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? environmentUuid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MoveApplicationByUuid200Response &&
    other.message == message &&
    other.uuid == uuid &&
    other.projectUuid == projectUuid &&
    other.environmentUuid == environmentUuid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (message == null ? 0 : message!.hashCode) +
    (uuid == null ? 0 : uuid!.hashCode) +
    (projectUuid == null ? 0 : projectUuid!.hashCode) +
    (environmentUuid == null ? 0 : environmentUuid!.hashCode);

  @override
  String toString() => 'MoveApplicationByUuid200Response[message=$message, uuid=$uuid, projectUuid=$projectUuid, environmentUuid=$environmentUuid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.uuid != null) {
      json[r'uuid'] = this.uuid;
    } else {
      json[r'uuid'] = null;
    }
    if (this.projectUuid != null) {
      json[r'project_uuid'] = this.projectUuid;
    } else {
      json[r'project_uuid'] = null;
    }
    if (this.environmentUuid != null) {
      json[r'environment_uuid'] = this.environmentUuid;
    } else {
      json[r'environment_uuid'] = null;
    }
    return json;
  }

  /// Returns a new [MoveApplicationByUuid200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MoveApplicationByUuid200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MoveApplicationByUuid200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MoveApplicationByUuid200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MoveApplicationByUuid200Response(
        message: mapValueOfType<String>(json, r'message'),
        uuid: mapValueOfType<String>(json, r'uuid'),
        projectUuid: mapValueOfType<String>(json, r'project_uuid'),
        environmentUuid: mapValueOfType<String>(json, r'environment_uuid'),
      );
    }
    return null;
  }

  static List<MoveApplicationByUuid200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MoveApplicationByUuid200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MoveApplicationByUuid200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MoveApplicationByUuid200Response> mapFromJson(dynamic json) {
    final map = <String, MoveApplicationByUuid200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MoveApplicationByUuid200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MoveApplicationByUuid200Response-objects as value to a dart map
  static Map<String, List<MoveApplicationByUuid200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MoveApplicationByUuid200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MoveApplicationByUuid200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

