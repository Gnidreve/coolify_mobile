//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetServerDockerCleanup200Response {
  /// Returns a new [GetServerDockerCleanup200Response] instance.
  GetServerDockerCleanup200Response({
    this.dockerCleanupFrequency,
    this.dockerCleanupThreshold,
    this.forceDockerCleanup,
    this.deleteUnusedVolumes,
    this.deleteUnusedNetworks,
    this.disableApplicationImageRetention,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dockerCleanupFrequency;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dockerCleanupThreshold;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? forceDockerCleanup;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deleteUnusedVolumes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deleteUnusedNetworks;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? disableApplicationImageRetention;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetServerDockerCleanup200Response &&
    other.dockerCleanupFrequency == dockerCleanupFrequency &&
    other.dockerCleanupThreshold == dockerCleanupThreshold &&
    other.forceDockerCleanup == forceDockerCleanup &&
    other.deleteUnusedVolumes == deleteUnusedVolumes &&
    other.deleteUnusedNetworks == deleteUnusedNetworks &&
    other.disableApplicationImageRetention == disableApplicationImageRetention;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dockerCleanupFrequency == null ? 0 : dockerCleanupFrequency!.hashCode) +
    (dockerCleanupThreshold == null ? 0 : dockerCleanupThreshold!.hashCode) +
    (forceDockerCleanup == null ? 0 : forceDockerCleanup!.hashCode) +
    (deleteUnusedVolumes == null ? 0 : deleteUnusedVolumes!.hashCode) +
    (deleteUnusedNetworks == null ? 0 : deleteUnusedNetworks!.hashCode) +
    (disableApplicationImageRetention == null ? 0 : disableApplicationImageRetention!.hashCode);

  @override
  String toString() => 'GetServerDockerCleanup200Response[dockerCleanupFrequency=$dockerCleanupFrequency, dockerCleanupThreshold=$dockerCleanupThreshold, forceDockerCleanup=$forceDockerCleanup, deleteUnusedVolumes=$deleteUnusedVolumes, deleteUnusedNetworks=$deleteUnusedNetworks, disableApplicationImageRetention=$disableApplicationImageRetention]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.dockerCleanupFrequency != null) {
      json[r'docker_cleanup_frequency'] = this.dockerCleanupFrequency;
    } else {
      json[r'docker_cleanup_frequency'] = null;
    }
    if (this.dockerCleanupThreshold != null) {
      json[r'docker_cleanup_threshold'] = this.dockerCleanupThreshold;
    } else {
      json[r'docker_cleanup_threshold'] = null;
    }
    if (this.forceDockerCleanup != null) {
      json[r'force_docker_cleanup'] = this.forceDockerCleanup;
    } else {
      json[r'force_docker_cleanup'] = null;
    }
    if (this.deleteUnusedVolumes != null) {
      json[r'delete_unused_volumes'] = this.deleteUnusedVolumes;
    } else {
      json[r'delete_unused_volumes'] = null;
    }
    if (this.deleteUnusedNetworks != null) {
      json[r'delete_unused_networks'] = this.deleteUnusedNetworks;
    } else {
      json[r'delete_unused_networks'] = null;
    }
    if (this.disableApplicationImageRetention != null) {
      json[r'disable_application_image_retention'] = this.disableApplicationImageRetention;
    } else {
      json[r'disable_application_image_retention'] = null;
    }
    return json;
  }

  /// Returns a new [GetServerDockerCleanup200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetServerDockerCleanup200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetServerDockerCleanup200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetServerDockerCleanup200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetServerDockerCleanup200Response(
        dockerCleanupFrequency: mapValueOfType<String>(json, r'docker_cleanup_frequency'),
        dockerCleanupThreshold: mapValueOfType<int>(json, r'docker_cleanup_threshold'),
        forceDockerCleanup: mapValueOfType<bool>(json, r'force_docker_cleanup'),
        deleteUnusedVolumes: mapValueOfType<bool>(json, r'delete_unused_volumes'),
        deleteUnusedNetworks: mapValueOfType<bool>(json, r'delete_unused_networks'),
        disableApplicationImageRetention: mapValueOfType<bool>(json, r'disable_application_image_retention'),
      );
    }
    return null;
  }

  static List<GetServerDockerCleanup200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetServerDockerCleanup200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetServerDockerCleanup200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetServerDockerCleanup200Response> mapFromJson(dynamic json) {
    final map = <String, GetServerDockerCleanup200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetServerDockerCleanup200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetServerDockerCleanup200Response-objects as value to a dart map
  static Map<String, List<GetServerDockerCleanup200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetServerDockerCleanup200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetServerDockerCleanup200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

