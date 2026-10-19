//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateDatabaseBackupRequest {
  /// Returns a new [CreateDatabaseBackupRequest] instance.
  CreateDatabaseBackupRequest({
    required this.frequency,
    this.enabled = true,
    this.saveS3 = false,
    this.s3StorageUuid,
    this.databasesToBackup,
    this.dumpAll = false,
    this.backupNow,
    this.databaseBackupRetentionAmountLocally,
    this.databaseBackupRetentionDaysLocally,
    this.databaseBackupRetentionMaxStorageLocally,
    this.databaseBackupRetentionAmountS3,
    this.databaseBackupRetentionDaysS3,
    this.databaseBackupRetentionMaxStorageS3,
    this.timeout = 3600,
    this.missingBackupNotificationDays = 0,
  });

  /// Backup frequency (cron expression or: every_minute, hourly, daily, weekly, monthly, yearly)
  String frequency;

  /// Whether the backup is enabled
  bool enabled;

  /// Whether to save backups to S3
  bool saveS3;

  /// S3 storage UUID (required if save_s3 is true)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? s3StorageUuid;

  /// Comma separated list of databases to backup
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? databasesToBackup;

  /// Whether to dump all databases
  bool dumpAll;

  /// Whether to trigger backup immediately after creation. Needs a token with the deploy permission.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? backupNow;

  /// Number of backups to retain locally
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? databaseBackupRetentionAmountLocally;

  /// Number of days to retain backups locally
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? databaseBackupRetentionDaysLocally;

  /// Max storage (GB) for local backups
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? databaseBackupRetentionMaxStorageLocally;

  /// Number of backups to retain in S3
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? databaseBackupRetentionAmountS3;

  /// Number of days to retain backups in S3
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? databaseBackupRetentionDaysS3;

  /// Max storage (GB) for S3 backups
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
  int missingBackupNotificationDays;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateDatabaseBackupRequest &&
    other.frequency == frequency &&
    other.enabled == enabled &&
    other.saveS3 == saveS3 &&
    other.s3StorageUuid == s3StorageUuid &&
    other.databasesToBackup == databasesToBackup &&
    other.dumpAll == dumpAll &&
    other.backupNow == backupNow &&
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
    (frequency.hashCode) +
    (enabled.hashCode) +
    (saveS3.hashCode) +
    (s3StorageUuid == null ? 0 : s3StorageUuid!.hashCode) +
    (databasesToBackup == null ? 0 : databasesToBackup!.hashCode) +
    (dumpAll.hashCode) +
    (backupNow == null ? 0 : backupNow!.hashCode) +
    (databaseBackupRetentionAmountLocally == null ? 0 : databaseBackupRetentionAmountLocally!.hashCode) +
    (databaseBackupRetentionDaysLocally == null ? 0 : databaseBackupRetentionDaysLocally!.hashCode) +
    (databaseBackupRetentionMaxStorageLocally == null ? 0 : databaseBackupRetentionMaxStorageLocally!.hashCode) +
    (databaseBackupRetentionAmountS3 == null ? 0 : databaseBackupRetentionAmountS3!.hashCode) +
    (databaseBackupRetentionDaysS3 == null ? 0 : databaseBackupRetentionDaysS3!.hashCode) +
    (databaseBackupRetentionMaxStorageS3 == null ? 0 : databaseBackupRetentionMaxStorageS3!.hashCode) +
    (timeout.hashCode) +
    (missingBackupNotificationDays.hashCode);

  @override
  String toString() => 'CreateDatabaseBackupRequest[frequency=$frequency, enabled=$enabled, saveS3=$saveS3, s3StorageUuid=$s3StorageUuid, databasesToBackup=$databasesToBackup, dumpAll=$dumpAll, backupNow=$backupNow, databaseBackupRetentionAmountLocally=$databaseBackupRetentionAmountLocally, databaseBackupRetentionDaysLocally=$databaseBackupRetentionDaysLocally, databaseBackupRetentionMaxStorageLocally=$databaseBackupRetentionMaxStorageLocally, databaseBackupRetentionAmountS3=$databaseBackupRetentionAmountS3, databaseBackupRetentionDaysS3=$databaseBackupRetentionDaysS3, databaseBackupRetentionMaxStorageS3=$databaseBackupRetentionMaxStorageS3, timeout=$timeout, missingBackupNotificationDays=$missingBackupNotificationDays]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'frequency'] = this.frequency;
      json[r'enabled'] = this.enabled;
      json[r'save_s3'] = this.saveS3;
    if (this.s3StorageUuid != null) {
      json[r's3_storage_uuid'] = this.s3StorageUuid;
    } else {
      json[r's3_storage_uuid'] = null;
    }
    if (this.databasesToBackup != null) {
      json[r'databases_to_backup'] = this.databasesToBackup;
    } else {
      json[r'databases_to_backup'] = null;
    }
      json[r'dump_all'] = this.dumpAll;
    if (this.backupNow != null) {
      json[r'backup_now'] = this.backupNow;
    } else {
      json[r'backup_now'] = null;
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
      json[r'missing_backup_notification_days'] = this.missingBackupNotificationDays;
    return json;
  }

  /// Returns a new [CreateDatabaseBackupRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateDatabaseBackupRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateDatabaseBackupRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateDatabaseBackupRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateDatabaseBackupRequest(
        frequency: mapValueOfType<String>(json, r'frequency')!,
        enabled: mapValueOfType<bool>(json, r'enabled') ?? true,
        saveS3: mapValueOfType<bool>(json, r'save_s3') ?? false,
        s3StorageUuid: mapValueOfType<String>(json, r's3_storage_uuid'),
        databasesToBackup: mapValueOfType<String>(json, r'databases_to_backup'),
        dumpAll: mapValueOfType<bool>(json, r'dump_all') ?? false,
        backupNow: mapValueOfType<bool>(json, r'backup_now'),
        databaseBackupRetentionAmountLocally: mapValueOfType<int>(json, r'database_backup_retention_amount_locally'),
        databaseBackupRetentionDaysLocally: mapValueOfType<int>(json, r'database_backup_retention_days_locally'),
        databaseBackupRetentionMaxStorageLocally: num.parse('${json[r'database_backup_retention_max_storage_locally']}'),
        databaseBackupRetentionAmountS3: mapValueOfType<int>(json, r'database_backup_retention_amount_s3'),
        databaseBackupRetentionDaysS3: mapValueOfType<int>(json, r'database_backup_retention_days_s3'),
        databaseBackupRetentionMaxStorageS3: num.parse('${json[r'database_backup_retention_max_storage_s3']}'),
        timeout: mapValueOfType<int>(json, r'timeout') ?? 3600,
        missingBackupNotificationDays: mapValueOfType<int>(json, r'missing_backup_notification_days') ?? 0,
      );
    }
    return null;
  }

  static List<CreateDatabaseBackupRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateDatabaseBackupRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDatabaseBackupRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateDatabaseBackupRequest> mapFromJson(dynamic json) {
    final map = <String, CreateDatabaseBackupRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateDatabaseBackupRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateDatabaseBackupRequest-objects as value to a dart map
  static Map<String, List<CreateDatabaseBackupRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateDatabaseBackupRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateDatabaseBackupRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'frequency',
  };
}

