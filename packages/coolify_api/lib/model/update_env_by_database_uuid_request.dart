//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateEnvByDatabaseUuidRequest {
  /// Returns a new [UpdateEnvByDatabaseUuidRequest] instance.
  UpdateEnvByDatabaseUuidRequest({
    required this.key,
    required this.value,
    this.isLiteral,
    this.isMultiline,
    this.isShownOnce,
  });

  /// The key of the environment variable.
  String key;

  /// The value of the environment variable.
  String value;

  /// The flag to indicate if the environment variable is a literal, nothing espaced.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isLiteral;

  /// The flag to indicate if the environment variable is multiline.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isMultiline;

  /// If true, the saved value is hidden in the UI and API responses. MCP never returns environment variable values.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isShownOnce;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateEnvByDatabaseUuidRequest &&
    other.key == key &&
    other.value == value &&
    other.isLiteral == isLiteral &&
    other.isMultiline == isMultiline &&
    other.isShownOnce == isShownOnce;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (key.hashCode) +
    (value.hashCode) +
    (isLiteral == null ? 0 : isLiteral!.hashCode) +
    (isMultiline == null ? 0 : isMultiline!.hashCode) +
    (isShownOnce == null ? 0 : isShownOnce!.hashCode);

  @override
  String toString() => 'UpdateEnvByDatabaseUuidRequest[key=$key, value=$value, isLiteral=$isLiteral, isMultiline=$isMultiline, isShownOnce=$isShownOnce]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'key'] = this.key;
      json[r'value'] = this.value;
    if (this.isLiteral != null) {
      json[r'is_literal'] = this.isLiteral;
    } else {
      json[r'is_literal'] = null;
    }
    if (this.isMultiline != null) {
      json[r'is_multiline'] = this.isMultiline;
    } else {
      json[r'is_multiline'] = null;
    }
    if (this.isShownOnce != null) {
      json[r'is_shown_once'] = this.isShownOnce;
    } else {
      json[r'is_shown_once'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateEnvByDatabaseUuidRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateEnvByDatabaseUuidRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateEnvByDatabaseUuidRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateEnvByDatabaseUuidRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateEnvByDatabaseUuidRequest(
        key: mapValueOfType<String>(json, r'key')!,
        value: mapValueOfType<String>(json, r'value')!,
        isLiteral: mapValueOfType<bool>(json, r'is_literal'),
        isMultiline: mapValueOfType<bool>(json, r'is_multiline'),
        isShownOnce: mapValueOfType<bool>(json, r'is_shown_once'),
      );
    }
    return null;
  }

  static List<UpdateEnvByDatabaseUuidRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateEnvByDatabaseUuidRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateEnvByDatabaseUuidRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateEnvByDatabaseUuidRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateEnvByDatabaseUuidRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateEnvByDatabaseUuidRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateEnvByDatabaseUuidRequest-objects as value to a dart map
  static Map<String, List<UpdateEnvByDatabaseUuidRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateEnvByDatabaseUuidRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateEnvByDatabaseUuidRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'key',
    'value',
  };
}

