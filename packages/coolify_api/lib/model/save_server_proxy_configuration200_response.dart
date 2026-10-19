//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SaveServerProxyConfiguration200Response {
  /// Returns a new [SaveServerProxyConfiguration200Response] instance.
  SaveServerProxyConfiguration200Response({
    this.message,
    this.proxyType,
    this.status,
    this.redirectEnabled,
    this.redirectUrl,
    this.generateExactLabels,
    this.configuration,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  Object? proxyType;

  Object? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? redirectEnabled;

  Object? redirectUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? generateExactLabels;

  Object? configuration;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SaveServerProxyConfiguration200Response &&
    other.message == message &&
    other.proxyType == proxyType &&
    other.status == status &&
    other.redirectEnabled == redirectEnabled &&
    other.redirectUrl == redirectUrl &&
    other.generateExactLabels == generateExactLabels &&
    other.configuration == configuration;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (message == null ? 0 : message!.hashCode) +
    (proxyType == null ? 0 : proxyType!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (redirectEnabled == null ? 0 : redirectEnabled!.hashCode) +
    (redirectUrl == null ? 0 : redirectUrl!.hashCode) +
    (generateExactLabels == null ? 0 : generateExactLabels!.hashCode) +
    (configuration == null ? 0 : configuration!.hashCode);

  @override
  String toString() => 'SaveServerProxyConfiguration200Response[message=$message, proxyType=$proxyType, status=$status, redirectEnabled=$redirectEnabled, redirectUrl=$redirectUrl, generateExactLabels=$generateExactLabels, configuration=$configuration]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.proxyType != null) {
      json[r'proxy_type'] = this.proxyType;
    } else {
      json[r'proxy_type'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.redirectEnabled != null) {
      json[r'redirect_enabled'] = this.redirectEnabled;
    } else {
      json[r'redirect_enabled'] = null;
    }
    if (this.redirectUrl != null) {
      json[r'redirect_url'] = this.redirectUrl;
    } else {
      json[r'redirect_url'] = null;
    }
    if (this.generateExactLabels != null) {
      json[r'generate_exact_labels'] = this.generateExactLabels;
    } else {
      json[r'generate_exact_labels'] = null;
    }
    if (this.configuration != null) {
      json[r'configuration'] = this.configuration;
    } else {
      json[r'configuration'] = null;
    }
    return json;
  }

  /// Returns a new [SaveServerProxyConfiguration200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SaveServerProxyConfiguration200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SaveServerProxyConfiguration200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SaveServerProxyConfiguration200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SaveServerProxyConfiguration200Response(
        message: mapValueOfType<String>(json, r'message'),
        proxyType: mapValueOfType<Object>(json, r'proxy_type'),
        status: mapValueOfType<Object>(json, r'status'),
        redirectEnabled: mapValueOfType<bool>(json, r'redirect_enabled'),
        redirectUrl: mapValueOfType<Object>(json, r'redirect_url'),
        generateExactLabels: mapValueOfType<bool>(json, r'generate_exact_labels'),
        configuration: mapValueOfType<Object>(json, r'configuration'),
      );
    }
    return null;
  }

  static List<SaveServerProxyConfiguration200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SaveServerProxyConfiguration200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SaveServerProxyConfiguration200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SaveServerProxyConfiguration200Response> mapFromJson(dynamic json) {
    final map = <String, SaveServerProxyConfiguration200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SaveServerProxyConfiguration200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SaveServerProxyConfiguration200Response-objects as value to a dart map
  static Map<String, List<SaveServerProxyConfiguration200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SaveServerProxyConfiguration200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SaveServerProxyConfiguration200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

