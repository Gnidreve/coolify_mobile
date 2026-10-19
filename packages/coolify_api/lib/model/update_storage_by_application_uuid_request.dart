//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateStorageByApplicationUuidRequest {
  /// Returns a new [UpdateStorageByApplicationUuidRequest] instance.
  UpdateStorageByApplicationUuidRequest({
    this.uuid,
    this.id,
    required this.type,
    this.isPreviewSuffixEnabled,
    this.name,
    this.mountPath,
    this.content,
  });

  /// The UUID of the storage (preferred).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uuid;

  /// The ID of the storage (deprecated, use uuid instead).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// The type of storage: persistent or file.
  UpdateStorageByApplicationUuidRequestTypeEnum type;

  /// Whether to add -pr-N suffix for preview deployments.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPreviewSuffixEnabled;

  /// The volume name (persistent only, not allowed for read-only storages).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The container mount path (not allowed for read-only storages).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mountPath;

  /// The file content (file only, not allowed for read-only storages). Changing the content of a file outside the resource directory needs the deploy permission.
  String? content;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateStorageByApplicationUuidRequest &&
    other.uuid == uuid &&
    other.id == id &&
    other.type == type &&
    other.isPreviewSuffixEnabled == isPreviewSuffixEnabled &&
    other.name == name &&
    other.mountPath == mountPath &&
    other.content == content;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (uuid == null ? 0 : uuid!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (type.hashCode) +
    (isPreviewSuffixEnabled == null ? 0 : isPreviewSuffixEnabled!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (mountPath == null ? 0 : mountPath!.hashCode) +
    (content == null ? 0 : content!.hashCode);

  @override
  String toString() => 'UpdateStorageByApplicationUuidRequest[uuid=$uuid, id=$id, type=$type, isPreviewSuffixEnabled=$isPreviewSuffixEnabled, name=$name, mountPath=$mountPath, content=$content]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.uuid != null) {
      json[r'uuid'] = this.uuid;
    } else {
      json[r'uuid'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'type'] = this.type;
    if (this.isPreviewSuffixEnabled != null) {
      json[r'is_preview_suffix_enabled'] = this.isPreviewSuffixEnabled;
    } else {
      json[r'is_preview_suffix_enabled'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.mountPath != null) {
      json[r'mount_path'] = this.mountPath;
    } else {
      json[r'mount_path'] = null;
    }
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateStorageByApplicationUuidRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateStorageByApplicationUuidRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateStorageByApplicationUuidRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateStorageByApplicationUuidRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateStorageByApplicationUuidRequest(
        uuid: mapValueOfType<String>(json, r'uuid'),
        id: mapValueOfType<int>(json, r'id'),
        type: UpdateStorageByApplicationUuidRequestTypeEnum.fromJson(json[r'type'])!,
        isPreviewSuffixEnabled: mapValueOfType<bool>(json, r'is_preview_suffix_enabled'),
        name: mapValueOfType<String>(json, r'name'),
        mountPath: mapValueOfType<String>(json, r'mount_path'),
        content: mapValueOfType<String>(json, r'content'),
      );
    }
    return null;
  }

  static List<UpdateStorageByApplicationUuidRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateStorageByApplicationUuidRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateStorageByApplicationUuidRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateStorageByApplicationUuidRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateStorageByApplicationUuidRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateStorageByApplicationUuidRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateStorageByApplicationUuidRequest-objects as value to a dart map
  static Map<String, List<UpdateStorageByApplicationUuidRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateStorageByApplicationUuidRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateStorageByApplicationUuidRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
  };
}

/// The type of storage: persistent or file.
class UpdateStorageByApplicationUuidRequestTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdateStorageByApplicationUuidRequestTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const persistent = UpdateStorageByApplicationUuidRequestTypeEnum._(r'persistent');
  static const file = UpdateStorageByApplicationUuidRequestTypeEnum._(r'file');

  /// List of all possible values in this [enum][UpdateStorageByApplicationUuidRequestTypeEnum].
  static const values = <UpdateStorageByApplicationUuidRequestTypeEnum>[
    persistent,
    file,
  ];

  static UpdateStorageByApplicationUuidRequestTypeEnum? fromJson(dynamic value) => UpdateStorageByApplicationUuidRequestTypeEnumTypeTransformer().decode(value);

  static List<UpdateStorageByApplicationUuidRequestTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateStorageByApplicationUuidRequestTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateStorageByApplicationUuidRequestTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdateStorageByApplicationUuidRequestTypeEnum] to String,
/// and [decode] dynamic data back to [UpdateStorageByApplicationUuidRequestTypeEnum].
class UpdateStorageByApplicationUuidRequestTypeEnumTypeTransformer {
  factory UpdateStorageByApplicationUuidRequestTypeEnumTypeTransformer() => _instance ??= const UpdateStorageByApplicationUuidRequestTypeEnumTypeTransformer._();

  const UpdateStorageByApplicationUuidRequestTypeEnumTypeTransformer._();

  String encode(UpdateStorageByApplicationUuidRequestTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdateStorageByApplicationUuidRequestTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdateStorageByApplicationUuidRequestTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'persistent': return UpdateStorageByApplicationUuidRequestTypeEnum.persistent;
        case r'file': return UpdateStorageByApplicationUuidRequestTypeEnum.file;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdateStorageByApplicationUuidRequestTypeEnumTypeTransformer] instance.
  static UpdateStorageByApplicationUuidRequestTypeEnumTypeTransformer? _instance;
}


