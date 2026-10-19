//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SaveServerProxyConfigurationRequest {
  /// Returns a new [SaveServerProxyConfigurationRequest] instance.
  SaveServerProxyConfigurationRequest({
    required this.configuration,
  });

  /// Proxy docker-compose YAML. Prefer base64 encoding for multi-line content.
  String configuration;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SaveServerProxyConfigurationRequest &&
    other.configuration == configuration;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (configuration.hashCode);

  @override
  String toString() => 'SaveServerProxyConfigurationRequest[configuration=$configuration]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'configuration'] = this.configuration;
    return json;
  }

  /// Returns a new [SaveServerProxyConfigurationRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SaveServerProxyConfigurationRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SaveServerProxyConfigurationRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SaveServerProxyConfigurationRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SaveServerProxyConfigurationRequest(
        configuration: mapValueOfType<String>(json, r'configuration')!,
      );
    }
    return null;
  }

  static List<SaveServerProxyConfigurationRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SaveServerProxyConfigurationRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SaveServerProxyConfigurationRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SaveServerProxyConfigurationRequest> mapFromJson(dynamic json) {
    final map = <String, SaveServerProxyConfigurationRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SaveServerProxyConfigurationRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SaveServerProxyConfigurationRequest-objects as value to a dart map
  static Map<String, List<SaveServerProxyConfigurationRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SaveServerProxyConfigurationRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SaveServerProxyConfigurationRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'configuration',
  };
}

