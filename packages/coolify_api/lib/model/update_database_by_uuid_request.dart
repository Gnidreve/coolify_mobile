//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateDatabaseByUuidRequest {
  /// Returns a new [UpdateDatabaseByUuidRequest] instance.
  UpdateDatabaseByUuidRequest({
    this.name,
    this.description,
    this.image,
    this.isPublic,
    this.publicPort,
    this.publicPortTimeout,
    this.limitsMemory,
    this.limitsMemorySwap,
    this.limitsMemorySwappiness,
    this.limitsMemoryReservation,
    this.limitsCpus,
    this.limitsCpuset,
    this.limitsCpuShares,
    this.instantDeploy,
    this.postgresUser,
    this.postgresPassword,
    this.postgresDb,
    this.postgresInitdbArgs,
    this.postgresHostAuthMethod,
    this.postgresConf,
    this.clickhouseAdminUser,
    this.clickhouseAdminPassword,
    this.dragonflyPassword,
    this.redisPassword,
    this.redisConf,
    this.keydbPassword,
    this.keydbConf,
    this.mariadbConf,
    this.mariadbRootPassword,
    this.mariadbUser,
    this.mariadbPassword,
    this.mariadbDatabase,
    this.mongoConf,
    this.mongoInitdbRootUsername,
    this.mongoInitdbRootPassword,
    this.mongoInitdbDatabase,
    this.mysqlRootPassword,
    this.mysqlPassword,
    this.mysqlUser,
    this.mysqlDatabase,
    this.mysqlConf,
    this.sqliteDatabases,
    this.healthCheckEnabled = true,
    this.healthCheckInterval = 15,
    this.healthCheckTimeout = 5,
    this.healthCheckRetries = 5,
    this.healthCheckStartPeriod = 5,
  });

  /// Name of the database
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Description of the database
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Docker Image of the database
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  /// Is the database public? Changing it starts or stops the database proxy, so it needs a token with the deploy permission.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPublic;

  /// Public port of the database (1024-65535)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? publicPort;

  /// Public port timeout in seconds (default: 3600)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? publicPortTimeout;

  /// Memory limit of the database
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? limitsMemory;

  /// Memory swap limit of the database
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? limitsMemorySwap;

  /// Memory swappiness of the database
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limitsMemorySwappiness;

  /// Memory reservation of the database
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? limitsMemoryReservation;

  /// CPU limit of the database
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? limitsCpus;

  /// CPU set of the database
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? limitsCpuset;

  /// CPU shares of the database
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limitsCpuShares;

  /// Restart the database after the update. Requires the deploy ability.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? instantDeploy;

  /// PostgreSQL user
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? postgresUser;

  /// PostgreSQL password
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? postgresPassword;

  /// PostgreSQL database
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? postgresDb;

  /// PostgreSQL initdb args
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? postgresInitdbArgs;

  /// PostgreSQL host auth method
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? postgresHostAuthMethod;

  /// PostgreSQL conf
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? postgresConf;

  /// Clickhouse admin user
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clickhouseAdminUser;

  /// Clickhouse admin password
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clickhouseAdminPassword;

  /// DragonFly password
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dragonflyPassword;

  /// Redis password
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? redisPassword;

  /// Redis conf
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? redisConf;

  /// KeyDB password
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? keydbPassword;

  /// KeyDB conf
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? keydbConf;

  /// MariaDB conf
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mariadbConf;

  /// MariaDB root password
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mariadbRootPassword;

  /// MariaDB user
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mariadbUser;

  /// MariaDB password
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mariadbPassword;

  /// MariaDB database
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mariadbDatabase;

  /// Mongo conf
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mongoConf;

  /// Mongo initdb root username
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mongoInitdbRootUsername;

  /// Mongo initdb root password
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mongoInitdbRootPassword;

  /// Mongo initdb init database
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mongoInitdbDatabase;

  /// MySQL root password
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mysqlRootPassword;

  /// MySQL password
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mysqlPassword;

  /// MySQL user
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mysqlUser;

  /// MySQL database
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mysqlDatabase;

  /// MySQL conf
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mysqlConf;

  /// Comma-separated SQLite database file names
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sqliteDatabases;

  /// Enable the database healthcheck probe.
  bool healthCheckEnabled;

  /// Healthcheck interval in seconds.
  ///
  /// Minimum value: 1
  int healthCheckInterval;

  /// Healthcheck timeout in seconds.
  ///
  /// Minimum value: 1
  int healthCheckTimeout;

  /// Healthcheck retries count.
  ///
  /// Minimum value: 1
  int healthCheckRetries;

  /// Healthcheck start period in seconds.
  ///
  /// Minimum value: 0
  int healthCheckStartPeriod;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateDatabaseByUuidRequest &&
    other.name == name &&
    other.description == description &&
    other.image == image &&
    other.isPublic == isPublic &&
    other.publicPort == publicPort &&
    other.publicPortTimeout == publicPortTimeout &&
    other.limitsMemory == limitsMemory &&
    other.limitsMemorySwap == limitsMemorySwap &&
    other.limitsMemorySwappiness == limitsMemorySwappiness &&
    other.limitsMemoryReservation == limitsMemoryReservation &&
    other.limitsCpus == limitsCpus &&
    other.limitsCpuset == limitsCpuset &&
    other.limitsCpuShares == limitsCpuShares &&
    other.instantDeploy == instantDeploy &&
    other.postgresUser == postgresUser &&
    other.postgresPassword == postgresPassword &&
    other.postgresDb == postgresDb &&
    other.postgresInitdbArgs == postgresInitdbArgs &&
    other.postgresHostAuthMethod == postgresHostAuthMethod &&
    other.postgresConf == postgresConf &&
    other.clickhouseAdminUser == clickhouseAdminUser &&
    other.clickhouseAdminPassword == clickhouseAdminPassword &&
    other.dragonflyPassword == dragonflyPassword &&
    other.redisPassword == redisPassword &&
    other.redisConf == redisConf &&
    other.keydbPassword == keydbPassword &&
    other.keydbConf == keydbConf &&
    other.mariadbConf == mariadbConf &&
    other.mariadbRootPassword == mariadbRootPassword &&
    other.mariadbUser == mariadbUser &&
    other.mariadbPassword == mariadbPassword &&
    other.mariadbDatabase == mariadbDatabase &&
    other.mongoConf == mongoConf &&
    other.mongoInitdbRootUsername == mongoInitdbRootUsername &&
    other.mongoInitdbRootPassword == mongoInitdbRootPassword &&
    other.mongoInitdbDatabase == mongoInitdbDatabase &&
    other.mysqlRootPassword == mysqlRootPassword &&
    other.mysqlPassword == mysqlPassword &&
    other.mysqlUser == mysqlUser &&
    other.mysqlDatabase == mysqlDatabase &&
    other.mysqlConf == mysqlConf &&
    other.sqliteDatabases == sqliteDatabases &&
    other.healthCheckEnabled == healthCheckEnabled &&
    other.healthCheckInterval == healthCheckInterval &&
    other.healthCheckTimeout == healthCheckTimeout &&
    other.healthCheckRetries == healthCheckRetries &&
    other.healthCheckStartPeriod == healthCheckStartPeriod;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (isPublic == null ? 0 : isPublic!.hashCode) +
    (publicPort == null ? 0 : publicPort!.hashCode) +
    (publicPortTimeout == null ? 0 : publicPortTimeout!.hashCode) +
    (limitsMemory == null ? 0 : limitsMemory!.hashCode) +
    (limitsMemorySwap == null ? 0 : limitsMemorySwap!.hashCode) +
    (limitsMemorySwappiness == null ? 0 : limitsMemorySwappiness!.hashCode) +
    (limitsMemoryReservation == null ? 0 : limitsMemoryReservation!.hashCode) +
    (limitsCpus == null ? 0 : limitsCpus!.hashCode) +
    (limitsCpuset == null ? 0 : limitsCpuset!.hashCode) +
    (limitsCpuShares == null ? 0 : limitsCpuShares!.hashCode) +
    (instantDeploy == null ? 0 : instantDeploy!.hashCode) +
    (postgresUser == null ? 0 : postgresUser!.hashCode) +
    (postgresPassword == null ? 0 : postgresPassword!.hashCode) +
    (postgresDb == null ? 0 : postgresDb!.hashCode) +
    (postgresInitdbArgs == null ? 0 : postgresInitdbArgs!.hashCode) +
    (postgresHostAuthMethod == null ? 0 : postgresHostAuthMethod!.hashCode) +
    (postgresConf == null ? 0 : postgresConf!.hashCode) +
    (clickhouseAdminUser == null ? 0 : clickhouseAdminUser!.hashCode) +
    (clickhouseAdminPassword == null ? 0 : clickhouseAdminPassword!.hashCode) +
    (dragonflyPassword == null ? 0 : dragonflyPassword!.hashCode) +
    (redisPassword == null ? 0 : redisPassword!.hashCode) +
    (redisConf == null ? 0 : redisConf!.hashCode) +
    (keydbPassword == null ? 0 : keydbPassword!.hashCode) +
    (keydbConf == null ? 0 : keydbConf!.hashCode) +
    (mariadbConf == null ? 0 : mariadbConf!.hashCode) +
    (mariadbRootPassword == null ? 0 : mariadbRootPassword!.hashCode) +
    (mariadbUser == null ? 0 : mariadbUser!.hashCode) +
    (mariadbPassword == null ? 0 : mariadbPassword!.hashCode) +
    (mariadbDatabase == null ? 0 : mariadbDatabase!.hashCode) +
    (mongoConf == null ? 0 : mongoConf!.hashCode) +
    (mongoInitdbRootUsername == null ? 0 : mongoInitdbRootUsername!.hashCode) +
    (mongoInitdbRootPassword == null ? 0 : mongoInitdbRootPassword!.hashCode) +
    (mongoInitdbDatabase == null ? 0 : mongoInitdbDatabase!.hashCode) +
    (mysqlRootPassword == null ? 0 : mysqlRootPassword!.hashCode) +
    (mysqlPassword == null ? 0 : mysqlPassword!.hashCode) +
    (mysqlUser == null ? 0 : mysqlUser!.hashCode) +
    (mysqlDatabase == null ? 0 : mysqlDatabase!.hashCode) +
    (mysqlConf == null ? 0 : mysqlConf!.hashCode) +
    (sqliteDatabases == null ? 0 : sqliteDatabases!.hashCode) +
    (healthCheckEnabled.hashCode) +
    (healthCheckInterval.hashCode) +
    (healthCheckTimeout.hashCode) +
    (healthCheckRetries.hashCode) +
    (healthCheckStartPeriod.hashCode);

  @override
  String toString() => 'UpdateDatabaseByUuidRequest[name=$name, description=$description, image=$image, isPublic=$isPublic, publicPort=$publicPort, publicPortTimeout=$publicPortTimeout, limitsMemory=$limitsMemory, limitsMemorySwap=$limitsMemorySwap, limitsMemorySwappiness=$limitsMemorySwappiness, limitsMemoryReservation=$limitsMemoryReservation, limitsCpus=$limitsCpus, limitsCpuset=$limitsCpuset, limitsCpuShares=$limitsCpuShares, instantDeploy=$instantDeploy, postgresUser=$postgresUser, postgresPassword=$postgresPassword, postgresDb=$postgresDb, postgresInitdbArgs=$postgresInitdbArgs, postgresHostAuthMethod=$postgresHostAuthMethod, postgresConf=$postgresConf, clickhouseAdminUser=$clickhouseAdminUser, clickhouseAdminPassword=$clickhouseAdminPassword, dragonflyPassword=$dragonflyPassword, redisPassword=$redisPassword, redisConf=$redisConf, keydbPassword=$keydbPassword, keydbConf=$keydbConf, mariadbConf=$mariadbConf, mariadbRootPassword=$mariadbRootPassword, mariadbUser=$mariadbUser, mariadbPassword=$mariadbPassword, mariadbDatabase=$mariadbDatabase, mongoConf=$mongoConf, mongoInitdbRootUsername=$mongoInitdbRootUsername, mongoInitdbRootPassword=$mongoInitdbRootPassword, mongoInitdbDatabase=$mongoInitdbDatabase, mysqlRootPassword=$mysqlRootPassword, mysqlPassword=$mysqlPassword, mysqlUser=$mysqlUser, mysqlDatabase=$mysqlDatabase, mysqlConf=$mysqlConf, sqliteDatabases=$sqliteDatabases, healthCheckEnabled=$healthCheckEnabled, healthCheckInterval=$healthCheckInterval, healthCheckTimeout=$healthCheckTimeout, healthCheckRetries=$healthCheckRetries, healthCheckStartPeriod=$healthCheckStartPeriod]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.isPublic != null) {
      json[r'is_public'] = this.isPublic;
    } else {
      json[r'is_public'] = null;
    }
    if (this.publicPort != null) {
      json[r'public_port'] = this.publicPort;
    } else {
      json[r'public_port'] = null;
    }
    if (this.publicPortTimeout != null) {
      json[r'public_port_timeout'] = this.publicPortTimeout;
    } else {
      json[r'public_port_timeout'] = null;
    }
    if (this.limitsMemory != null) {
      json[r'limits_memory'] = this.limitsMemory;
    } else {
      json[r'limits_memory'] = null;
    }
    if (this.limitsMemorySwap != null) {
      json[r'limits_memory_swap'] = this.limitsMemorySwap;
    } else {
      json[r'limits_memory_swap'] = null;
    }
    if (this.limitsMemorySwappiness != null) {
      json[r'limits_memory_swappiness'] = this.limitsMemorySwappiness;
    } else {
      json[r'limits_memory_swappiness'] = null;
    }
    if (this.limitsMemoryReservation != null) {
      json[r'limits_memory_reservation'] = this.limitsMemoryReservation;
    } else {
      json[r'limits_memory_reservation'] = null;
    }
    if (this.limitsCpus != null) {
      json[r'limits_cpus'] = this.limitsCpus;
    } else {
      json[r'limits_cpus'] = null;
    }
    if (this.limitsCpuset != null) {
      json[r'limits_cpuset'] = this.limitsCpuset;
    } else {
      json[r'limits_cpuset'] = null;
    }
    if (this.limitsCpuShares != null) {
      json[r'limits_cpu_shares'] = this.limitsCpuShares;
    } else {
      json[r'limits_cpu_shares'] = null;
    }
    if (this.instantDeploy != null) {
      json[r'instant_deploy'] = this.instantDeploy;
    } else {
      json[r'instant_deploy'] = null;
    }
    if (this.postgresUser != null) {
      json[r'postgres_user'] = this.postgresUser;
    } else {
      json[r'postgres_user'] = null;
    }
    if (this.postgresPassword != null) {
      json[r'postgres_password'] = this.postgresPassword;
    } else {
      json[r'postgres_password'] = null;
    }
    if (this.postgresDb != null) {
      json[r'postgres_db'] = this.postgresDb;
    } else {
      json[r'postgres_db'] = null;
    }
    if (this.postgresInitdbArgs != null) {
      json[r'postgres_initdb_args'] = this.postgresInitdbArgs;
    } else {
      json[r'postgres_initdb_args'] = null;
    }
    if (this.postgresHostAuthMethod != null) {
      json[r'postgres_host_auth_method'] = this.postgresHostAuthMethod;
    } else {
      json[r'postgres_host_auth_method'] = null;
    }
    if (this.postgresConf != null) {
      json[r'postgres_conf'] = this.postgresConf;
    } else {
      json[r'postgres_conf'] = null;
    }
    if (this.clickhouseAdminUser != null) {
      json[r'clickhouse_admin_user'] = this.clickhouseAdminUser;
    } else {
      json[r'clickhouse_admin_user'] = null;
    }
    if (this.clickhouseAdminPassword != null) {
      json[r'clickhouse_admin_password'] = this.clickhouseAdminPassword;
    } else {
      json[r'clickhouse_admin_password'] = null;
    }
    if (this.dragonflyPassword != null) {
      json[r'dragonfly_password'] = this.dragonflyPassword;
    } else {
      json[r'dragonfly_password'] = null;
    }
    if (this.redisPassword != null) {
      json[r'redis_password'] = this.redisPassword;
    } else {
      json[r'redis_password'] = null;
    }
    if (this.redisConf != null) {
      json[r'redis_conf'] = this.redisConf;
    } else {
      json[r'redis_conf'] = null;
    }
    if (this.keydbPassword != null) {
      json[r'keydb_password'] = this.keydbPassword;
    } else {
      json[r'keydb_password'] = null;
    }
    if (this.keydbConf != null) {
      json[r'keydb_conf'] = this.keydbConf;
    } else {
      json[r'keydb_conf'] = null;
    }
    if (this.mariadbConf != null) {
      json[r'mariadb_conf'] = this.mariadbConf;
    } else {
      json[r'mariadb_conf'] = null;
    }
    if (this.mariadbRootPassword != null) {
      json[r'mariadb_root_password'] = this.mariadbRootPassword;
    } else {
      json[r'mariadb_root_password'] = null;
    }
    if (this.mariadbUser != null) {
      json[r'mariadb_user'] = this.mariadbUser;
    } else {
      json[r'mariadb_user'] = null;
    }
    if (this.mariadbPassword != null) {
      json[r'mariadb_password'] = this.mariadbPassword;
    } else {
      json[r'mariadb_password'] = null;
    }
    if (this.mariadbDatabase != null) {
      json[r'mariadb_database'] = this.mariadbDatabase;
    } else {
      json[r'mariadb_database'] = null;
    }
    if (this.mongoConf != null) {
      json[r'mongo_conf'] = this.mongoConf;
    } else {
      json[r'mongo_conf'] = null;
    }
    if (this.mongoInitdbRootUsername != null) {
      json[r'mongo_initdb_root_username'] = this.mongoInitdbRootUsername;
    } else {
      json[r'mongo_initdb_root_username'] = null;
    }
    if (this.mongoInitdbRootPassword != null) {
      json[r'mongo_initdb_root_password'] = this.mongoInitdbRootPassword;
    } else {
      json[r'mongo_initdb_root_password'] = null;
    }
    if (this.mongoInitdbDatabase != null) {
      json[r'mongo_initdb_database'] = this.mongoInitdbDatabase;
    } else {
      json[r'mongo_initdb_database'] = null;
    }
    if (this.mysqlRootPassword != null) {
      json[r'mysql_root_password'] = this.mysqlRootPassword;
    } else {
      json[r'mysql_root_password'] = null;
    }
    if (this.mysqlPassword != null) {
      json[r'mysql_password'] = this.mysqlPassword;
    } else {
      json[r'mysql_password'] = null;
    }
    if (this.mysqlUser != null) {
      json[r'mysql_user'] = this.mysqlUser;
    } else {
      json[r'mysql_user'] = null;
    }
    if (this.mysqlDatabase != null) {
      json[r'mysql_database'] = this.mysqlDatabase;
    } else {
      json[r'mysql_database'] = null;
    }
    if (this.mysqlConf != null) {
      json[r'mysql_conf'] = this.mysqlConf;
    } else {
      json[r'mysql_conf'] = null;
    }
    if (this.sqliteDatabases != null) {
      json[r'sqlite_databases'] = this.sqliteDatabases;
    } else {
      json[r'sqlite_databases'] = null;
    }
      json[r'health_check_enabled'] = this.healthCheckEnabled;
      json[r'health_check_interval'] = this.healthCheckInterval;
      json[r'health_check_timeout'] = this.healthCheckTimeout;
      json[r'health_check_retries'] = this.healthCheckRetries;
      json[r'health_check_start_period'] = this.healthCheckStartPeriod;
    return json;
  }

  /// Returns a new [UpdateDatabaseByUuidRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateDatabaseByUuidRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateDatabaseByUuidRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateDatabaseByUuidRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateDatabaseByUuidRequest(
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        image: mapValueOfType<String>(json, r'image'),
        isPublic: mapValueOfType<bool>(json, r'is_public'),
        publicPort: mapValueOfType<int>(json, r'public_port'),
        publicPortTimeout: mapValueOfType<int>(json, r'public_port_timeout'),
        limitsMemory: mapValueOfType<String>(json, r'limits_memory'),
        limitsMemorySwap: mapValueOfType<String>(json, r'limits_memory_swap'),
        limitsMemorySwappiness: mapValueOfType<int>(json, r'limits_memory_swappiness'),
        limitsMemoryReservation: mapValueOfType<String>(json, r'limits_memory_reservation'),
        limitsCpus: mapValueOfType<String>(json, r'limits_cpus'),
        limitsCpuset: mapValueOfType<String>(json, r'limits_cpuset'),
        limitsCpuShares: mapValueOfType<int>(json, r'limits_cpu_shares'),
        instantDeploy: mapValueOfType<bool>(json, r'instant_deploy'),
        postgresUser: mapValueOfType<String>(json, r'postgres_user'),
        postgresPassword: mapValueOfType<String>(json, r'postgres_password'),
        postgresDb: mapValueOfType<String>(json, r'postgres_db'),
        postgresInitdbArgs: mapValueOfType<String>(json, r'postgres_initdb_args'),
        postgresHostAuthMethod: mapValueOfType<String>(json, r'postgres_host_auth_method'),
        postgresConf: mapValueOfType<String>(json, r'postgres_conf'),
        clickhouseAdminUser: mapValueOfType<String>(json, r'clickhouse_admin_user'),
        clickhouseAdminPassword: mapValueOfType<String>(json, r'clickhouse_admin_password'),
        dragonflyPassword: mapValueOfType<String>(json, r'dragonfly_password'),
        redisPassword: mapValueOfType<String>(json, r'redis_password'),
        redisConf: mapValueOfType<String>(json, r'redis_conf'),
        keydbPassword: mapValueOfType<String>(json, r'keydb_password'),
        keydbConf: mapValueOfType<String>(json, r'keydb_conf'),
        mariadbConf: mapValueOfType<String>(json, r'mariadb_conf'),
        mariadbRootPassword: mapValueOfType<String>(json, r'mariadb_root_password'),
        mariadbUser: mapValueOfType<String>(json, r'mariadb_user'),
        mariadbPassword: mapValueOfType<String>(json, r'mariadb_password'),
        mariadbDatabase: mapValueOfType<String>(json, r'mariadb_database'),
        mongoConf: mapValueOfType<String>(json, r'mongo_conf'),
        mongoInitdbRootUsername: mapValueOfType<String>(json, r'mongo_initdb_root_username'),
        mongoInitdbRootPassword: mapValueOfType<String>(json, r'mongo_initdb_root_password'),
        mongoInitdbDatabase: mapValueOfType<String>(json, r'mongo_initdb_database'),
        mysqlRootPassword: mapValueOfType<String>(json, r'mysql_root_password'),
        mysqlPassword: mapValueOfType<String>(json, r'mysql_password'),
        mysqlUser: mapValueOfType<String>(json, r'mysql_user'),
        mysqlDatabase: mapValueOfType<String>(json, r'mysql_database'),
        mysqlConf: mapValueOfType<String>(json, r'mysql_conf'),
        sqliteDatabases: mapValueOfType<String>(json, r'sqlite_databases'),
        healthCheckEnabled: mapValueOfType<bool>(json, r'health_check_enabled') ?? true,
        healthCheckInterval: mapValueOfType<int>(json, r'health_check_interval') ?? 15,
        healthCheckTimeout: mapValueOfType<int>(json, r'health_check_timeout') ?? 5,
        healthCheckRetries: mapValueOfType<int>(json, r'health_check_retries') ?? 5,
        healthCheckStartPeriod: mapValueOfType<int>(json, r'health_check_start_period') ?? 5,
      );
    }
    return null;
  }

  static List<UpdateDatabaseByUuidRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateDatabaseByUuidRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateDatabaseByUuidRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateDatabaseByUuidRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateDatabaseByUuidRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateDatabaseByUuidRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateDatabaseByUuidRequest-objects as value to a dart map
  static Map<String, List<UpdateDatabaseByUuidRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateDatabaseByUuidRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateDatabaseByUuidRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

