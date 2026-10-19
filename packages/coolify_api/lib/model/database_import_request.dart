//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DatabaseImportRequest {
  /// Returns a new [DatabaseImportRequest] instance.
  DatabaseImportRequest({
    required this.source_,
    required this.uploadId,
    this.dumpAll = false,
    this.replaceExisting = false,
    this.keepOwners = false,
    this.restoreMysqlUsers = false,
    this.sqliteDatabase,
    required this.s3StorageUuid,
    required this.path,
  });

  DatabaseImportRequestSource_Enum source_;

  String uploadId;

  bool dumpAll;

  /// Drop matching PostgreSQL objects before restoring a single-database archive.
  bool replaceExisting;

  /// Restore object owners and privileges from a single-database PostgreSQL archive. By default they are skipped, because the roles of another server usually do not exist.
  bool keepOwners;

  /// MySQL and MariaDB backups containing all databases: also restore the mysql system database (users, passwords, and privileges). By default the system databases are skipped, so the database keeps its own users and passwords.
  bool restoreMysqlUsers;

  /// SQLite: the database file to restore into. Must be one of the database files. Defaults to the file named in the backup file name, else the first file.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sqliteDatabase;

  String s3StorageUuid;

  String path;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DatabaseImportRequest &&
    other.source_ == source_ &&
    other.uploadId == uploadId &&
    other.dumpAll == dumpAll &&
    other.replaceExisting == replaceExisting &&
    other.keepOwners == keepOwners &&
    other.restoreMysqlUsers == restoreMysqlUsers &&
    other.sqliteDatabase == sqliteDatabase &&
    other.s3StorageUuid == s3StorageUuid &&
    other.path == path;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (source_.hashCode) +
    (uploadId.hashCode) +
    (dumpAll.hashCode) +
    (replaceExisting.hashCode) +
    (keepOwners.hashCode) +
    (restoreMysqlUsers.hashCode) +
    (sqliteDatabase == null ? 0 : sqliteDatabase!.hashCode) +
    (s3StorageUuid.hashCode) +
    (path.hashCode);

  @override
  String toString() => 'DatabaseImportRequest[source_=$source_, uploadId=$uploadId, dumpAll=$dumpAll, replaceExisting=$replaceExisting, keepOwners=$keepOwners, restoreMysqlUsers=$restoreMysqlUsers, sqliteDatabase=$sqliteDatabase, s3StorageUuid=$s3StorageUuid, path=$path]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'source'] = this.source_;
      json[r'upload_id'] = this.uploadId;
      json[r'dump_all'] = this.dumpAll;
      json[r'replace_existing'] = this.replaceExisting;
      json[r'keep_owners'] = this.keepOwners;
      json[r'restore_mysql_users'] = this.restoreMysqlUsers;
    if (this.sqliteDatabase != null) {
      json[r'sqlite_database'] = this.sqliteDatabase;
    } else {
      json[r'sqlite_database'] = null;
    }
      json[r's3_storage_uuid'] = this.s3StorageUuid;
      json[r'path'] = this.path;
    return json;
  }

  /// Returns a new [DatabaseImportRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DatabaseImportRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DatabaseImportRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DatabaseImportRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DatabaseImportRequest(
        source_: DatabaseImportRequestSource_Enum.fromJson(json[r'source'])!,
        uploadId: mapValueOfType<String>(json, r'upload_id')!,
        dumpAll: mapValueOfType<bool>(json, r'dump_all') ?? false,
        replaceExisting: mapValueOfType<bool>(json, r'replace_existing') ?? false,
        keepOwners: mapValueOfType<bool>(json, r'keep_owners') ?? false,
        restoreMysqlUsers: mapValueOfType<bool>(json, r'restore_mysql_users') ?? false,
        sqliteDatabase: mapValueOfType<String>(json, r'sqlite_database'),
        s3StorageUuid: mapValueOfType<String>(json, r's3_storage_uuid')!,
        path: mapValueOfType<String>(json, r'path')!,
      );
    }
    return null;
  }

  static List<DatabaseImportRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DatabaseImportRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DatabaseImportRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DatabaseImportRequest> mapFromJson(dynamic json) {
    final map = <String, DatabaseImportRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DatabaseImportRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DatabaseImportRequest-objects as value to a dart map
  static Map<String, List<DatabaseImportRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DatabaseImportRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DatabaseImportRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'source',
    'upload_id',
    's3_storage_uuid',
    'path',
  };
}


class DatabaseImportRequestSource_Enum {
  /// Instantiate a new enum with the provided [value].
  const DatabaseImportRequestSource_Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const server = DatabaseImportRequestSource_Enum._(r'server');

  /// List of all possible values in this [enum][DatabaseImportRequestSource_Enum].
  static const values = <DatabaseImportRequestSource_Enum>[
    server,
  ];

  static DatabaseImportRequestSource_Enum? fromJson(dynamic value) => DatabaseImportRequestSource_EnumTypeTransformer().decode(value);

  static List<DatabaseImportRequestSource_Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DatabaseImportRequestSource_Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DatabaseImportRequestSource_Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DatabaseImportRequestSource_Enum] to String,
/// and [decode] dynamic data back to [DatabaseImportRequestSource_Enum].
class DatabaseImportRequestSource_EnumTypeTransformer {
  factory DatabaseImportRequestSource_EnumTypeTransformer() => _instance ??= const DatabaseImportRequestSource_EnumTypeTransformer._();

  const DatabaseImportRequestSource_EnumTypeTransformer._();

  String encode(DatabaseImportRequestSource_Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a DatabaseImportRequestSource_Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DatabaseImportRequestSource_Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'server': return DatabaseImportRequestSource_Enum.server;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DatabaseImportRequestSource_EnumTypeTransformer] instance.
  static DatabaseImportRequestSource_EnumTypeTransformer? _instance;
}


