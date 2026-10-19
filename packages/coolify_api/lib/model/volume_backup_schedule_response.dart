//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VolumeBackupScheduleResponse {
  /// Returns a new [VolumeBackupScheduleResponse] instance.
  VolumeBackupScheduleResponse({
    required this.uuid,
    required this.message,
    required this.storageUuid,
    required this.storageType,
    required this.frequency,
    required this.enabled,
    required this.saveS3,
    required this.disableLocalBackup,
    required this.stopDuringBackup,
    this.s3StorageUuid,
    required this.retentionAmountLocally,
    required this.retentionDaysLocally,
    required this.retentionMaxStorageLocally,
    required this.retentionAmountS3,
    required this.retentionDaysS3,
    required this.retentionMaxStorageS3,
    required this.timeout,
    required this.missingBackupNotificationDays,
  });

  String uuid;

  String message;

  String storageUuid;

  VolumeBackupScheduleResponseStorageTypeEnum storageType;

  String frequency;

  bool enabled;

  bool saveS3;

  bool disableLocalBackup;

  bool stopDuringBackup;

  Object? s3StorageUuid;

  int retentionAmountLocally;

  int retentionDaysLocally;

  double retentionMaxStorageLocally;

  int retentionAmountS3;

  int retentionDaysS3;

  double retentionMaxStorageS3;

  int timeout;

  int missingBackupNotificationDays;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VolumeBackupScheduleResponse &&
    other.uuid == uuid &&
    other.message == message &&
    other.storageUuid == storageUuid &&
    other.storageType == storageType &&
    other.frequency == frequency &&
    other.enabled == enabled &&
    other.saveS3 == saveS3 &&
    other.disableLocalBackup == disableLocalBackup &&
    other.stopDuringBackup == stopDuringBackup &&
    other.s3StorageUuid == s3StorageUuid &&
    other.retentionAmountLocally == retentionAmountLocally &&
    other.retentionDaysLocally == retentionDaysLocally &&
    other.retentionMaxStorageLocally == retentionMaxStorageLocally &&
    other.retentionAmountS3 == retentionAmountS3 &&
    other.retentionDaysS3 == retentionDaysS3 &&
    other.retentionMaxStorageS3 == retentionMaxStorageS3 &&
    other.timeout == timeout &&
    other.missingBackupNotificationDays == missingBackupNotificationDays;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (uuid.hashCode) +
    (message.hashCode) +
    (storageUuid.hashCode) +
    (storageType.hashCode) +
    (frequency.hashCode) +
    (enabled.hashCode) +
    (saveS3.hashCode) +
    (disableLocalBackup.hashCode) +
    (stopDuringBackup.hashCode) +
    (s3StorageUuid == null ? 0 : s3StorageUuid!.hashCode) +
    (retentionAmountLocally.hashCode) +
    (retentionDaysLocally.hashCode) +
    (retentionMaxStorageLocally.hashCode) +
    (retentionAmountS3.hashCode) +
    (retentionDaysS3.hashCode) +
    (retentionMaxStorageS3.hashCode) +
    (timeout.hashCode) +
    (missingBackupNotificationDays.hashCode);

  @override
  String toString() => 'VolumeBackupScheduleResponse[uuid=$uuid, message=$message, storageUuid=$storageUuid, storageType=$storageType, frequency=$frequency, enabled=$enabled, saveS3=$saveS3, disableLocalBackup=$disableLocalBackup, stopDuringBackup=$stopDuringBackup, s3StorageUuid=$s3StorageUuid, retentionAmountLocally=$retentionAmountLocally, retentionDaysLocally=$retentionDaysLocally, retentionMaxStorageLocally=$retentionMaxStorageLocally, retentionAmountS3=$retentionAmountS3, retentionDaysS3=$retentionDaysS3, retentionMaxStorageS3=$retentionMaxStorageS3, timeout=$timeout, missingBackupNotificationDays=$missingBackupNotificationDays]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'uuid'] = this.uuid;
      json[r'message'] = this.message;
      json[r'storage_uuid'] = this.storageUuid;
      json[r'storage_type'] = this.storageType;
      json[r'frequency'] = this.frequency;
      json[r'enabled'] = this.enabled;
      json[r'save_s3'] = this.saveS3;
      json[r'disable_local_backup'] = this.disableLocalBackup;
      json[r'stop_during_backup'] = this.stopDuringBackup;
    if (this.s3StorageUuid != null) {
      json[r's3_storage_uuid'] = this.s3StorageUuid;
    } else {
      json[r's3_storage_uuid'] = null;
    }
      json[r'retention_amount_locally'] = this.retentionAmountLocally;
      json[r'retention_days_locally'] = this.retentionDaysLocally;
      json[r'retention_max_storage_locally'] = this.retentionMaxStorageLocally;
      json[r'retention_amount_s3'] = this.retentionAmountS3;
      json[r'retention_days_s3'] = this.retentionDaysS3;
      json[r'retention_max_storage_s3'] = this.retentionMaxStorageS3;
      json[r'timeout'] = this.timeout;
      json[r'missing_backup_notification_days'] = this.missingBackupNotificationDays;
    return json;
  }

  /// Returns a new [VolumeBackupScheduleResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VolumeBackupScheduleResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VolumeBackupScheduleResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VolumeBackupScheduleResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VolumeBackupScheduleResponse(
        uuid: mapValueOfType<String>(json, r'uuid')!,
        message: mapValueOfType<String>(json, r'message')!,
        storageUuid: mapValueOfType<String>(json, r'storage_uuid')!,
        storageType: VolumeBackupScheduleResponseStorageTypeEnum.fromJson(json[r'storage_type'])!,
        frequency: mapValueOfType<String>(json, r'frequency')!,
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        saveS3: mapValueOfType<bool>(json, r'save_s3')!,
        disableLocalBackup: mapValueOfType<bool>(json, r'disable_local_backup')!,
        stopDuringBackup: mapValueOfType<bool>(json, r'stop_during_backup')!,
        s3StorageUuid: mapValueOfType<Object>(json, r's3_storage_uuid'),
        retentionAmountLocally: mapValueOfType<int>(json, r'retention_amount_locally')!,
        retentionDaysLocally: mapValueOfType<int>(json, r'retention_days_locally')!,
        retentionMaxStorageLocally: mapValueOfType<double>(json, r'retention_max_storage_locally')!,
        retentionAmountS3: mapValueOfType<int>(json, r'retention_amount_s3')!,
        retentionDaysS3: mapValueOfType<int>(json, r'retention_days_s3')!,
        retentionMaxStorageS3: mapValueOfType<double>(json, r'retention_max_storage_s3')!,
        timeout: mapValueOfType<int>(json, r'timeout')!,
        missingBackupNotificationDays: mapValueOfType<int>(json, r'missing_backup_notification_days')!,
      );
    }
    return null;
  }

  static List<VolumeBackupScheduleResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VolumeBackupScheduleResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VolumeBackupScheduleResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VolumeBackupScheduleResponse> mapFromJson(dynamic json) {
    final map = <String, VolumeBackupScheduleResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VolumeBackupScheduleResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VolumeBackupScheduleResponse-objects as value to a dart map
  static Map<String, List<VolumeBackupScheduleResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VolumeBackupScheduleResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VolumeBackupScheduleResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'uuid',
    'message',
    'storage_uuid',
    'storage_type',
    'frequency',
    'enabled',
    'save_s3',
    'disable_local_backup',
    'stop_during_backup',
    'retention_amount_locally',
    'retention_days_locally',
    'retention_max_storage_locally',
    'retention_amount_s3',
    'retention_days_s3',
    'retention_max_storage_s3',
    'timeout',
    'missing_backup_notification_days',
  };
}


class VolumeBackupScheduleResponseStorageTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const VolumeBackupScheduleResponseStorageTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const persistent = VolumeBackupScheduleResponseStorageTypeEnum._(r'persistent');
  static const directory = VolumeBackupScheduleResponseStorageTypeEnum._(r'directory');

  /// List of all possible values in this [enum][VolumeBackupScheduleResponseStorageTypeEnum].
  static const values = <VolumeBackupScheduleResponseStorageTypeEnum>[
    persistent,
    directory,
  ];

  static VolumeBackupScheduleResponseStorageTypeEnum? fromJson(dynamic value) => VolumeBackupScheduleResponseStorageTypeEnumTypeTransformer().decode(value);

  static List<VolumeBackupScheduleResponseStorageTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VolumeBackupScheduleResponseStorageTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VolumeBackupScheduleResponseStorageTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VolumeBackupScheduleResponseStorageTypeEnum] to String,
/// and [decode] dynamic data back to [VolumeBackupScheduleResponseStorageTypeEnum].
class VolumeBackupScheduleResponseStorageTypeEnumTypeTransformer {
  factory VolumeBackupScheduleResponseStorageTypeEnumTypeTransformer() => _instance ??= const VolumeBackupScheduleResponseStorageTypeEnumTypeTransformer._();

  const VolumeBackupScheduleResponseStorageTypeEnumTypeTransformer._();

  String encode(VolumeBackupScheduleResponseStorageTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a VolumeBackupScheduleResponseStorageTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VolumeBackupScheduleResponseStorageTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'persistent': return VolumeBackupScheduleResponseStorageTypeEnum.persistent;
        case r'directory': return VolumeBackupScheduleResponseStorageTypeEnum.directory;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VolumeBackupScheduleResponseStorageTypeEnumTypeTransformer] instance.
  static VolumeBackupScheduleResponseStorageTypeEnumTypeTransformer? _instance;
}


