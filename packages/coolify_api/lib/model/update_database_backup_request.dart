//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateDatabaseBackupRequest {
  /// Returns a new [UpdateDatabaseBackupRequest] instance.
  UpdateDatabaseBackupRequest({
    this.saveS3,
    this.s3StorageUuid,
    this.backupNow,
    this.enabled,
    this.databasesToBackup,
    this.dumpAll,
    this.frequency,
    this.databaseBackupRetentionAmountLocally,
    this.databaseBackupRetentionDaysLocally,
    this.databaseBackupRetentionMaxStorageLocally,
    this.databaseBackupRetentionAmountS3,
    this.databaseBackupRetentionDaysS3,
    this.databaseBackupRetentionMaxStorageS3,
    this.timeout = 3600,
    this.missingBackupNotificationDays,
  });

  /// Whether data is saved in s3 or not
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? saveS3;

  /// S3 storage UUID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? s3StorageUuid;

  /// Whether to take a backup now or not. Needs a token with the deploy permission.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? backupNow;

  /// Whether the backup is enabled or not
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  /// Comma separated list of databases to backup
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? databasesToBackup;

  /// Whether all databases are dumped or not
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? dumpAll;

  /// Frequency of the backup
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? frequency;

  /// Retention amount of the backup locally
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? databaseBackupRetentionAmountLocally;

  /// Retention days of the backup locally
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? databaseBackupRetentionDaysLocally;

  /// Max storage of the backup locally
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? databaseBackupRetentionMaxStorageLocally;

  /// Retention amount of the backup in s3
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? databaseBackupRetentionAmountS3;

  /// Retention days of the backup in s3
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? databaseBackupRetentionDaysS3;

  /// Max storage of the backup in S3
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? databaseBackupRetentionMaxStorageS3;

  /// Backup job timeout in seconds (min: 60, max: 36000)
  int timeout;

  /// Alert after this many days without an execution; 0 disables alerts
  ///
  /// Minimum value: 0
  /// Maximum value: 365
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? missingBackupNotificationDays;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateDatabaseBackupRequest &&
    other.saveS3 == saveS3 &&
    other.s3StorageUuid == s3StorageUuid &&
    other.backupNow == backupNow &&
    other.enabled == enabled &&
    other.databasesToBackup == databasesToBackup &&
    other.dumpAll == dumpAll &&
    other.frequency == frequency &&
    other.databaseBackupRetentionAmountLocally == databaseBackupRetentionAmountLocally &&
    other.databaseBackupRetentionDaysLocally == databaseBackupRetentionDaysLocally &&
    other.databaseBackupRetentionMaxStorageLocally == databaseBackupRetentionMaxStorageLocally &&
    other.databaseBackupRetentionAmountS3 == databaseBackupRetentionAmountS3 &&
    other.databaseBackupRetentionDaysS3 == databaseBackupRetentionDaysS3 &&
    other.databaseBackupRetentionMaxStorageS3 == databaseBackupRetentionMaxStorageS3 &&
    other.timeout == timeout &&
    other.missingBackupNotificationDays == missingBackupNotificationDays;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (saveS3 == null ? 0 : saveS3!.hashCode) +
    (s3StorageUuid == null ? 0 : s3StorageUuid!.hashCode) +
    (backupNow == null ? 0 : backupNow!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode) +
    (databasesToBackup == null ? 0 : databasesToBackup!.hashCode) +
    (dumpAll == null ? 0 : dumpAll!.hashCode) +
    (frequency == null ? 0 : frequency!.hashCode) +
    (databaseBackupRetentionAmountLocally == null ? 0 : databaseBackupRetentionAmountLocally!.hashCode) +
    (databaseBackupRetentionDaysLocally == null ? 0 : databaseBackupRetentionDaysLocally!.hashCode) +
    (databaseBackupRetentionMaxStorageLocally == null ? 0 : databaseBackupRetentionMaxStorageLocally!.hashCode) +
    (databaseBackupRetentionAmountS3 == null ? 0 : databaseBackupRetentionAmountS3!.hashCode) +
    (databaseBackupRetentionDaysS3 == null ? 0 : databaseBackupRetentionDaysS3!.hashCode) +
    (databaseBackupRetentionMaxStorageS3 == null ? 0 : databaseBackupRetentionMaxStorageS3!.hashCode) +
    (timeout.hashCode) +
    (missingBackupNotificationDays == null ? 0 : missingBackupNotificationDays!.hashCode);

  @override
  String toString() => 'UpdateDatabaseBackupRequest[saveS3=$saveS3, s3StorageUuid=$s3StorageUuid, backupNow=$backupNow, enabled=$enabled, databasesToBackup=$databasesToBackup, dumpAll=$dumpAll, frequency=$frequency, databaseBackupRetentionAmountLocally=$databaseBackupRetentionAmountLocally, databaseBackupRetentionDaysLocally=$databaseBackupRetentionDaysLocally, databaseBackupRetentionMaxStorageLocally=$databaseBackupRetentionMaxStorageLocally, databaseBackupRetentionAmountS3=$databaseBackupRetentionAmountS3, databaseBackupRetentionDaysS3=$databaseBackupRetentionDaysS3, databaseBackupRetentionMaxStorageS3=$databaseBackupRetentionMaxStorageS3, timeout=$timeout, missingBackupNotificationDays=$missingBackupNotificationDays]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.saveS3 != null) {
      json[r'save_s3'] = this.saveS3;
    } else {
      json[r'save_s3'] = null;
    }
    if (this.s3StorageUuid != null) {
      json[r's3_storage_uuid'] = this.s3StorageUuid;
    } else {
      json[r's3_storage_uuid'] = null;
    }
    if (this.backupNow != null) {
      json[r'backup_now'] = this.backupNow;
    } else {
      json[r'backup_now'] = null;
    }
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    if (this.databasesToBackup != null) {
      json[r'databases_to_backup'] = this.databasesToBackup;
    } else {
      json[r'databases_to_backup'] = null;
    }
    if (this.dumpAll != null) {
      json[r'dump_all'] = this.dumpAll;
    } else {
      json[r'dump_all'] = null;
    }
    if (this.frequency != null) {
      json[r'frequency'] = this.frequency;
    } else {
      json[r'frequency'] = null;
    }
    if (this.databaseBackupRetentionAmountLocally != null) {
      json[r'database_backup_retention_amount_locally'] = this.databaseBackupRetentionAmountLocally;
    } else {
      json[r'database_backup_retention_amount_locally'] = null;
    }
    if (this.databaseBackupRetentionDaysLocally != null) {
      json[r'database_backup_retention_days_locally'] = this.databaseBackupRetentionDaysLocally;
    } else {
      json[r'database_backup_retention_days_locally'] = null;
    }
    if (this.databaseBackupRetentionMaxStorageLocally != null) {
      json[r'database_backup_retention_max_storage_locally'] = this.databaseBackupRetentionMaxStorageLocally;
    } else {
      json[r'database_backup_retention_max_storage_locally'] = null;
    }
    if (this.databaseBackupRetentionAmountS3 != null) {
      json[r'database_backup_retention_amount_s3'] = this.databaseBackupRetentionAmountS3;
    } else {
      json[r'database_backup_retention_amount_s3'] = null;
    }
    if (this.databaseBackupRetentionDaysS3 != null) {
      json[r'database_backup_retention_days_s3'] = this.databaseBackupRetentionDaysS3;
    } else {
      json[r'database_backup_retention_days_s3'] = null;
    }
    if (this.databaseBackupRetentionMaxStorageS3 != null) {
      json[r'database_backup_retention_max_storage_s3'] = this.databaseBackupRetentionMaxStorageS3;
    } else {
      json[r'database_backup_retention_max_storage_s3'] = null;
    }
      json[r'timeout'] = this.timeout;
    if (this.missingBackupNotificationDays != null) {
      json[r'missing_backup_notification_days'] = this.missingBackupNotificationDays;
    } else {
      json[r'missing_backup_notification_days'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateDatabaseBackupRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateDatabaseBackupRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateDatabaseBackupRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateDatabaseBackupRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateDatabaseBackupRequest(
        saveS3: mapValueOfType<bool>(json, r'save_s3'),
        s3StorageUuid: mapValueOfType<String>(json, r's3_storage_uuid'),
        backupNow: mapValueOfType<bool>(json, r'backup_now'),
        enabled: mapValueOfType<bool>(json, r'enabled'),
        databasesToBackup: mapValueOfType<String>(json, r'databases_to_backup'),
        dumpAll: mapValueOfType<bool>(json, r'dump_all'),
        frequency: mapValueOfType<String>(json, r'frequency'),
        databaseBackupRetentionAmountLocally: mapValueOfType<int>(json, r'database_backup_retention_amount_locally'),
        databaseBackupRetentionDaysLocally: mapValueOfType<int>(json, r'database_backup_retention_days_locally'),
        databaseBackupRetentionMaxStorageLocally: num.parse('${json[r'database_backup_retention_max_storage_locally']}'),
        databaseBackupRetentionAmountS3: mapValueOfType<int>(json, r'database_backup_retention_amount_s3'),
        databaseBackupRetentionDaysS3: mapValueOfType<int>(json, r'database_backup_retention_days_s3'),
        databaseBackupRetentionMaxStorageS3: num.parse('${json[r'database_backup_retention_max_storage_s3']}'),
        timeout: mapValueOfType<int>(json, r'timeout') ?? 3600,
        missingBackupNotificationDays: mapValueOfType<int>(json, r'missing_backup_notification_days'),
      );
    }
    return null;
  }

  static List<UpdateDatabaseBackupRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateDatabaseBackupRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateDatabaseBackupRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateDatabaseBackupRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateDatabaseBackupRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateDatabaseBackupRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateDatabaseBackupRequest-objects as value to a dart map
  static Map<String, List<UpdateDatabaseBackupRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateDatabaseBackupRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateDatabaseBackupRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

