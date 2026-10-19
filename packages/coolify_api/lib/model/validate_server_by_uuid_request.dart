//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ValidateServerByUuidRequest {
  /// Returns a new [ValidateServerByUuidRequest] instance.
  ValidateServerByUuidRequest({
    this.install = false,
  });

  /// Install missing prerequisites and Docker, then start the proxy. This can restart the Docker daemon. Needs the deploy permission.
  bool install;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValidateServerByUuidRequest &&
    other.install == install;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (install.hashCode);

  @override
  String toString() => 'ValidateServerByUuidRequest[install=$install]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'install'] = this.install;
    return json;
  }

  /// Returns a new [ValidateServerByUuidRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ValidateServerByUuidRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ValidateServerByUuidRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ValidateServerByUuidRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ValidateServerByUuidRequest(
        install: mapValueOfType<bool>(json, r'install') ?? false,
      );
    }
    return null;
  }

  static List<ValidateServerByUuidRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidateServerByUuidRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidateServerByUuidRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ValidateServerByUuidRequest> mapFromJson(dynamic json) {
    final map = <String, ValidateServerByUuidRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ValidateServerByUuidRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ValidateServerByUuidRequest-objects as value to a dart map
  static Map<String, List<ValidateServerByUuidRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ValidateServerByUuidRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ValidateServerByUuidRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

