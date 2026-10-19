//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DatabaseImportStatus {
  /// Returns a new [DatabaseImportStatus] instance.
  DatabaseImportStatus({
    this.id,
    this.status,
    this.exitCode,
    this.output,
    this.createdAt,
    this.updatedAt,
    this.finishedAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  DatabaseImportStatusStatusEnum? status;

  Object? exitCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? output;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  Object? finishedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DatabaseImportStatus &&
    other.id == id &&
    other.status == status &&
    other.exitCode == exitCode &&
    other.output == output &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.finishedAt == finishedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (exitCode == null ? 0 : exitCode!.hashCode) +
    (output == null ? 0 : output!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (finishedAt == null ? 0 : finishedAt!.hashCode);

  @override
  String toString() => 'DatabaseImportStatus[id=$id, status=$status, exitCode=$exitCode, output=$output, createdAt=$createdAt, updatedAt=$updatedAt, finishedAt=$finishedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.exitCode != null) {
      json[r'exit_code'] = this.exitCode;
    } else {
      json[r'exit_code'] = null;
    }
    if (this.output != null) {
      json[r'output'] = this.output;
    } else {
      json[r'output'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
    if (this.finishedAt != null) {
      json[r'finished_at'] = this.finishedAt;
    } else {
      json[r'finished_at'] = null;
    }
    return json;
  }

  /// Returns a new [DatabaseImportStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DatabaseImportStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DatabaseImportStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DatabaseImportStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DatabaseImportStatus(
        id: mapValueOfType<int>(json, r'id'),
        status: DatabaseImportStatusStatusEnum.fromJson(json[r'status']),
        exitCode: mapValueOfType<Object>(json, r'exit_code'),
        output: mapValueOfType<String>(json, r'output'),
        createdAt: mapDateTime(json, r'created_at', r''),
        updatedAt: mapDateTime(json, r'updated_at', r''),
        finishedAt: mapValueOfType<Object>(json, r'finished_at'),
      );
    }
    return null;
  }

  static List<DatabaseImportStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DatabaseImportStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DatabaseImportStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DatabaseImportStatus> mapFromJson(dynamic json) {
    final map = <String, DatabaseImportStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DatabaseImportStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DatabaseImportStatus-objects as value to a dart map
  static Map<String, List<DatabaseImportStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DatabaseImportStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DatabaseImportStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class DatabaseImportStatusStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DatabaseImportStatusStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const queued = DatabaseImportStatusStatusEnum._(r'queued');
  static const inProgress = DatabaseImportStatusStatusEnum._(r'in_progress');
  static const finished = DatabaseImportStatusStatusEnum._(r'finished');
  static const error = DatabaseImportStatusStatusEnum._(r'error');
  static const killed = DatabaseImportStatusStatusEnum._(r'killed');
  static const cancelled = DatabaseImportStatusStatusEnum._(r'cancelled');
  static const closed = DatabaseImportStatusStatusEnum._(r'closed');

  /// List of all possible values in this [enum][DatabaseImportStatusStatusEnum].
  static const values = <DatabaseImportStatusStatusEnum>[
    queued,
    inProgress,
    finished,
    error,
    killed,
    cancelled,
    closed,
  ];

  static DatabaseImportStatusStatusEnum? fromJson(dynamic value) => DatabaseImportStatusStatusEnumTypeTransformer().decode(value);

  static List<DatabaseImportStatusStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DatabaseImportStatusStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DatabaseImportStatusStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DatabaseImportStatusStatusEnum] to String,
/// and [decode] dynamic data back to [DatabaseImportStatusStatusEnum].
class DatabaseImportStatusStatusEnumTypeTransformer {
  factory DatabaseImportStatusStatusEnumTypeTransformer() => _instance ??= const DatabaseImportStatusStatusEnumTypeTransformer._();

  const DatabaseImportStatusStatusEnumTypeTransformer._();

  String encode(DatabaseImportStatusStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DatabaseImportStatusStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DatabaseImportStatusStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'queued': return DatabaseImportStatusStatusEnum.queued;
        case r'in_progress': return DatabaseImportStatusStatusEnum.inProgress;
        case r'finished': return DatabaseImportStatusStatusEnum.finished;
        case r'error': return DatabaseImportStatusStatusEnum.error;
        case r'killed': return DatabaseImportStatusStatusEnum.killed;
        case r'cancelled': return DatabaseImportStatusStatusEnum.cancelled;
        case r'closed': return DatabaseImportStatusStatusEnum.closed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DatabaseImportStatusStatusEnumTypeTransformer] instance.
  static DatabaseImportStatusStatusEnumTypeTransformer? _instance;
}


