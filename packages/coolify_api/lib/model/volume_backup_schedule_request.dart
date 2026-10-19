//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VolumeBackupScheduleRequest {
  /// Returns a new [VolumeBackupScheduleRequest] instance.
  VolumeBackupScheduleRequest({
    required this.frequency,
    this.enabled = true,
    this.saveS3 = false,
    this.disableLocalBackup = false,
    this.stopDuringBackup = false,
    this.s3StorageUuid,
    this.retentionAmountLocally = 7,
    this.retentionDaysLocally = 0,
    this.retentionMaxStorageLocally = 0,
    this.retentionAmountS3 = 7,
    this.retentionDaysS3 = 0,
    this.retentionMaxStorageS3 = 0,
    this.timeout = 36000,
    this.missingBackupNotificationDays = 0,
  });

  String frequency;

  bool enabled;

  bool saveS3;

  bool disableLocalBackup;

  /// Stop the resource containers during the backup. Needs a token with the deploy permission.
  bool stopDuringBackup;

  Object? s3StorageUuid;

  /// Minimum value: 0
  /// Maximum value: 10000
  int retentionAmountLocally;

  /// Minimum value: 0
  /// Maximum value: 2147483647
  int retentionDaysLocally;

  /// Minimum value: 0
  /// Maximum value: 9999999999
  double retentionMaxStorageLocally;

  /// Minimum value: 0
  /// Maximum value: 10000
  int retentionAmountS3;

  /// Minimum value: 0
  /// Maximum value: 2147483647
  int retentionDaysS3;

  /// Minimum value: 0
  /// Maximum value: 9999999999
  double retentionMaxStorageS3;

  /// Minimum value: 60
  /// Maximum value: 36000
  int timeout;

  /// Alert after this many days without an execution; 0 disables alerts
  ///
  /// Minimum value: 0
  /// Maximum value: 365
  int missingBackupNotificationDays;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VolumeBackupScheduleRequest &&
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
  String toString() => 'VolumeBackupScheduleRequest[frequency=$frequency, enabled=$enabled, saveS3=$saveS3, disableLocalBackup=$disableLocalBackup, stopDuringBackup=$stopDuringBackup, s3StorageUuid=$s3StorageUuid, retentionAmountLocally=$retentionAmountLocally, retentionDaysLocally=$retentionDaysLocally, retentionMaxStorageLocally=$retentionMaxStorageLocally, retentionAmountS3=$retentionAmountS3, retentionDaysS3=$retentionDaysS3, retentionMaxStorageS3=$retentionMaxStorageS3, timeout=$timeout, missingBackupNotificationDays=$missingBackupNotificationDays]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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

  /// Returns a new [VolumeBackupScheduleRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VolumeBackupScheduleRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VolumeBackupScheduleRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VolumeBackupScheduleRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VolumeBackupScheduleRequest(
        frequency: mapValueOfType<String>(json, r'frequency')!,
        enabled: mapValueOfType<bool>(json, r'enabled') ?? true,
        saveS3: mapValueOfType<bool>(json, r'save_s3') ?? false,
        disableLocalBackup: mapValueOfType<bool>(json, r'disable_local_backup') ?? false,
        stopDuringBackup: mapValueOfType<bool>(json, r'stop_during_backup') ?? false,
        s3StorageUuid: mapValueOfType<Object>(json, r's3_storage_uuid'),
        retentionAmountLocally: mapValueOfType<int>(json, r'retention_amount_locally') ?? 7,
        retentionDaysLocally: mapValueOfType<int>(json, r'retention_days_locally') ?? 0,
        retentionMaxStorageLocally: mapValueOfType<double>(json, r'retention_max_storage_locally') ?? 0,
        retentionAmountS3: mapValueOfType<int>(json, r'retention_amount_s3') ?? 7,
        retentionDaysS3: mapValueOfType<int>(json, r'retention_days_s3') ?? 0,
        retentionMaxStorageS3: mapValueOfType<double>(json, r'retention_max_storage_s3') ?? 0,
        timeout: mapValueOfType<int>(json, r'timeout') ?? 36000,
        missingBackupNotificationDays: mapValueOfType<int>(json, r'missing_backup_notification_days') ?? 0,
      );
    }
    return null;
  }

  static List<VolumeBackupScheduleRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VolumeBackupScheduleRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VolumeBackupScheduleRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VolumeBackupScheduleRequest> mapFromJson(dynamic json) {
    final map = <String, VolumeBackupScheduleRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VolumeBackupScheduleRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VolumeBackupScheduleRequest-objects as value to a dart map
  static Map<String, List<VolumeBackupScheduleRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VolumeBackupScheduleRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VolumeBackupScheduleRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'frequency',
  };
}

