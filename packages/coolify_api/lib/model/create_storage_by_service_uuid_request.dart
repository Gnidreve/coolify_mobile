//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateStorageByServiceUuidRequest {
  /// Returns a new [CreateStorageByServiceUuidRequest] instance.
  CreateStorageByServiceUuidRequest({
    required this.type,
    required this.resourceUuid,
    this.name,
    required this.mountPath,
    this.content,
    this.isDirectory,
    this.fsPath,
  });

  /// The type of storage.
  CreateStorageByServiceUuidRequestTypeEnum type;

  /// UUID of the service application or database sub-resource.
  String resourceUuid;

  /// Volume name (persistent only, required for persistent).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The container mount path.
  String mountPath;

  /// File content (file only, optional). Needs the deploy ability when set.
  String? content;

  /// Whether this is a directory mount (file only, default false).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isDirectory;

  /// Host path. Required for directory mounts and host file mounts. Optional for file mounts with content (default: inside the resource directory). An absolute path can be anywhere on the host; a relative path is inside the resource directory. A directory or file mount outside the resource directory needs a token with the deploy permission. Coolify never deletes a path outside the resource directory.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fsPath;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateStorageByServiceUuidRequest &&
    other.type == type &&
    other.resourceUuid == resourceUuid &&
    other.name == name &&
    other.mountPath == mountPath &&
    other.content == content &&
    other.isDirectory == isDirectory &&
    other.fsPath == fsPath;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (resourceUuid.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (mountPath.hashCode) +
    (content == null ? 0 : content!.hashCode) +
    (isDirectory == null ? 0 : isDirectory!.hashCode) +
    (fsPath == null ? 0 : fsPath!.hashCode);

  @override
  String toString() => 'CreateStorageByServiceUuidRequest[type=$type, resourceUuid=$resourceUuid, name=$name, mountPath=$mountPath, content=$content, isDirectory=$isDirectory, fsPath=$fsPath]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'resource_uuid'] = this.resourceUuid;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'mount_path'] = this.mountPath;
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
    if (this.isDirectory != null) {
      json[r'is_directory'] = this.isDirectory;
    } else {
      json[r'is_directory'] = null;
    }
    if (this.fsPath != null) {
      json[r'fs_path'] = this.fsPath;
    } else {
      json[r'fs_path'] = null;
    }
    return json;
  }

  /// Returns a new [CreateStorageByServiceUuidRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateStorageByServiceUuidRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateStorageByServiceUuidRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateStorageByServiceUuidRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateStorageByServiceUuidRequest(
        type: CreateStorageByServiceUuidRequestTypeEnum.fromJson(json[r'type'])!,
        resourceUuid: mapValueOfType<String>(json, r'resource_uuid')!,
        name: mapValueOfType<String>(json, r'name'),
        mountPath: mapValueOfType<String>(json, r'mount_path')!,
        content: mapValueOfType<String>(json, r'content'),
        isDirectory: mapValueOfType<bool>(json, r'is_directory'),
        fsPath: mapValueOfType<String>(json, r'fs_path'),
      );
    }
    return null;
  }

  static List<CreateStorageByServiceUuidRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateStorageByServiceUuidRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateStorageByServiceUuidRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateStorageByServiceUuidRequest> mapFromJson(dynamic json) {
    final map = <String, CreateStorageByServiceUuidRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateStorageByServiceUuidRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateStorageByServiceUuidRequest-objects as value to a dart map
  static Map<String, List<CreateStorageByServiceUuidRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateStorageByServiceUuidRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateStorageByServiceUuidRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'resource_uuid',
    'mount_path',
  };
}

/// The type of storage.
class CreateStorageByServiceUuidRequestTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateStorageByServiceUuidRequestTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const persistent = CreateStorageByServiceUuidRequestTypeEnum._(r'persistent');
  static const file = CreateStorageByServiceUuidRequestTypeEnum._(r'file');

  /// List of all possible values in this [enum][CreateStorageByServiceUuidRequestTypeEnum].
  static const values = <CreateStorageByServiceUuidRequestTypeEnum>[
    persistent,
    file,
  ];

  static CreateStorageByServiceUuidRequestTypeEnum? fromJson(dynamic value) => CreateStorageByServiceUuidRequestTypeEnumTypeTransformer().decode(value);

  static List<CreateStorageByServiceUuidRequestTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateStorageByServiceUuidRequestTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateStorageByServiceUuidRequestTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateStorageByServiceUuidRequestTypeEnum] to String,
/// and [decode] dynamic data back to [CreateStorageByServiceUuidRequestTypeEnum].
class CreateStorageByServiceUuidRequestTypeEnumTypeTransformer {
  factory CreateStorageByServiceUuidRequestTypeEnumTypeTransformer() => _instance ??= const CreateStorageByServiceUuidRequestTypeEnumTypeTransformer._();

  const CreateStorageByServiceUuidRequestTypeEnumTypeTransformer._();

  String encode(CreateStorageByServiceUuidRequestTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateStorageByServiceUuidRequestTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateStorageByServiceUuidRequestTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'persistent': return CreateStorageByServiceUuidRequestTypeEnum.persistent;
        case r'file': return CreateStorageByServiceUuidRequestTypeEnum.file;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateStorageByServiceUuidRequestTypeEnumTypeTransformer] instance.
  static CreateStorageByServiceUuidRequestTypeEnumTypeTransformer? _instance;
}


