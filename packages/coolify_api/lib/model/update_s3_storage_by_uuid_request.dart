//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateS3StorageByUuidRequest {
  /// Returns a new [UpdateS3StorageByUuidRequest] instance.
  UpdateS3StorageByUuidRequest({
    this.name,
    this.description,
    this.endpoint,
    this.bucket,
    this.region,
    this.key,
    this.secret,
    this.isUsable,
  });

  /// A friendly name for the storage.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Optional description.
  String? description;

  /// S3-compatible endpoint URL.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? endpoint;

  /// S3 bucket name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bucket;

  /// S3 region.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? region;

  /// Access key.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  /// Secret key.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? secret;

  /// Whether the storage is marked usable.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isUsable;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateS3StorageByUuidRequest &&
    other.name == name &&
    other.description == description &&
    other.endpoint == endpoint &&
    other.bucket == bucket &&
    other.region == region &&
    other.key == key &&
    other.secret == secret &&
    other.isUsable == isUsable;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (endpoint == null ? 0 : endpoint!.hashCode) +
    (bucket == null ? 0 : bucket!.hashCode) +
    (region == null ? 0 : region!.hashCode) +
    (key == null ? 0 : key!.hashCode) +
    (secret == null ? 0 : secret!.hashCode) +
    (isUsable == null ? 0 : isUsable!.hashCode);

  @override
  String toString() => 'UpdateS3StorageByUuidRequest[name=$name, description=$description, endpoint=$endpoint, bucket=$bucket, region=$region, key=$key, secret=$secret, isUsable=$isUsable]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.endpoint != null) {
      json[r'endpoint'] = this.endpoint;
    } else {
      json[r'endpoint'] = null;
    }
    if (this.bucket != null) {
      json[r'bucket'] = this.bucket;
    } else {
      json[r'bucket'] = null;
    }
    if (this.region != null) {
      json[r'region'] = this.region;
    } else {
      json[r'region'] = null;
    }
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.secret != null) {
      json[r'secret'] = this.secret;
    } else {
      json[r'secret'] = null;
    }
    if (this.isUsable != null) {
      json[r'is_usable'] = this.isUsable;
    } else {
      json[r'is_usable'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateS3StorageByUuidRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateS3StorageByUuidRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateS3StorageByUuidRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateS3StorageByUuidRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateS3StorageByUuidRequest(
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        endpoint: mapValueOfType<String>(json, r'endpoint'),
        bucket: mapValueOfType<String>(json, r'bucket'),
        region: mapValueOfType<String>(json, r'region'),
        key: mapValueOfType<String>(json, r'key'),
        secret: mapValueOfType<String>(json, r'secret'),
        isUsable: mapValueOfType<bool>(json, r'is_usable'),
      );
    }
    return null;
  }

  static List<UpdateS3StorageByUuidRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateS3StorageByUuidRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateS3StorageByUuidRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateS3StorageByUuidRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateS3StorageByUuidRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateS3StorageByUuidRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateS3StorageByUuidRequest-objects as value to a dart map
  static Map<String, List<UpdateS3StorageByUuidRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateS3StorageByUuidRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateS3StorageByUuidRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

