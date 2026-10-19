//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CancelDeploymentByUuid200Response {
  /// Returns a new [CancelDeploymentByUuid200Response] instance.
  CancelDeploymentByUuid200Response({
    this.message,
    this.deploymentUuid,
    this.status,
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
  String? deploymentUuid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CancelDeploymentByUuid200Response &&
    other.message == message &&
    other.deploymentUuid == deploymentUuid &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (message == null ? 0 : message!.hashCode) +
    (deploymentUuid == null ? 0 : deploymentUuid!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'CancelDeploymentByUuid200Response[message=$message, deploymentUuid=$deploymentUuid, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.deploymentUuid != null) {
      json[r'deployment_uuid'] = this.deploymentUuid;
    } else {
      json[r'deployment_uuid'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [CancelDeploymentByUuid200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CancelDeploymentByUuid200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CancelDeploymentByUuid200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CancelDeploymentByUuid200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CancelDeploymentByUuid200Response(
        message: mapValueOfType<String>(json, r'message'),
        deploymentUuid: mapValueOfType<String>(json, r'deployment_uuid'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<CancelDeploymentByUuid200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CancelDeploymentByUuid200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CancelDeploymentByUuid200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CancelDeploymentByUuid200Response> mapFromJson(dynamic json) {
    final map = <String, CancelDeploymentByUuid200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CancelDeploymentByUuid200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CancelDeploymentByUuid200Response-objects as value to a dart map
  static Map<String, List<CancelDeploymentByUuid200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CancelDeploymentByUuid200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CancelDeploymentByUuid200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

