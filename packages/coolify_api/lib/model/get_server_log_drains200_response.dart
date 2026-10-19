//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetServerLogDrains200Response {
  /// Returns a new [GetServerLogDrains200Response] instance.
  GetServerLogDrains200Response({
    this.isLogdrainNewrelicEnabled,
    this.logdrainNewrelicLicenseKey,
    this.logdrainNewrelicBaseUri,
    this.isLogdrainAxiomEnabled,
    this.logdrainAxiomDatasetName,
    this.logdrainAxiomApiKey,
    this.isLogdrainCustomEnabled,
    this.logdrainCustomConfig,
    this.logdrainCustomConfigParser,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isLogdrainNewrelicEnabled;

  /// Only present with read:sensitive.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logdrainNewrelicLicenseKey;

  Object? logdrainNewrelicBaseUri;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isLogdrainAxiomEnabled;

  Object? logdrainAxiomDatasetName;

  /// Only present with read:sensitive.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logdrainAxiomApiKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isLogdrainCustomEnabled;

  /// Only present with read:sensitive.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logdrainCustomConfig;

  /// Only present with read:sensitive.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logdrainCustomConfigParser;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetServerLogDrains200Response &&
    other.isLogdrainNewrelicEnabled == isLogdrainNewrelicEnabled &&
    other.logdrainNewrelicLicenseKey == logdrainNewrelicLicenseKey &&
    other.logdrainNewrelicBaseUri == logdrainNewrelicBaseUri &&
    other.isLogdrainAxiomEnabled == isLogdrainAxiomEnabled &&
    other.logdrainAxiomDatasetName == logdrainAxiomDatasetName &&
    other.logdrainAxiomApiKey == logdrainAxiomApiKey &&
    other.isLogdrainCustomEnabled == isLogdrainCustomEnabled &&
    other.logdrainCustomConfig == logdrainCustomConfig &&
    other.logdrainCustomConfigParser == logdrainCustomConfigParser;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (isLogdrainNewrelicEnabled == null ? 0 : isLogdrainNewrelicEnabled!.hashCode) +
    (logdrainNewrelicLicenseKey == null ? 0 : logdrainNewrelicLicenseKey!.hashCode) +
    (logdrainNewrelicBaseUri == null ? 0 : logdrainNewrelicBaseUri!.hashCode) +
    (isLogdrainAxiomEnabled == null ? 0 : isLogdrainAxiomEnabled!.hashCode) +
    (logdrainAxiomDatasetName == null ? 0 : logdrainAxiomDatasetName!.hashCode) +
    (logdrainAxiomApiKey == null ? 0 : logdrainAxiomApiKey!.hashCode) +
    (isLogdrainCustomEnabled == null ? 0 : isLogdrainCustomEnabled!.hashCode) +
    (logdrainCustomConfig == null ? 0 : logdrainCustomConfig!.hashCode) +
    (logdrainCustomConfigParser == null ? 0 : logdrainCustomConfigParser!.hashCode);

  @override
  String toString() => 'GetServerLogDrains200Response[isLogdrainNewrelicEnabled=$isLogdrainNewrelicEnabled, logdrainNewrelicLicenseKey=$logdrainNewrelicLicenseKey, logdrainNewrelicBaseUri=$logdrainNewrelicBaseUri, isLogdrainAxiomEnabled=$isLogdrainAxiomEnabled, logdrainAxiomDatasetName=$logdrainAxiomDatasetName, logdrainAxiomApiKey=$logdrainAxiomApiKey, isLogdrainCustomEnabled=$isLogdrainCustomEnabled, logdrainCustomConfig=$logdrainCustomConfig, logdrainCustomConfigParser=$logdrainCustomConfigParser]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.isLogdrainNewrelicEnabled != null) {
      json[r'is_logdrain_newrelic_enabled'] = this.isLogdrainNewrelicEnabled;
    } else {
      json[r'is_logdrain_newrelic_enabled'] = null;
    }
    if (this.logdrainNewrelicLicenseKey != null) {
      json[r'logdrain_newrelic_license_key'] = this.logdrainNewrelicLicenseKey;
    } else {
      json[r'logdrain_newrelic_license_key'] = null;
    }
    if (this.logdrainNewrelicBaseUri != null) {
      json[r'logdrain_newrelic_base_uri'] = this.logdrainNewrelicBaseUri;
    } else {
      json[r'logdrain_newrelic_base_uri'] = null;
    }
    if (this.isLogdrainAxiomEnabled != null) {
      json[r'is_logdrain_axiom_enabled'] = this.isLogdrainAxiomEnabled;
    } else {
      json[r'is_logdrain_axiom_enabled'] = null;
    }
    if (this.logdrainAxiomDatasetName != null) {
      json[r'logdrain_axiom_dataset_name'] = this.logdrainAxiomDatasetName;
    } else {
      json[r'logdrain_axiom_dataset_name'] = null;
    }
    if (this.logdrainAxiomApiKey != null) {
      json[r'logdrain_axiom_api_key'] = this.logdrainAxiomApiKey;
    } else {
      json[r'logdrain_axiom_api_key'] = null;
    }
    if (this.isLogdrainCustomEnabled != null) {
      json[r'is_logdrain_custom_enabled'] = this.isLogdrainCustomEnabled;
    } else {
      json[r'is_logdrain_custom_enabled'] = null;
    }
    if (this.logdrainCustomConfig != null) {
      json[r'logdrain_custom_config'] = this.logdrainCustomConfig;
    } else {
      json[r'logdrain_custom_config'] = null;
    }
    if (this.logdrainCustomConfigParser != null) {
      json[r'logdrain_custom_config_parser'] = this.logdrainCustomConfigParser;
    } else {
      json[r'logdrain_custom_config_parser'] = null;
    }
    return json;
  }

  /// Returns a new [GetServerLogDrains200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetServerLogDrains200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetServerLogDrains200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetServerLogDrains200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetServerLogDrains200Response(
        isLogdrainNewrelicEnabled: mapValueOfType<bool>(json, r'is_logdrain_newrelic_enabled'),
        logdrainNewrelicLicenseKey: mapValueOfType<String>(json, r'logdrain_newrelic_license_key'),
        logdrainNewrelicBaseUri: mapValueOfType<Object>(json, r'logdrain_newrelic_base_uri'),
        isLogdrainAxiomEnabled: mapValueOfType<bool>(json, r'is_logdrain_axiom_enabled'),
        logdrainAxiomDatasetName: mapValueOfType<Object>(json, r'logdrain_axiom_dataset_name'),
        logdrainAxiomApiKey: mapValueOfType<String>(json, r'logdrain_axiom_api_key'),
        isLogdrainCustomEnabled: mapValueOfType<bool>(json, r'is_logdrain_custom_enabled'),
        logdrainCustomConfig: mapValueOfType<String>(json, r'logdrain_custom_config'),
        logdrainCustomConfigParser: mapValueOfType<String>(json, r'logdrain_custom_config_parser'),
      );
    }
    return null;
  }

  static List<GetServerLogDrains200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetServerLogDrains200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetServerLogDrains200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetServerLogDrains200Response> mapFromJson(dynamic json) {
    final map = <String, GetServerLogDrains200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetServerLogDrains200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetServerLogDrains200Response-objects as value to a dart map
  static Map<String, List<GetServerLogDrains200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetServerLogDrains200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetServerLogDrains200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

