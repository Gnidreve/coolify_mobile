//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScheduledTaskExecution {
  /// Returns a new [ScheduledTaskExecution] instance.
  ScheduledTaskExecution({
    this.uuid,
    this.status,
    this.message,
    this.retryCount,
    this.duration,
    this.startedAt,
    this.finishedAt,
    this.createdAt,
    this.updatedAt,
  });

  /// The unique identifier of the execution.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uuid;

  /// The status of the execution.
  ScheduledTaskExecutionStatusEnum? status;

  /// The output message of the execution.
  String? message;

  /// The number of retries.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? retryCount;

  /// Duration in seconds.
  num? duration;

  /// When the execution started.
  DateTime? startedAt;

  /// When the execution finished.
  DateTime? finishedAt;

  /// When the record was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// When the record was last updated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScheduledTaskExecution &&
    other.uuid == uuid &&
    other.status == status &&
    other.message == message &&
    other.retryCount == retryCount &&
    other.duration == duration &&
    other.startedAt == startedAt &&
    other.finishedAt == finishedAt &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (uuid == null ? 0 : uuid!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (retryCount == null ? 0 : retryCount!.hashCode) +
    (duration == null ? 0 : duration!.hashCode) +
    (startedAt == null ? 0 : startedAt!.hashCode) +
    (finishedAt == null ? 0 : finishedAt!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'ScheduledTaskExecution[uuid=$uuid, status=$status, message=$message, retryCount=$retryCount, duration=$duration, startedAt=$startedAt, finishedAt=$finishedAt, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.uuid != null) {
      json[r'uuid'] = this.uuid;
    } else {
      json[r'uuid'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.retryCount != null) {
      json[r'retry_count'] = this.retryCount;
    } else {
      json[r'retry_count'] = null;
    }
    if (this.duration != null) {
      json[r'duration'] = this.duration;
    } else {
      json[r'duration'] = null;
    }
    if (this.startedAt != null) {
      json[r'started_at'] = this.startedAt!.toUtc().toIso8601String();
    } else {
      json[r'started_at'] = null;
    }
    if (this.finishedAt != null) {
      json[r'finished_at'] = this.finishedAt!.toUtc().toIso8601String();
    } else {
      json[r'finished_at'] = null;
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
    return json;
  }

  /// Returns a new [ScheduledTaskExecution] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScheduledTaskExecution? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScheduledTaskExecution[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScheduledTaskExecution[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScheduledTaskExecution(
        uuid: mapValueOfType<String>(json, r'uuid'),
        status: ScheduledTaskExecutionStatusEnum.fromJson(json[r'status']),
        message: mapValueOfType<String>(json, r'message'),
        retryCount: mapValueOfType<int>(json, r'retry_count'),
        duration: json[r'duration'] == null
            ? null
            : num.parse('${json[r'duration']}'),
        startedAt: mapDateTime(json, r'started_at', r''),
        finishedAt: mapDateTime(json, r'finished_at', r''),
        createdAt: mapDateTime(json, r'created_at', r''),
        updatedAt: mapDateTime(json, r'updated_at', r''),
      );
    }
    return null;
  }

  static List<ScheduledTaskExecution> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScheduledTaskExecution>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScheduledTaskExecution.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScheduledTaskExecution> mapFromJson(dynamic json) {
    final map = <String, ScheduledTaskExecution>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScheduledTaskExecution.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScheduledTaskExecution-objects as value to a dart map
  static Map<String, List<ScheduledTaskExecution>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScheduledTaskExecution>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScheduledTaskExecution.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// The status of the execution.
class ScheduledTaskExecutionStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ScheduledTaskExecutionStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const success = ScheduledTaskExecutionStatusEnum._(r'success');
  static const failed = ScheduledTaskExecutionStatusEnum._(r'failed');
  static const running = ScheduledTaskExecutionStatusEnum._(r'running');

  /// List of all possible values in this [enum][ScheduledTaskExecutionStatusEnum].
  static const values = <ScheduledTaskExecutionStatusEnum>[
    success,
    failed,
    running,
  ];

  static ScheduledTaskExecutionStatusEnum? fromJson(dynamic value) => ScheduledTaskExecutionStatusEnumTypeTransformer().decode(value);

  static List<ScheduledTaskExecutionStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScheduledTaskExecutionStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScheduledTaskExecutionStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ScheduledTaskExecutionStatusEnum] to String,
/// and [decode] dynamic data back to [ScheduledTaskExecutionStatusEnum].
class ScheduledTaskExecutionStatusEnumTypeTransformer {
  factory ScheduledTaskExecutionStatusEnumTypeTransformer() => _instance ??= const ScheduledTaskExecutionStatusEnumTypeTransformer._();

  const ScheduledTaskExecutionStatusEnumTypeTransformer._();

  String encode(ScheduledTaskExecutionStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ScheduledTaskExecutionStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ScheduledTaskExecutionStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'success': return ScheduledTaskExecutionStatusEnum.success;
        case r'failed': return ScheduledTaskExecutionStatusEnum.failed;
        case r'running': return ScheduledTaskExecutionStatusEnum.running;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ScheduledTaskExecutionStatusEnumTypeTransformer] instance.
  static ScheduledTaskExecutionStatusEnumTypeTransformer? _instance;
}


