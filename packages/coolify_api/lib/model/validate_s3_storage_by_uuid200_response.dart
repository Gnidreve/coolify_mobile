//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ValidateS3StorageByUuid200Response {
  /// Returns a new [ValidateS3StorageByUuid200Response] instance.
  ValidateS3StorageByUuid200Response({
    this.valid,
    this.message,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? valid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValidateS3StorageByUuid200Response &&
    other.valid == valid &&
    other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (valid == null ? 0 : valid!.hashCode) +
    (message == null ? 0 : message!.hashCode);

  @override
  String toString() => 'ValidateS3StorageByUuid200Response[valid=$valid, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.valid != null) {
      json[r'valid'] = this.valid;
    } else {
      json[r'valid'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    return json;
  }

  /// Returns a new [ValidateS3StorageByUuid200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ValidateS3StorageByUuid200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ValidateS3StorageByUuid200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ValidateS3StorageByUuid200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ValidateS3StorageByUuid200Response(
        valid: mapValueOfType<bool>(json, r'valid'),
        message: mapValueOfType<String>(json, r'message'),
      );
    }
    return null;
  }

  static List<ValidateS3StorageByUuid200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidateS3StorageByUuid200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidateS3StorageByUuid200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ValidateS3StorageByUuid200Response> mapFromJson(dynamic json) {
    final map = <String, ValidateS3StorageByUuid200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ValidateS3StorageByUuid200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ValidateS3StorageByUuid200Response-objects as value to a dart map
  static Map<String, List<ValidateS3StorageByUuid200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ValidateS3StorageByUuid200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ValidateS3StorageByUuid200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

