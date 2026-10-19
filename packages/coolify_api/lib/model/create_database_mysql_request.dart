//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateDatabaseMysqlRequest {
  /// Returns a new [CreateDatabaseMysqlRequest] instance.
  CreateDatabaseMysqlRequest({
    required this.serverUuid,
    required this.projectUuid,
    required this.environmentName,
    required this.environmentUuid,
    this.destinationUuid,
    this.mysqlRootPassword,
    this.mysqlPassword,
    this.mysqlUser,
    this.mysqlDatabase,
    this.mysqlConf,
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
    this.tags = const [],
  });

  /// UUID of the server
  String serverUuid;

  /// UUID of the project
  String projectUuid;

  /// Name of the environment. You need to provide at least one of environment_name or environment_uuid.
  String environmentName;

  /// UUID of the environment. You need to provide at least one of environment_name or environment_uuid.
  String environmentUuid;

  /// UUID of the destination if the server has multiple destinations
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? destinationUuid;

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

  /// Is the database public?
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPublic;

  /// Public port of the database
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

  /// Instant deploy the database
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? instantDeploy;

  /// Tags to assign to the database.
  List<String> tags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateDatabaseMysqlRequest &&
    other.serverUuid == serverUuid &&
    other.projectUuid == projectUuid &&
    other.environmentName == environmentName &&
    other.environmentUuid == environmentUuid &&
    other.destinationUuid == destinationUuid &&
    other.mysqlRootPassword == mysqlRootPassword &&
    other.mysqlPassword == mysqlPassword &&
    other.mysqlUser == mysqlUser &&
    other.mysqlDatabase == mysqlDatabase &&
    other.mysqlConf == mysqlConf &&
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
    _deepEquality.equals(other.tags, tags);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (serverUuid.hashCode) +
    (projectUuid.hashCode) +
    (environmentName.hashCode) +
    (environmentUuid.hashCode) +
    (destinationUuid == null ? 0 : destinationUuid!.hashCode) +
    (mysqlRootPassword == null ? 0 : mysqlRootPassword!.hashCode) +
    (mysqlPassword == null ? 0 : mysqlPassword!.hashCode) +
    (mysqlUser == null ? 0 : mysqlUser!.hashCode) +
    (mysqlDatabase == null ? 0 : mysqlDatabase!.hashCode) +
    (mysqlConf == null ? 0 : mysqlConf!.hashCode) +
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
    (tags.hashCode);

  @override
  String toString() => 'CreateDatabaseMysqlRequest[serverUuid=$serverUuid, projectUuid=$projectUuid, environmentName=$environmentName, environmentUuid=$environmentUuid, destinationUuid=$destinationUuid, mysqlRootPassword=$mysqlRootPassword, mysqlPassword=$mysqlPassword, mysqlUser=$mysqlUser, mysqlDatabase=$mysqlDatabase, mysqlConf=$mysqlConf, name=$name, description=$description, image=$image, isPublic=$isPublic, publicPort=$publicPort, publicPortTimeout=$publicPortTimeout, limitsMemory=$limitsMemory, limitsMemorySwap=$limitsMemorySwap, limitsMemorySwappiness=$limitsMemorySwappiness, limitsMemoryReservation=$limitsMemoryReservation, limitsCpus=$limitsCpus, limitsCpuset=$limitsCpuset, limitsCpuShares=$limitsCpuShares, instantDeploy=$instantDeploy, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'server_uuid'] = this.serverUuid;
      json[r'project_uuid'] = this.projectUuid;
      json[r'environment_name'] = this.environmentName;
      json[r'environment_uuid'] = this.environmentUuid;
    if (this.destinationUuid != null) {
      json[r'destination_uuid'] = this.destinationUuid;
    } else {
      json[r'destination_uuid'] = null;
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
      json[r'tags'] = this.tags;
    return json;
  }

  /// Returns a new [CreateDatabaseMysqlRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateDatabaseMysqlRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateDatabaseMysqlRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateDatabaseMysqlRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateDatabaseMysqlRequest(
        serverUuid: mapValueOfType<String>(json, r'server_uuid')!,
        projectUuid: mapValueOfType<String>(json, r'project_uuid')!,
        environmentName: mapValueOfType<String>(json, r'environment_name')!,
        environmentUuid: mapValueOfType<String>(json, r'environment_uuid')!,
        destinationUuid: mapValueOfType<String>(json, r'destination_uuid'),
        mysqlRootPassword: mapValueOfType<String>(json, r'mysql_root_password'),
        mysqlPassword: mapValueOfType<String>(json, r'mysql_password'),
        mysqlUser: mapValueOfType<String>(json, r'mysql_user'),
        mysqlDatabase: mapValueOfType<String>(json, r'mysql_database'),
        mysqlConf: mapValueOfType<String>(json, r'mysql_conf'),
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
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<CreateDatabaseMysqlRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateDatabaseMysqlRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDatabaseMysqlRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateDatabaseMysqlRequest> mapFromJson(dynamic json) {
    final map = <String, CreateDatabaseMysqlRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateDatabaseMysqlRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateDatabaseMysqlRequest-objects as value to a dart map
  static Map<String, List<CreateDatabaseMysqlRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateDatabaseMysqlRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateDatabaseMysqlRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'server_uuid',
    'project_uuid',
    'environment_name',
    'environment_uuid',
  };
}

