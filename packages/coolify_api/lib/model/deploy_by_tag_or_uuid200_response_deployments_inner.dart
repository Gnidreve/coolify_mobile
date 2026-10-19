//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeployByTagOrUuid200ResponseDeploymentsInner {
  /// Returns a new [DeployByTagOrUuid200ResponseDeploymentsInner] instance.
  DeployByTagOrUuid200ResponseDeploymentsInner({
    this.message,
    this.resourceUuid,
    this.deploymentUuid,
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
  String? resourceUuid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deploymentUuid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeployByTagOrUuid200ResponseDeploymentsInner &&
    other.message == message &&
    other.resourceUuid == resourceUuid &&
    other.deploymentUuid == deploymentUuid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (message == null ? 0 : message!.hashCode) +
    (resourceUuid == null ? 0 : resourceUuid!.hashCode) +
    (deploymentUuid == null ? 0 : deploymentUuid!.hashCode);

  @override
  String toString() => 'DeployByTagOrUuid200ResponseDeploymentsInner[message=$message, resourceUuid=$resourceUuid, deploymentUuid=$deploymentUuid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.resourceUuid != null) {
      json[r'resource_uuid'] = this.resourceUuid;
    } else {
      json[r'resource_uuid'] = null;
    }
    if (this.deploymentUuid != null) {
      json[r'deployment_uuid'] = this.deploymentUuid;
    } else {
      json[r'deployment_uuid'] = null;
    }
    return json;
  }

  /// Returns a new [DeployByTagOrUuid200ResponseDeploymentsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeployByTagOrUuid200ResponseDeploymentsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeployByTagOrUuid200ResponseDeploymentsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeployByTagOrUuid200ResponseDeploymentsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeployByTagOrUuid200ResponseDeploymentsInner(
        message: mapValueOfType<String>(json, r'message'),
        resourceUuid: mapValueOfType<String>(json, r'resource_uuid'),
        deploymentUuid: mapValueOfType<String>(json, r'deployment_uuid'),
      );
    }
    return null;
  }

  static List<DeployByTagOrUuid200ResponseDeploymentsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeployByTagOrUuid200ResponseDeploymentsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeployByTagOrUuid200ResponseDeploymentsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeployByTagOrUuid200ResponseDeploymentsInner> mapFromJson(dynamic json) {
    final map = <String, DeployByTagOrUuid200ResponseDeploymentsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeployByTagOrUuid200ResponseDeploymentsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeployByTagOrUuid200ResponseDeploymentsInner-objects as value to a dart map
  static Map<String, List<DeployByTagOrUuid200ResponseDeploymentsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeployByTagOrUuid200ResponseDeploymentsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeployByTagOrUuid200ResponseDeploymentsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

