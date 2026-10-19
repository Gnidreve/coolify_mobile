//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateEnvByApplicationUuidRequest {
  /// Returns a new [CreateEnvByApplicationUuidRequest] instance.
  CreateEnvByApplicationUuidRequest({
    this.key,
    this.value,
    this.isPreview,
    this.isLiteral,
    this.isMultiline,
    this.isShownOnce,
  });

  /// The key of the environment variable.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  /// The value of the environment variable.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  /// The flag to indicate if the environment variable is used in preview deployments.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPreview;

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
  bool operator ==(Object other) => identical(this, other) || other is CreateEnvByApplicationUuidRequest &&
    other.key == key &&
    other.value == value &&
    other.isPreview == isPreview &&
    other.isLiteral == isLiteral &&
    other.isMultiline == isMultiline &&
    other.isShownOnce == isShownOnce;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (key == null ? 0 : key!.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (isPreview == null ? 0 : isPreview!.hashCode) +
    (isLiteral == null ? 0 : isLiteral!.hashCode) +
    (isMultiline == null ? 0 : isMultiline!.hashCode) +
    (isShownOnce == null ? 0 : isShownOnce!.hashCode);

  @override
  String toString() => 'CreateEnvByApplicationUuidRequest[key=$key, value=$value, isPreview=$isPreview, isLiteral=$isLiteral, isMultiline=$isMultiline, isShownOnce=$isShownOnce]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    if (this.isPreview != null) {
      json[r'is_preview'] = this.isPreview;
    } else {
      json[r'is_preview'] = null;
    }
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

  /// Returns a new [CreateEnvByApplicationUuidRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateEnvByApplicationUuidRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateEnvByApplicationUuidRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateEnvByApplicationUuidRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateEnvByApplicationUuidRequest(
        key: mapValueOfType<String>(json, r'key'),
        value: mapValueOfType<String>(json, r'value'),
        isPreview: mapValueOfType<bool>(json, r'is_preview'),
        isLiteral: mapValueOfType<bool>(json, r'is_literal'),
        isMultiline: mapValueOfType<bool>(json, r'is_multiline'),
        isShownOnce: mapValueOfType<bool>(json, r'is_shown_once'),
      );
    }
    return null;
  }

  static List<CreateEnvByApplicationUuidRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateEnvByApplicationUuidRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateEnvByApplicationUuidRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateEnvByApplicationUuidRequest> mapFromJson(dynamic json) {
    final map = <String, CreateEnvByApplicationUuidRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateEnvByApplicationUuidRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateEnvByApplicationUuidRequest-objects as value to a dart map
  static Map<String, List<CreateEnvByApplicationUuidRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateEnvByApplicationUuidRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateEnvByApplicationUuidRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

