//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CloneApplicationByUuid201Response {
  /// Returns a new [CloneApplicationByUuid201Response] instance.
  CloneApplicationByUuid201Response({
    this.uuid,
    this.message,
  });

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
  String? message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CloneApplicationByUuid201Response &&
    other.uuid == uuid &&
    other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (uuid == null ? 0 : uuid!.hashCode) +
    (message == null ? 0 : message!.hashCode);

  @override
  String toString() => 'CloneApplicationByUuid201Response[uuid=$uuid, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.uuid != null) {
      json[r'uuid'] = this.uuid;
    } else {
      json[r'uuid'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    return json;
  }

  /// Returns a new [CloneApplicationByUuid201Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CloneApplicationByUuid201Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CloneApplicationByUuid201Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CloneApplicationByUuid201Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CloneApplicationByUuid201Response(
        uuid: mapValueOfType<String>(json, r'uuid'),
        message: mapValueOfType<String>(json, r'message'),
      );
    }
    return null;
  }

  static List<CloneApplicationByUuid201Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CloneApplicationByUuid201Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CloneApplicationByUuid201Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CloneApplicationByUuid201Response> mapFromJson(dynamic json) {
    final map = <String, CloneApplicationByUuid201Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CloneApplicationByUuid201Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CloneApplicationByUuid201Response-objects as value to a dart map
  static Map<String, List<CloneApplicationByUuid201Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CloneApplicationByUuid201Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CloneApplicationByUuid201Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

