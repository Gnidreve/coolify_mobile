//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListBackupExecutions200ResponseExecutionsInner {
  /// Returns a new [ListBackupExecutions200ResponseExecutionsInner] instance.
  ListBackupExecutions200ResponseExecutionsInner({
    this.uuid,
    this.filename,
    this.size,
    this.createdAt,
    this.message,
    this.status,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uuid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filename;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? size;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

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
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListBackupExecutions200ResponseExecutionsInner &&
    other.uuid == uuid &&
    other.filename == filename &&
    other.size == size &&
    other.createdAt == createdAt &&
    other.message == message &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (uuid == null ? 0 : uuid!.hashCode) +
    (filename == null ? 0 : filename!.hashCode) +
    (size == null ? 0 : size!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'ListBackupExecutions200ResponseExecutionsInner[uuid=$uuid, filename=$filename, size=$size, createdAt=$createdAt, message=$message, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.uuid != null) {
      json[r'uuid'] = this.uuid;
    } else {
      json[r'uuid'] = null;
    }
    if (this.filename != null) {
      json[r'filename'] = this.filename;
    } else {
      json[r'filename'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt;
    } else {
      json[r'created_at'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [ListBackupExecutions200ResponseExecutionsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListBackupExecutions200ResponseExecutionsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListBackupExecutions200ResponseExecutionsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListBackupExecutions200ResponseExecutionsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListBackupExecutions200ResponseExecutionsInner(
        uuid: mapValueOfType<String>(json, r'uuid'),
        filename: mapValueOfType<String>(json, r'filename'),
        size: mapValueOfType<int>(json, r'size'),
        createdAt: mapValueOfType<String>(json, r'created_at'),
        message: mapValueOfType<String>(json, r'message'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<ListBackupExecutions200ResponseExecutionsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListBackupExecutions200ResponseExecutionsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListBackupExecutions200ResponseExecutionsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListBackupExecutions200ResponseExecutionsInner> mapFromJson(dynamic json) {
    final map = <String, ListBackupExecutions200ResponseExecutionsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListBackupExecutions200ResponseExecutionsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListBackupExecutions200ResponseExecutionsInner-objects as value to a dart map
  static Map<String, List<ListBackupExecutions200ResponseExecutionsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListBackupExecutions200ResponseExecutionsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListBackupExecutions200ResponseExecutionsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

