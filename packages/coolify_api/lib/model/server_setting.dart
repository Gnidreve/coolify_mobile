//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ServerSetting {
  /// Returns a new [ServerSetting] instance.
  ServerSetting({
    this.id,
    this.concurrentBuilds,
    this.deploymentQueueLimit,
    this.backupCompressionCpuPercentage,
    this.dynamicTimeout,
    this.forceDisabled,
    this.forceServerCleanup,
    this.serverRole,
    this.isBuildServer,
    this.isCloudflareTunnel,
    this.isJumpServer,
    this.isLogdrainAxiomEnabled,
    this.isLogdrainCustomEnabled,
    this.isLogdrainHighlightEnabled,
    this.isLogdrainNewrelicEnabled,
    this.isMetricsEnabled,
    this.isTrafficAnalyticsEnabled,
    this.trafficTopn,
    this.trafficSampleThreshold,
    this.trafficRetention1hDays,
    this.trafficRetention1dDays,
    this.isGeoipEnabled,
    this.geoipRefreshDays,
    this.trafficIpMode,
    this.traefikCertificateResolver,
    this.isReachable,
    this.isSentinelEnabled,
    this.isSwarmManager,
    this.isSwarmWorker,
    this.isTerminalEnabled,
    this.isUsable,
    this.logdrainAxiomApiKey,
    this.logdrainAxiomDatasetName,
    this.logdrainCustomConfig,
    this.logdrainCustomConfigParser,
    this.logdrainHighlightProjectId,
    this.logdrainNewrelicBaseUri,
    this.logdrainNewrelicLicenseKey,
    this.sentinelMetricsHistoryDays,
    this.sentinelMetricsRefreshRateSeconds,
    this.sentinelToken,
    this.dockerCleanupFrequency,
    this.dockerCleanupThreshold,
    this.serverId,
    this.wildcardDomain,
    this.createdAt,
    this.updatedAt,
    this.deleteUnusedVolumes,
    this.deleteUnusedNetworks,
    this.connectionTimeout,
    this.dockerVersion,
    this.dockerVersionCheckedAt,
    this.composeVersion,
    this.composeVersionCheckedAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? concurrentBuilds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deploymentQueueLimit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? backupCompressionCpuPercentage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dynamicTimeout;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? forceDisabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? forceServerCleanup;

  ServerSettingServerRoleEnum? serverRole;

  /// Deprecated: use server_role instead. true when server_role is build.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isBuildServer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isCloudflareTunnel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isJumpServer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isLogdrainAxiomEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isLogdrainCustomEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isLogdrainHighlightEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isLogdrainNewrelicEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isMetricsEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isTrafficAnalyticsEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? trafficTopn;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? trafficSampleThreshold;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? trafficRetention1hDays;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? trafficRetention1dDays;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isGeoipEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? geoipRefreshDays;

  ServerSettingTrafficIpModeEnum? trafficIpMode;

  /// Traefik certificate resolver for generated HTTPS routers. Null when the proxy uses its own certificates.
  String? traefikCertificateResolver;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isReachable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSentinelEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSwarmManager;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSwarmWorker;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isTerminalEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isUsable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logdrainAxiomApiKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logdrainAxiomDatasetName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logdrainCustomConfig;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logdrainCustomConfigParser;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logdrainHighlightProjectId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logdrainNewrelicBaseUri;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logdrainNewrelicLicenseKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sentinelMetricsHistoryDays;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sentinelMetricsRefreshRateSeconds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sentinelToken;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dockerCleanupFrequency;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dockerCleanupThreshold;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? serverId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? wildcardDomain;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  /// The flag to indicate if the unused volumes should be deleted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deleteUnusedVolumes;

  /// The flag to indicate if the unused networks should be deleted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deleteUnusedNetworks;

  /// SSH connection timeout in seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? connectionTimeout;

  /// Detected Docker Engine version on the server.
  String? dockerVersion;

  /// When Docker Engine version was last detected.
  String? dockerVersionCheckedAt;

  /// Detected Docker Compose plugin version on the server.
  String? composeVersion;

  /// When Docker Compose version was last detected.
  String? composeVersionCheckedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerSetting &&
    other.id == id &&
    other.concurrentBuilds == concurrentBuilds &&
    other.deploymentQueueLimit == deploymentQueueLimit &&
    other.backupCompressionCpuPercentage == backupCompressionCpuPercentage &&
    other.dynamicTimeout == dynamicTimeout &&
    other.forceDisabled == forceDisabled &&
    other.forceServerCleanup == forceServerCleanup &&
    other.serverRole == serverRole &&
    other.isBuildServer == isBuildServer &&
    other.isCloudflareTunnel == isCloudflareTunnel &&
    other.isJumpServer == isJumpServer &&
    other.isLogdrainAxiomEnabled == isLogdrainAxiomEnabled &&
    other.isLogdrainCustomEnabled == isLogdrainCustomEnabled &&
    other.isLogdrainHighlightEnabled == isLogdrainHighlightEnabled &&
    other.isLogdrainNewrelicEnabled == isLogdrainNewrelicEnabled &&
    other.isMetricsEnabled == isMetricsEnabled &&
    other.isTrafficAnalyticsEnabled == isTrafficAnalyticsEnabled &&
    other.trafficTopn == trafficTopn &&
    other.trafficSampleThreshold == trafficSampleThreshold &&
    other.trafficRetention1hDays == trafficRetention1hDays &&
    other.trafficRetention1dDays == trafficRetention1dDays &&
    other.isGeoipEnabled == isGeoipEnabled &&
    other.geoipRefreshDays == geoipRefreshDays &&
    other.trafficIpMode == trafficIpMode &&
    other.traefikCertificateResolver == traefikCertificateResolver &&
    other.isReachable == isReachable &&
    other.isSentinelEnabled == isSentinelEnabled &&
    other.isSwarmManager == isSwarmManager &&
    other.isSwarmWorker == isSwarmWorker &&
    other.isTerminalEnabled == isTerminalEnabled &&
    other.isUsable == isUsable &&
    other.logdrainAxiomApiKey == logdrainAxiomApiKey &&
    other.logdrainAxiomDatasetName == logdrainAxiomDatasetName &&
    other.logdrainCustomConfig == logdrainCustomConfig &&
    other.logdrainCustomConfigParser == logdrainCustomConfigParser &&
    other.logdrainHighlightProjectId == logdrainHighlightProjectId &&
    other.logdrainNewrelicBaseUri == logdrainNewrelicBaseUri &&
    other.logdrainNewrelicLicenseKey == logdrainNewrelicLicenseKey &&
    other.sentinelMetricsHistoryDays == sentinelMetricsHistoryDays &&
    other.sentinelMetricsRefreshRateSeconds == sentinelMetricsRefreshRateSeconds &&
    other.sentinelToken == sentinelToken &&
    other.dockerCleanupFrequency == dockerCleanupFrequency &&
    other.dockerCleanupThreshold == dockerCleanupThreshold &&
    other.serverId == serverId &&
    other.wildcardDomain == wildcardDomain &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.deleteUnusedVolumes == deleteUnusedVolumes &&
    other.deleteUnusedNetworks == deleteUnusedNetworks &&
    other.connectionTimeout == connectionTimeout &&
    other.dockerVersion == dockerVersion &&
    other.dockerVersionCheckedAt == dockerVersionCheckedAt &&
    other.composeVersion == composeVersion &&
    other.composeVersionCheckedAt == composeVersionCheckedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (concurrentBuilds == null ? 0 : concurrentBuilds!.hashCode) +
    (deploymentQueueLimit == null ? 0 : deploymentQueueLimit!.hashCode) +
    (backupCompressionCpuPercentage == null ? 0 : backupCompressionCpuPercentage!.hashCode) +
    (dynamicTimeout == null ? 0 : dynamicTimeout!.hashCode) +
    (forceDisabled == null ? 0 : forceDisabled!.hashCode) +
    (forceServerCleanup == null ? 0 : forceServerCleanup!.hashCode) +
    (serverRole == null ? 0 : serverRole!.hashCode) +
    (isBuildServer == null ? 0 : isBuildServer!.hashCode) +
    (isCloudflareTunnel == null ? 0 : isCloudflareTunnel!.hashCode) +
    (isJumpServer == null ? 0 : isJumpServer!.hashCode) +
    (isLogdrainAxiomEnabled == null ? 0 : isLogdrainAxiomEnabled!.hashCode) +
    (isLogdrainCustomEnabled == null ? 0 : isLogdrainCustomEnabled!.hashCode) +
    (isLogdrainHighlightEnabled == null ? 0 : isLogdrainHighlightEnabled!.hashCode) +
    (isLogdrainNewrelicEnabled == null ? 0 : isLogdrainNewrelicEnabled!.hashCode) +
    (isMetricsEnabled == null ? 0 : isMetricsEnabled!.hashCode) +
    (isTrafficAnalyticsEnabled == null ? 0 : isTrafficAnalyticsEnabled!.hashCode) +
    (trafficTopn == null ? 0 : trafficTopn!.hashCode) +
    (trafficSampleThreshold == null ? 0 : trafficSampleThreshold!.hashCode) +
    (trafficRetention1hDays == null ? 0 : trafficRetention1hDays!.hashCode) +
    (trafficRetention1dDays == null ? 0 : trafficRetention1dDays!.hashCode) +
    (isGeoipEnabled == null ? 0 : isGeoipEnabled!.hashCode) +
    (geoipRefreshDays == null ? 0 : geoipRefreshDays!.hashCode) +
    (trafficIpMode == null ? 0 : trafficIpMode!.hashCode) +
    (traefikCertificateResolver == null ? 0 : traefikCertificateResolver!.hashCode) +
    (isReachable == null ? 0 : isReachable!.hashCode) +
    (isSentinelEnabled == null ? 0 : isSentinelEnabled!.hashCode) +
    (isSwarmManager == null ? 0 : isSwarmManager!.hashCode) +
    (isSwarmWorker == null ? 0 : isSwarmWorker!.hashCode) +
    (isTerminalEnabled == null ? 0 : isTerminalEnabled!.hashCode) +
    (isUsable == null ? 0 : isUsable!.hashCode) +
    (logdrainAxiomApiKey == null ? 0 : logdrainAxiomApiKey!.hashCode) +
    (logdrainAxiomDatasetName == null ? 0 : logdrainAxiomDatasetName!.hashCode) +
    (logdrainCustomConfig == null ? 0 : logdrainCustomConfig!.hashCode) +
    (logdrainCustomConfigParser == null ? 0 : logdrainCustomConfigParser!.hashCode) +
    (logdrainHighlightProjectId == null ? 0 : logdrainHighlightProjectId!.hashCode) +
    (logdrainNewrelicBaseUri == null ? 0 : logdrainNewrelicBaseUri!.hashCode) +
    (logdrainNewrelicLicenseKey == null ? 0 : logdrainNewrelicLicenseKey!.hashCode) +
    (sentinelMetricsHistoryDays == null ? 0 : sentinelMetricsHistoryDays!.hashCode) +
    (sentinelMetricsRefreshRateSeconds == null ? 0 : sentinelMetricsRefreshRateSeconds!.hashCode) +
    (sentinelToken == null ? 0 : sentinelToken!.hashCode) +
    (dockerCleanupFrequency == null ? 0 : dockerCleanupFrequency!.hashCode) +
    (dockerCleanupThreshold == null ? 0 : dockerCleanupThreshold!.hashCode) +
    (serverId == null ? 0 : serverId!.hashCode) +
    (wildcardDomain == null ? 0 : wildcardDomain!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (deleteUnusedVolumes == null ? 0 : deleteUnusedVolumes!.hashCode) +
    (deleteUnusedNetworks == null ? 0 : deleteUnusedNetworks!.hashCode) +
    (connectionTimeout == null ? 0 : connectionTimeout!.hashCode) +
    (dockerVersion == null ? 0 : dockerVersion!.hashCode) +
    (dockerVersionCheckedAt == null ? 0 : dockerVersionCheckedAt!.hashCode) +
    (composeVersion == null ? 0 : composeVersion!.hashCode) +
    (composeVersionCheckedAt == null ? 0 : composeVersionCheckedAt!.hashCode);

  @override
  String toString() => 'ServerSetting[id=$id, concurrentBuilds=$concurrentBuilds, deploymentQueueLimit=$deploymentQueueLimit, backupCompressionCpuPercentage=$backupCompressionCpuPercentage, dynamicTimeout=$dynamicTimeout, forceDisabled=$forceDisabled, forceServerCleanup=$forceServerCleanup, serverRole=$serverRole, isBuildServer=$isBuildServer, isCloudflareTunnel=$isCloudflareTunnel, isJumpServer=$isJumpServer, isLogdrainAxiomEnabled=$isLogdrainAxiomEnabled, isLogdrainCustomEnabled=$isLogdrainCustomEnabled, isLogdrainHighlightEnabled=$isLogdrainHighlightEnabled, isLogdrainNewrelicEnabled=$isLogdrainNewrelicEnabled, isMetricsEnabled=$isMetricsEnabled, isTrafficAnalyticsEnabled=$isTrafficAnalyticsEnabled, trafficTopn=$trafficTopn, trafficSampleThreshold=$trafficSampleThreshold, trafficRetention1hDays=$trafficRetention1hDays, trafficRetention1dDays=$trafficRetention1dDays, isGeoipEnabled=$isGeoipEnabled, geoipRefreshDays=$geoipRefreshDays, trafficIpMode=$trafficIpMode, traefikCertificateResolver=$traefikCertificateResolver, isReachable=$isReachable, isSentinelEnabled=$isSentinelEnabled, isSwarmManager=$isSwarmManager, isSwarmWorker=$isSwarmWorker, isTerminalEnabled=$isTerminalEnabled, isUsable=$isUsable, logdrainAxiomApiKey=$logdrainAxiomApiKey, logdrainAxiomDatasetName=$logdrainAxiomDatasetName, logdrainCustomConfig=$logdrainCustomConfig, logdrainCustomConfigParser=$logdrainCustomConfigParser, logdrainHighlightProjectId=$logdrainHighlightProjectId, logdrainNewrelicBaseUri=$logdrainNewrelicBaseUri, logdrainNewrelicLicenseKey=$logdrainNewrelicLicenseKey, sentinelMetricsHistoryDays=$sentinelMetricsHistoryDays, sentinelMetricsRefreshRateSeconds=$sentinelMetricsRefreshRateSeconds, sentinelToken=$sentinelToken, dockerCleanupFrequency=$dockerCleanupFrequency, dockerCleanupThreshold=$dockerCleanupThreshold, serverId=$serverId, wildcardDomain=$wildcardDomain, createdAt=$createdAt, updatedAt=$updatedAt, deleteUnusedVolumes=$deleteUnusedVolumes, deleteUnusedNetworks=$deleteUnusedNetworks, connectionTimeout=$connectionTimeout, dockerVersion=$dockerVersion, dockerVersionCheckedAt=$dockerVersionCheckedAt, composeVersion=$composeVersion, composeVersionCheckedAt=$composeVersionCheckedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.concurrentBuilds != null) {
      json[r'concurrent_builds'] = this.concurrentBuilds;
    } else {
      json[r'concurrent_builds'] = null;
    }
    if (this.deploymentQueueLimit != null) {
      json[r'deployment_queue_limit'] = this.deploymentQueueLimit;
    } else {
      json[r'deployment_queue_limit'] = null;
    }
    if (this.backupCompressionCpuPercentage != null) {
      json[r'backup_compression_cpu_percentage'] = this.backupCompressionCpuPercentage;
    } else {
      json[r'backup_compression_cpu_percentage'] = null;
    }
    if (this.dynamicTimeout != null) {
      json[r'dynamic_timeout'] = this.dynamicTimeout;
    } else {
      json[r'dynamic_timeout'] = null;
    }
    if (this.forceDisabled != null) {
      json[r'force_disabled'] = this.forceDisabled;
    } else {
      json[r'force_disabled'] = null;
    }
    if (this.forceServerCleanup != null) {
      json[r'force_server_cleanup'] = this.forceServerCleanup;
    } else {
      json[r'force_server_cleanup'] = null;
    }
    if (this.serverRole != null) {
      json[r'server_role'] = this.serverRole;
    } else {
      json[r'server_role'] = null;
    }
    if (this.isBuildServer != null) {
      json[r'is_build_server'] = this.isBuildServer;
    } else {
      json[r'is_build_server'] = null;
    }
    if (this.isCloudflareTunnel != null) {
      json[r'is_cloudflare_tunnel'] = this.isCloudflareTunnel;
    } else {
      json[r'is_cloudflare_tunnel'] = null;
    }
    if (this.isJumpServer != null) {
      json[r'is_jump_server'] = this.isJumpServer;
    } else {
      json[r'is_jump_server'] = null;
    }
    if (this.isLogdrainAxiomEnabled != null) {
      json[r'is_logdrain_axiom_enabled'] = this.isLogdrainAxiomEnabled;
    } else {
      json[r'is_logdrain_axiom_enabled'] = null;
    }
    if (this.isLogdrainCustomEnabled != null) {
      json[r'is_logdrain_custom_enabled'] = this.isLogdrainCustomEnabled;
    } else {
      json[r'is_logdrain_custom_enabled'] = null;
    }
    if (this.isLogdrainHighlightEnabled != null) {
      json[r'is_logdrain_highlight_enabled'] = this.isLogdrainHighlightEnabled;
    } else {
      json[r'is_logdrain_highlight_enabled'] = null;
    }
    if (this.isLogdrainNewrelicEnabled != null) {
      json[r'is_logdrain_newrelic_enabled'] = this.isLogdrainNewrelicEnabled;
    } else {
      json[r'is_logdrain_newrelic_enabled'] = null;
    }
    if (this.isMetricsEnabled != null) {
      json[r'is_metrics_enabled'] = this.isMetricsEnabled;
    } else {
      json[r'is_metrics_enabled'] = null;
    }
    if (this.isTrafficAnalyticsEnabled != null) {
      json[r'is_traffic_analytics_enabled'] = this.isTrafficAnalyticsEnabled;
    } else {
      json[r'is_traffic_analytics_enabled'] = null;
    }
    if (this.trafficTopn != null) {
      json[r'traffic_topn'] = this.trafficTopn;
    } else {
      json[r'traffic_topn'] = null;
    }
    if (this.trafficSampleThreshold != null) {
      json[r'traffic_sample_threshold'] = this.trafficSampleThreshold;
    } else {
      json[r'traffic_sample_threshold'] = null;
    }
    if (this.trafficRetention1hDays != null) {
      json[r'traffic_retention_1h_days'] = this.trafficRetention1hDays;
    } else {
      json[r'traffic_retention_1h_days'] = null;
    }
    if (this.trafficRetention1dDays != null) {
      json[r'traffic_retention_1d_days'] = this.trafficRetention1dDays;
    } else {
      json[r'traffic_retention_1d_days'] = null;
    }
    if (this.isGeoipEnabled != null) {
      json[r'is_geoip_enabled'] = this.isGeoipEnabled;
    } else {
      json[r'is_geoip_enabled'] = null;
    }
    if (this.geoipRefreshDays != null) {
      json[r'geoip_refresh_days'] = this.geoipRefreshDays;
    } else {
      json[r'geoip_refresh_days'] = null;
    }
    if (this.trafficIpMode != null) {
      json[r'traffic_ip_mode'] = this.trafficIpMode;
    } else {
      json[r'traffic_ip_mode'] = null;
    }
    if (this.traefikCertificateResolver != null) {
      json[r'traefik_certificate_resolver'] = this.traefikCertificateResolver;
    } else {
      json[r'traefik_certificate_resolver'] = null;
    }
    if (this.isReachable != null) {
      json[r'is_reachable'] = this.isReachable;
    } else {
      json[r'is_reachable'] = null;
    }
    if (this.isSentinelEnabled != null) {
      json[r'is_sentinel_enabled'] = this.isSentinelEnabled;
    } else {
      json[r'is_sentinel_enabled'] = null;
    }
    if (this.isSwarmManager != null) {
      json[r'is_swarm_manager'] = this.isSwarmManager;
    } else {
      json[r'is_swarm_manager'] = null;
    }
    if (this.isSwarmWorker != null) {
      json[r'is_swarm_worker'] = this.isSwarmWorker;
    } else {
      json[r'is_swarm_worker'] = null;
    }
    if (this.isTerminalEnabled != null) {
      json[r'is_terminal_enabled'] = this.isTerminalEnabled;
    } else {
      json[r'is_terminal_enabled'] = null;
    }
    if (this.isUsable != null) {
      json[r'is_usable'] = this.isUsable;
    } else {
      json[r'is_usable'] = null;
    }
    if (this.logdrainAxiomApiKey != null) {
      json[r'logdrain_axiom_api_key'] = this.logdrainAxiomApiKey;
    } else {
      json[r'logdrain_axiom_api_key'] = null;
    }
    if (this.logdrainAxiomDatasetName != null) {
      json[r'logdrain_axiom_dataset_name'] = this.logdrainAxiomDatasetName;
    } else {
      json[r'logdrain_axiom_dataset_name'] = null;
    }
    if (this.logdrainCustomConfig != null) {
      json[r'logdrain_custom_config'] = this.logdrainCustomConfig;
    } else {
      json[r'logdrain_custom_config'] = null;
    }
    if (this.logdrainCustomConfigParser != null) {
      json[r'logdrain_custom_config_parser'] = this.logdrainCustomConfigParser;
    } else {
      json[r'logdrain_custom_config_parser'] = null;
    }
    if (this.logdrainHighlightProjectId != null) {
      json[r'logdrain_highlight_project_id'] = this.logdrainHighlightProjectId;
    } else {
      json[r'logdrain_highlight_project_id'] = null;
    }
    if (this.logdrainNewrelicBaseUri != null) {
      json[r'logdrain_newrelic_base_uri'] = this.logdrainNewrelicBaseUri;
    } else {
      json[r'logdrain_newrelic_base_uri'] = null;
    }
    if (this.logdrainNewrelicLicenseKey != null) {
      json[r'logdrain_newrelic_license_key'] = this.logdrainNewrelicLicenseKey;
    } else {
      json[r'logdrain_newrelic_license_key'] = null;
    }
    if (this.sentinelMetricsHistoryDays != null) {
      json[r'sentinel_metrics_history_days'] = this.sentinelMetricsHistoryDays;
    } else {
      json[r'sentinel_metrics_history_days'] = null;
    }
    if (this.sentinelMetricsRefreshRateSeconds != null) {
      json[r'sentinel_metrics_refresh_rate_seconds'] = this.sentinelMetricsRefreshRateSeconds;
    } else {
      json[r'sentinel_metrics_refresh_rate_seconds'] = null;
    }
    if (this.sentinelToken != null) {
      json[r'sentinel_token'] = this.sentinelToken;
    } else {
      json[r'sentinel_token'] = null;
    }
    if (this.dockerCleanupFrequency != null) {
      json[r'docker_cleanup_frequency'] = this.dockerCleanupFrequency;
    } else {
      json[r'docker_cleanup_frequency'] = null;
    }
    if (this.dockerCleanupThreshold != null) {
      json[r'docker_cleanup_threshold'] = this.dockerCleanupThreshold;
    } else {
      json[r'docker_cleanup_threshold'] = null;
    }
    if (this.serverId != null) {
      json[r'server_id'] = this.serverId;
    } else {
      json[r'server_id'] = null;
    }
    if (this.wildcardDomain != null) {
      json[r'wildcard_domain'] = this.wildcardDomain;
    } else {
      json[r'wildcard_domain'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt;
    } else {
      json[r'created_at'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt;
    } else {
      json[r'updated_at'] = null;
    }
    if (this.deleteUnusedVolumes != null) {
      json[r'delete_unused_volumes'] = this.deleteUnusedVolumes;
    } else {
      json[r'delete_unused_volumes'] = null;
    }
    if (this.deleteUnusedNetworks != null) {
      json[r'delete_unused_networks'] = this.deleteUnusedNetworks;
    } else {
      json[r'delete_unused_networks'] = null;
    }
    if (this.connectionTimeout != null) {
      json[r'connection_timeout'] = this.connectionTimeout;
    } else {
      json[r'connection_timeout'] = null;
    }
    if (this.dockerVersion != null) {
      json[r'docker_version'] = this.dockerVersion;
    } else {
      json[r'docker_version'] = null;
    }
    if (this.dockerVersionCheckedAt != null) {
      json[r'docker_version_checked_at'] = this.dockerVersionCheckedAt;
    } else {
      json[r'docker_version_checked_at'] = null;
    }
    if (this.composeVersion != null) {
      json[r'compose_version'] = this.composeVersion;
    } else {
      json[r'compose_version'] = null;
    }
    if (this.composeVersionCheckedAt != null) {
      json[r'compose_version_checked_at'] = this.composeVersionCheckedAt;
    } else {
      json[r'compose_version_checked_at'] = null;
    }
    return json;
  }

  /// Returns a new [ServerSetting] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerSetting? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ServerSetting[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ServerSetting[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ServerSetting(
        id: mapValueOfType<int>(json, r'id'),
        concurrentBuilds: mapValueOfType<int>(json, r'concurrent_builds'),
        deploymentQueueLimit: mapValueOfType<int>(json, r'deployment_queue_limit'),
        backupCompressionCpuPercentage: mapValueOfType<int>(json, r'backup_compression_cpu_percentage'),
        dynamicTimeout: mapValueOfType<int>(json, r'dynamic_timeout'),
        forceDisabled: mapValueOfType<bool>(json, r'force_disabled'),
        forceServerCleanup: mapValueOfType<bool>(json, r'force_server_cleanup'),
        serverRole: ServerSettingServerRoleEnum.fromJson(json[r'server_role']),
        isBuildServer: mapValueOfType<bool>(json, r'is_build_server'),
        isCloudflareTunnel: mapValueOfType<bool>(json, r'is_cloudflare_tunnel'),
        isJumpServer: mapValueOfType<bool>(json, r'is_jump_server'),
        isLogdrainAxiomEnabled: mapValueOfType<bool>(json, r'is_logdrain_axiom_enabled'),
        isLogdrainCustomEnabled: mapValueOfType<bool>(json, r'is_logdrain_custom_enabled'),
        isLogdrainHighlightEnabled: mapValueOfType<bool>(json, r'is_logdrain_highlight_enabled'),
        isLogdrainNewrelicEnabled: mapValueOfType<bool>(json, r'is_logdrain_newrelic_enabled'),
        isMetricsEnabled: mapValueOfType<bool>(json, r'is_metrics_enabled'),
        isTrafficAnalyticsEnabled: mapValueOfType<bool>(json, r'is_traffic_analytics_enabled'),
        trafficTopn: mapValueOfType<int>(json, r'traffic_topn'),
        trafficSampleThreshold: mapValueOfType<int>(json, r'traffic_sample_threshold'),
        trafficRetention1hDays: mapValueOfType<int>(json, r'traffic_retention_1h_days'),
        trafficRetention1dDays: mapValueOfType<int>(json, r'traffic_retention_1d_days'),
        isGeoipEnabled: mapValueOfType<bool>(json, r'is_geoip_enabled'),
        geoipRefreshDays: mapValueOfType<int>(json, r'geoip_refresh_days'),
        trafficIpMode: ServerSettingTrafficIpModeEnum.fromJson(json[r'traffic_ip_mode']),
        traefikCertificateResolver: mapValueOfType<String>(json, r'traefik_certificate_resolver'),
        isReachable: mapValueOfType<bool>(json, r'is_reachable'),
        isSentinelEnabled: mapValueOfType<bool>(json, r'is_sentinel_enabled'),
        isSwarmManager: mapValueOfType<bool>(json, r'is_swarm_manager'),
        isSwarmWorker: mapValueOfType<bool>(json, r'is_swarm_worker'),
        isTerminalEnabled: mapValueOfType<bool>(json, r'is_terminal_enabled'),
        isUsable: mapValueOfType<bool>(json, r'is_usable'),
        logdrainAxiomApiKey: mapValueOfType<String>(json, r'logdrain_axiom_api_key'),
        logdrainAxiomDatasetName: mapValueOfType<String>(json, r'logdrain_axiom_dataset_name'),
        logdrainCustomConfig: mapValueOfType<String>(json, r'logdrain_custom_config'),
        logdrainCustomConfigParser: mapValueOfType<String>(json, r'logdrain_custom_config_parser'),
        logdrainHighlightProjectId: mapValueOfType<String>(json, r'logdrain_highlight_project_id'),
        logdrainNewrelicBaseUri: mapValueOfType<String>(json, r'logdrain_newrelic_base_uri'),
        logdrainNewrelicLicenseKey: mapValueOfType<String>(json, r'logdrain_newrelic_license_key'),
        sentinelMetricsHistoryDays: mapValueOfType<int>(json, r'sentinel_metrics_history_days'),
        sentinelMetricsRefreshRateSeconds: mapValueOfType<int>(json, r'sentinel_metrics_refresh_rate_seconds'),
        sentinelToken: mapValueOfType<String>(json, r'sentinel_token'),
        dockerCleanupFrequency: mapValueOfType<String>(json, r'docker_cleanup_frequency'),
        dockerCleanupThreshold: mapValueOfType<int>(json, r'docker_cleanup_threshold'),
        serverId: mapValueOfType<int>(json, r'server_id'),
        wildcardDomain: mapValueOfType<String>(json, r'wildcard_domain'),
        createdAt: mapValueOfType<String>(json, r'created_at'),
        updatedAt: mapValueOfType<String>(json, r'updated_at'),
        deleteUnusedVolumes: mapValueOfType<bool>(json, r'delete_unused_volumes'),
        deleteUnusedNetworks: mapValueOfType<bool>(json, r'delete_unused_networks'),
        connectionTimeout: mapValueOfType<int>(json, r'connection_timeout'),
        dockerVersion: mapValueOfType<String>(json, r'docker_version'),
        dockerVersionCheckedAt: mapValueOfType<String>(json, r'docker_version_checked_at'),
        composeVersion: mapValueOfType<String>(json, r'compose_version'),
        composeVersionCheckedAt: mapValueOfType<String>(json, r'compose_version_checked_at'),
      );
    }
    return null;
  }

  static List<ServerSetting> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerSetting>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerSetting.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServerSetting> mapFromJson(dynamic json) {
    final map = <String, ServerSetting>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServerSetting.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServerSetting-objects as value to a dart map
  static Map<String, List<ServerSetting>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServerSetting>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServerSetting.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ServerSettingServerRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const ServerSettingServerRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const deployment = ServerSettingServerRoleEnum._(r'deployment');
  static const build = ServerSettingServerRoleEnum._(r'build');
  static const both = ServerSettingServerRoleEnum._(r'both');

  /// List of all possible values in this [enum][ServerSettingServerRoleEnum].
  static const values = <ServerSettingServerRoleEnum>[
    deployment,
    build,
    both,
  ];

  static ServerSettingServerRoleEnum? fromJson(dynamic value) => ServerSettingServerRoleEnumTypeTransformer().decode(value);

  static List<ServerSettingServerRoleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerSettingServerRoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerSettingServerRoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ServerSettingServerRoleEnum] to String,
