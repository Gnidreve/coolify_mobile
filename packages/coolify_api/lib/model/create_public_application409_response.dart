//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreatePublicApplication409Response {
  /// Returns a new [CreatePublicApplication409Response] instance.
  CreatePublicApplication409Response({
    this.message,
    this.warning,
    this.conflicts = const [],
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
  String? warning;

  List<CreatePublicApplication409ResponseConflictsInner> conflicts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreatePublicApplication409Response &&
    other.message == message &&
    other.warning == warning &&
    _deepEquality.equals(other.conflicts, conflicts);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (message == null ? 0 : message!.hashCode) +
    (warning == null ? 0 : warning!.hashCode) +
    (conflicts.hashCode);

  @override
  String toString() => 'CreatePublicApplication409Response[message=$message, warning=$warning, conflicts=$conflicts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.warning != null) {
      json[r'warning'] = this.warning;
    } else {
      json[r'warning'] = null;
    }
      json[r'conflicts'] = this.conflicts;
    return json;
  }

  /// Returns a new [CreatePublicApplication409Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreatePublicApplication409Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreatePublicApplication409Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreatePublicApplication409Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreatePublicApplication409Response(
        message: mapValueOfType<String>(json, r'message'),
        warning: mapValueOfType<String>(json, r'warning'),
        conflicts: CreatePublicApplication409ResponseConflictsInner.listFromJson(json[r'conflicts']),
      );
    }
    return null;
  }

  static List<CreatePublicApplication409Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePublicApplication409Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePublicApplication409Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreatePublicApplication409Response> mapFromJson(dynamic json) {
    final map = <String, CreatePublicApplication409Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreatePublicApplication409Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreatePublicApplication409Response-objects as value to a dart map
  static Map<String, List<CreatePublicApplication409Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreatePublicApplication409Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreatePublicApplication409Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

