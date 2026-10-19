//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PatchServiceDatabaseByServiceAndDatabaseUuidRequest {
  /// Returns a new [PatchServiceDatabaseByServiceAndDatabaseUuidRequest] instance.
  PatchServiceDatabaseByServiceAndDatabaseUuidRequest({
    this.humanName,
    this.description,
    this.image,
    this.excludeFromStatus,
    this.isLogDrainEnabled,
    this.isPublic,
    this.publicPort,
    this.publicPortTimeout,
  });

  Object? humanName;

  Object? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? excludeFromStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isLogDrainEnabled;

  /// Changing it starts or stops the database proxy, so it needs a token with the deploy permission.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPublic;

  /// Minimum value: 1
  /// Maximum value: 65535
  Object? publicPort;

  /// Minimum value: 1
  Object? publicPortTimeout;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchServiceDatabaseByServiceAndDatabaseUuidRequest &&
    other.humanName == humanName &&
    other.description == description &&
    other.image == image &&
    other.excludeFromStatus == excludeFromStatus &&
    other.isLogDrainEnabled == isLogDrainEnabled &&
    other.isPublic == isPublic &&
    other.publicPort == publicPort &&
    other.publicPortTimeout == publicPortTimeout;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (humanName == null ? 0 : humanName!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (excludeFromStatus == null ? 0 : excludeFromStatus!.hashCode) +
    (isLogDrainEnabled == null ? 0 : isLogDrainEnabled!.hashCode) +
    (isPublic == null ? 0 : isPublic!.hashCode) +
    (publicPort == null ? 0 : publicPort!.hashCode) +
    (publicPortTimeout == null ? 0 : publicPortTimeout!.hashCode);

  @override
  String toString() => 'PatchServiceDatabaseByServiceAndDatabaseUuidRequest[humanName=$humanName, description=$description, image=$image, excludeFromStatus=$excludeFromStatus, isLogDrainEnabled=$isLogDrainEnabled, isPublic=$isPublic, publicPort=$publicPort, publicPortTimeout=$publicPortTimeout]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.humanName != null) {
      json[r'human_name'] = this.humanName;
    } else {
      json[r'human_name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.excludeFromStatus != null) {
      json[r'exclude_from_status'] = this.excludeFromStatus;
    } else {
      json[r'exclude_from_status'] = null;
    }
    if (this.isLogDrainEnabled != null) {
      json[r'is_log_drain_enabled'] = this.isLogDrainEnabled;
    } else {
      json[r'is_log_drain_enabled'] = null;
    }
    if (this.isPublic != null) {
      json[r'is_public'] = this.isPublic;
    } else {
      json[r'is_public'] = null;
    }
    if (this.publicPort != null) {
      json[r'public_port'] = this.publicPort;
    } else {
      json[r'public_port'] = null;
    }
    if (this.publicPortTimeout != null) {
      json[r'public_port_timeout'] = this.publicPortTimeout;
    } else {
      json[r'public_port_timeout'] = null;
    }
    return json;
  }

  /// Returns a new [PatchServiceDatabaseByServiceAndDatabaseUuidRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchServiceDatabaseByServiceAndDatabaseUuidRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchServiceDatabaseByServiceAndDatabaseUuidRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchServiceDatabaseByServiceAndDatabaseUuidRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchServiceDatabaseByServiceAndDatabaseUuidRequest(
        humanName: mapValueOfType<Object>(json, r'human_name'),
        description: mapValueOfType<Object>(json, r'description'),
        image: mapValueOfType<String>(json, r'image'),
        excludeFromStatus: mapValueOfType<bool>(json, r'exclude_from_status'),
        isLogDrainEnabled: mapValueOfType<bool>(json, r'is_log_drain_enabled'),
        isPublic: mapValueOfType<bool>(json, r'is_public'),
        publicPort: mapValueOfType<Object>(json, r'public_port'),
        publicPortTimeout: mapValueOfType<Object>(json, r'public_port_timeout'),
      );
    }
    return null;
  }

  static List<PatchServiceDatabaseByServiceAndDatabaseUuidRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchServiceDatabaseByServiceAndDatabaseUuidRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchServiceDatabaseByServiceAndDatabaseUuidRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchServiceDatabaseByServiceAndDatabaseUuidRequest> mapFromJson(dynamic json) {
    final map = <String, PatchServiceDatabaseByServiceAndDatabaseUuidRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchServiceDatabaseByServiceAndDatabaseUuidRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchServiceDatabaseByServiceAndDatabaseUuidRequest-objects as value to a dart map
  static Map<String, List<PatchServiceDatabaseByServiceAndDatabaseUuidRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchServiceDatabaseByServiceAndDatabaseUuidRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchServiceDatabaseByServiceAndDatabaseUuidRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

