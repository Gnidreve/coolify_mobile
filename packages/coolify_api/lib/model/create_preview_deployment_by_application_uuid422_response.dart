//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreatePreviewDeploymentByApplicationUuid422Response {
  /// Returns a new [CreatePreviewDeploymentByApplicationUuid422Response] instance.
  CreatePreviewDeploymentByApplicationUuid422Response({
    this.message,
    this.errors = const {},
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  Map<String, Object> errors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreatePreviewDeploymentByApplicationUuid422Response &&
    other.message == message &&
    _deepEquality.equals(other.errors, errors);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (message == null ? 0 : message!.hashCode) +
    (errors.hashCode);

  @override
  String toString() => 'CreatePreviewDeploymentByApplicationUuid422Response[message=$message, errors=$errors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
      json[r'errors'] = this.errors;
    return json;
  }

  /// Returns a new [CreatePreviewDeploymentByApplicationUuid422Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreatePreviewDeploymentByApplicationUuid422Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreatePreviewDeploymentByApplicationUuid422Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreatePreviewDeploymentByApplicationUuid422Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreatePreviewDeploymentByApplicationUuid422Response(
        message: mapValueOfType<String>(json, r'message'),
        errors: mapCastOfType<String, Object>(json, r'errors') ?? const {},
      );
    }
    return null;
  }

  static List<CreatePreviewDeploymentByApplicationUuid422Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePreviewDeploymentByApplicationUuid422Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePreviewDeploymentByApplicationUuid422Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreatePreviewDeploymentByApplicationUuid422Response> mapFromJson(dynamic json) {
    final map = <String, CreatePreviewDeploymentByApplicationUuid422Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreatePreviewDeploymentByApplicationUuid422Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreatePreviewDeploymentByApplicationUuid422Response-objects as value to a dart map
  static Map<String, List<CreatePreviewDeploymentByApplicationUuid422Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreatePreviewDeploymentByApplicationUuid422Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreatePreviewDeploymentByApplicationUuid422Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

