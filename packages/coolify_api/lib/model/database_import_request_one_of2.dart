//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DatabaseImportRequestOneOf2 {
  /// Returns a new [DatabaseImportRequestOneOf2] instance.
  DatabaseImportRequestOneOf2({
    required this.source_,
    required this.path,
    this.dumpAll = false,
    this.replaceExisting = false,
    this.keepOwners = false,
    this.restoreMysqlUsers = false,
    this.sqliteDatabase,
  });

  DatabaseImportRequestOneOf2Source_Enum source_;

  String path;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is DatabaseImportRequestOneOf2 &&
    other.source_ == source_ &&
    other.path == path &&
    other.dumpAll == dumpAll &&
    other.replaceExisting == replaceExisting &&
    other.keepOwners == keepOwners &&
    other.restoreMysqlUsers == restoreMysqlUsers &&
    other.sqliteDatabase == sqliteDatabase;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (source_.hashCode) +
    (path.hashCode) +
    (dumpAll.hashCode) +
    (replaceExisting.hashCode) +
    (keepOwners.hashCode) +
    (restoreMysqlUsers.hashCode) +
    (sqliteDatabase == null ? 0 : sqliteDatabase!.hashCode);

  @override
  String toString() => 'DatabaseImportRequestOneOf2[source_=$source_, path=$path, dumpAll=$dumpAll, replaceExisting=$replaceExisting, keepOwners=$keepOwners, restoreMysqlUsers=$restoreMysqlUsers, sqliteDatabase=$sqliteDatabase]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'source'] = this.source_;
      json[r'path'] = this.path;
      json[r'dump_all'] = this.dumpAll;
      json[r'replace_existing'] = this.replaceExisting;
      json[r'keep_owners'] = this.keepOwners;
      json[r'restore_mysql_users'] = this.restoreMysqlUsers;
    if (this.sqliteDatabase != null) {
      json[r'sqlite_database'] = this.sqliteDatabase;
    } else {
      json[r'sqlite_database'] = null;
    }
    return json;
  }

  /// Returns a new [DatabaseImportRequestOneOf2] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DatabaseImportRequestOneOf2? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DatabaseImportRequestOneOf2[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DatabaseImportRequestOneOf2[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DatabaseImportRequestOneOf2(
        source_: DatabaseImportRequestOneOf2Source_Enum.fromJson(json[r'source'])!,
        path: mapValueOfType<String>(json, r'path')!,
        dumpAll: mapValueOfType<bool>(json, r'dump_all') ?? false,
        replaceExisting: mapValueOfType<bool>(json, r'replace_existing') ?? false,
        keepOwners: mapValueOfType<bool>(json, r'keep_owners') ?? false,
        restoreMysqlUsers: mapValueOfType<bool>(json, r'restore_mysql_users') ?? false,
        sqliteDatabase: mapValueOfType<String>(json, r'sqlite_database'),
      );
    }
    return null;
  }

  static List<DatabaseImportRequestOneOf2> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DatabaseImportRequestOneOf2>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DatabaseImportRequestOneOf2.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DatabaseImportRequestOneOf2> mapFromJson(dynamic json) {
    final map = <String, DatabaseImportRequestOneOf2>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DatabaseImportRequestOneOf2.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DatabaseImportRequestOneOf2-objects as value to a dart map
  static Map<String, List<DatabaseImportRequestOneOf2>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DatabaseImportRequestOneOf2>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DatabaseImportRequestOneOf2.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'source',
    'path',
  };
}


class DatabaseImportRequestOneOf2Source_Enum {
  /// Instantiate a new enum with the provided [value].
  const DatabaseImportRequestOneOf2Source_Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const server = DatabaseImportRequestOneOf2Source_Enum._(r'server');

  /// List of all possible values in this [enum][DatabaseImportRequestOneOf2Source_Enum].
  static const values = <DatabaseImportRequestOneOf2Source_Enum>[
    server,
  ];

  static DatabaseImportRequestOneOf2Source_Enum? fromJson(dynamic value) => DatabaseImportRequestOneOf2Source_EnumTypeTransformer().decode(value);

  static List<DatabaseImportRequestOneOf2Source_Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DatabaseImportRequestOneOf2Source_Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DatabaseImportRequestOneOf2Source_Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DatabaseImportRequestOneOf2Source_Enum] to String,
/// and [decode] dynamic data back to [DatabaseImportRequestOneOf2Source_Enum].
class DatabaseImportRequestOneOf2Source_EnumTypeTransformer {
  factory DatabaseImportRequestOneOf2Source_EnumTypeTransformer() => _instance ??= const DatabaseImportRequestOneOf2Source_EnumTypeTransformer._();

  const DatabaseImportRequestOneOf2Source_EnumTypeTransformer._();

  String encode(DatabaseImportRequestOneOf2Source_Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a DatabaseImportRequestOneOf2Source_Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DatabaseImportRequestOneOf2Source_Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'server': return DatabaseImportRequestOneOf2Source_Enum.server;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DatabaseImportRequestOneOf2Source_EnumTypeTransformer] instance.
  static DatabaseImportRequestOneOf2Source_EnumTypeTransformer? _instance;
}


