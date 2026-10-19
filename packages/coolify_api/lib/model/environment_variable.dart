//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EnvironmentVariable {
  /// Returns a new [EnvironmentVariable] instance.
  EnvironmentVariable({
    this.id,
    this.uuid,
    this.resourceableType,
    this.resourceableId,
    this.isLiteral,
    this.isMultiline,
    this.isPreview,
    this.isRuntime,
    this.isBuildtime,
    this.isShared,
    this.isShownOnce,
    this.key,
    this.value,
    this.realValue,
    this.comment,
    this.version,
    this.createdAt,
    this.updatedAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

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
  String? resourceableType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? resourceableId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isLiteral;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isMultiline;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPreview;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isRuntime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isBuildtime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isShared;

  /// If true, the saved value is hidden in the UI and API responses. MCP never returns environment variable values.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isShownOnce;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? realValue;

  String? comment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

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
  String? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EnvironmentVariable &&
    other.id == id &&
    other.uuid == uuid &&
    other.resourceableType == resourceableType &&
    other.resourceableId == resourceableId &&
    other.isLiteral == isLiteral &&
    other.isMultiline == isMultiline &&
    other.isPreview == isPreview &&
    other.isRuntime == isRuntime &&
    other.isBuildtime == isBuildtime &&
    other.isShared == isShared &&
    other.isShownOnce == isShownOnce &&
    other.key == key &&
    other.value == value &&
    other.realValue == realValue &&
    other.comment == comment &&
    other.version == version &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (uuid == null ? 0 : uuid!.hashCode) +
    (resourceableType == null ? 0 : resourceableType!.hashCode) +
    (resourceableId == null ? 0 : resourceableId!.hashCode) +
    (isLiteral == null ? 0 : isLiteral!.hashCode) +
    (isMultiline == null ? 0 : isMultiline!.hashCode) +
    (isPreview == null ? 0 : isPreview!.hashCode) +
    (isRuntime == null ? 0 : isRuntime!.hashCode) +
    (isBuildtime == null ? 0 : isBuildtime!.hashCode) +
    (isShared == null ? 0 : isShared!.hashCode) +
    (isShownOnce == null ? 0 : isShownOnce!.hashCode) +
    (key == null ? 0 : key!.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (realValue == null ? 0 : realValue!.hashCode) +
    (comment == null ? 0 : comment!.hashCode) +
    (version == null ? 0 : version!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'EnvironmentVariable[id=$id, uuid=$uuid, resourceableType=$resourceableType, resourceableId=$resourceableId, isLiteral=$isLiteral, isMultiline=$isMultiline, isPreview=$isPreview, isRuntime=$isRuntime, isBuildtime=$isBuildtime, isShared=$isShared, isShownOnce=$isShownOnce, key=$key, value=$value, realValue=$realValue, comment=$comment, version=$version, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.uuid != null) {
      json[r'uuid'] = this.uuid;
    } else {
      json[r'uuid'] = null;
    }
    if (this.resourceableType != null) {
      json[r'resourceable_type'] = this.resourceableType;
    } else {
      json[r'resourceable_type'] = null;
    }
    if (this.resourceableId != null) {
      json[r'resourceable_id'] = this.resourceableId;
    } else {
      json[r'resourceable_id'] = null;
    }
    if (this.isLiteral != null) {
      json[r'is_literal'] = this.isLiteral;
    } else {
      json[r'is_literal'] = null;
    }
    if (this.isMultiline != null) {
      json[r'is_multiline'] = this.isMultiline;
    } else {
      json[r'is_multiline'] = null;
    }
    if (this.isPreview != null) {
      json[r'is_preview'] = this.isPreview;
    } else {
      json[r'is_preview'] = null;
    }
    if (this.isRuntime != null) {
      json[r'is_runtime'] = this.isRuntime;
    } else {
      json[r'is_runtime'] = null;
    }
    if (this.isBuildtime != null) {
      json[r'is_buildtime'] = this.isBuildtime;
    } else {
      json[r'is_buildtime'] = null;
    }
    if (this.isShared != null) {
      json[r'is_shared'] = this.isShared;
    } else {
      json[r'is_shared'] = null;
    }
    if (this.isShownOnce != null) {
      json[r'is_shown_once'] = this.isShownOnce;
    } else {
      json[r'is_shown_once'] = null;
    }
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    if (this.realValue != null) {
      json[r'real_value'] = this.realValue;
    } else {
      json[r'real_value'] = null;
    }
    if (this.comment != null) {
      json[r'comment'] = this.comment;
    } else {
      json[r'comment'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt;
    } else {
      json[r'created_at'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt;
    } else {
      json[r'updated_at'] = null;
    }
    return json;
  }

  /// Returns a new [EnvironmentVariable] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EnvironmentVariable? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EnvironmentVariable[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EnvironmentVariable[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EnvironmentVariable(
        id: mapValueOfType<int>(json, r'id'),
        uuid: mapValueOfType<String>(json, r'uuid'),
        resourceableType: mapValueOfType<String>(json, r'resourceable_type'),
        resourceableId: mapValueOfType<int>(json, r'resourceable_id'),
        isLiteral: mapValueOfType<bool>(json, r'is_literal'),
        isMultiline: mapValueOfType<bool>(json, r'is_multiline'),
        isPreview: mapValueOfType<bool>(json, r'is_preview'),
        isRuntime: mapValueOfType<bool>(json, r'is_runtime'),
        isBuildtime: mapValueOfType<bool>(json, r'is_buildtime'),
        isShared: mapValueOfType<bool>(json, r'is_shared'),
        isShownOnce: mapValueOfType<bool>(json, r'is_shown_once'),
        key: mapValueOfType<String>(json, r'key'),
        value: mapValueOfType<String>(json, r'value'),
        realValue: mapValueOfType<String>(json, r'real_value'),
        comment: mapValueOfType<String>(json, r'comment'),
        version: mapValueOfType<String>(json, r'version'),
        createdAt: mapValueOfType<String>(json, r'created_at'),
        updatedAt: mapValueOfType<String>(json, r'updated_at'),
      );
    }
    return null;
  }

  static List<EnvironmentVariable> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EnvironmentVariable>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EnvironmentVariable.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EnvironmentVariable> mapFromJson(dynamic json) {
    final map = <String, EnvironmentVariable>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EnvironmentVariable.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EnvironmentVariable-objects as value to a dart map
  static Map<String, List<EnvironmentVariable>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EnvironmentVariable>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EnvironmentVariable.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