/// and [decode] dynamic data back to [ServerSettingServerRoleEnum].
class ServerSettingServerRoleEnumTypeTransformer {
  factory ServerSettingServerRoleEnumTypeTransformer() => _instance ??= const ServerSettingServerRoleEnumTypeTransformer._();

  const ServerSettingServerRoleEnumTypeTransformer._();

  String encode(ServerSettingServerRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ServerSettingServerRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ServerSettingServerRoleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'deployment': return ServerSettingServerRoleEnum.deployment;
        case r'build': return ServerSettingServerRoleEnum.build;
        case r'both': return ServerSettingServerRoleEnum.both;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ServerSettingServerRoleEnumTypeTransformer] instance.
  static ServerSettingServerRoleEnumTypeTransformer? _instance;
}



class ServerSettingTrafficIpModeEnum {
  /// Instantiate a new enum with the provided [value].
  const ServerSettingTrafficIpModeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const full = ServerSettingTrafficIpModeEnum._(r'full');
  static const anonymized = ServerSettingTrafficIpModeEnum._(r'anonymized');
  static const off = ServerSettingTrafficIpModeEnum._(r'off');

  /// List of all possible values in this [enum][ServerSettingTrafficIpModeEnum].
  static const values = <ServerSettingTrafficIpModeEnum>[
    full,
    anonymized,
    off,
  ];

  static ServerSettingTrafficIpModeEnum? fromJson(dynamic value) => ServerSettingTrafficIpModeEnumTypeTransformer().decode(value);

  static List<ServerSettingTrafficIpModeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerSettingTrafficIpModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerSettingTrafficIpModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ServerSettingTrafficIpModeEnum] to String,
/// and [decode] dynamic data back to [ServerSettingTrafficIpModeEnum].
class ServerSettingTrafficIpModeEnumTypeTransformer {
  factory ServerSettingTrafficIpModeEnumTypeTransformer() => _instance ??= const ServerSettingTrafficIpModeEnumTypeTransformer._();

  const ServerSettingTrafficIpModeEnumTypeTransformer._();

  String encode(ServerSettingTrafficIpModeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ServerSettingTrafficIpModeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ServerSettingTrafficIpModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'full': return ServerSettingTrafficIpModeEnum.full;
        case r'anonymized': return ServerSettingTrafficIpModeEnum.anonymized;
        case r'off': return ServerSettingTrafficIpModeEnum.off;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ServerSettingTrafficIpModeEnumTypeTransformer] instance.
  static ServerSettingTrafficIpModeEnumTypeTransformer? _instance;
}


