//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetServerSentinel200Response {
  /// Returns a new [GetServerSentinel200Response] instance.
  GetServerSentinel200Response({
    this.isSentinelEnabled,
    this.isMetricsEnabled,
    this.isSentinelDebugEnabled,
    this.sentinelToken,
    this.sentinelMetricsRefreshRateSeconds,
    this.sentinelMetricsHistoryDays,
    this.sentinelPushIntervalSeconds,
    this.sentinelCustomUrl,
    this.sentinelUpdatedAt,
    this.trafficTopn,
    this.trafficSampleThreshold,
    this.trafficRetention1hDays,
    this.trafficRetention1dDays,
    this.isGeoipEnabled,
    this.geoipRefreshDays,
    this.trafficIpMode,
    this.geoipMaxmindLicenseKey,
  });

  /// Sentinel is mandatory on regular managed servers.
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
  bool? isMetricsEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSentinelDebugEnabled;

  /// Only present with read:sensitive.
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
  int? sentinelMetricsRefreshRateSeconds;

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
  int? sentinelPushIntervalSeconds;

  /// Only present with read:sensitive.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sentinelCustomUrl;

  Object? sentinelUpdatedAt;

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

  /// How Sentinel stores client IPs for the Top IPs breakdown.
  GetServerSentinel200ResponseTrafficIpModeEnum? trafficIpMode;

  /// Only present with read:sensitive.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? geoipMaxmindLicenseKey;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetServerSentinel200Response &&
    other.isSentinelEnabled == isSentinelEnabled &&
    other.isMetricsEnabled == isMetricsEnabled &&
    other.isSentinelDebugEnabled == isSentinelDebugEnabled &&
    other.sentinelToken == sentinelToken &&
    other.sentinelMetricsRefreshRateSeconds == sentinelMetricsRefreshRateSeconds &&
    other.sentinelMetricsHistoryDays == sentinelMetricsHistoryDays &&
    other.sentinelPushIntervalSeconds == sentinelPushIntervalSeconds &&
    other.sentinelCustomUrl == sentinelCustomUrl &&
    other.sentinelUpdatedAt == sentinelUpdatedAt &&
    other.trafficTopn == trafficTopn &&
    other.trafficSampleThreshold == trafficSampleThreshold &&
    other.trafficRetention1hDays == trafficRetention1hDays &&
    other.trafficRetention1dDays == trafficRetention1dDays &&
    other.isGeoipEnabled == isGeoipEnabled &&
    other.geoipRefreshDays == geoipRefreshDays &&
    other.trafficIpMode == trafficIpMode &&
    other.geoipMaxmindLicenseKey == geoipMaxmindLicenseKey;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (isSentinelEnabled == null ? 0 : isSentinelEnabled!.hashCode) +
    (isMetricsEnabled == null ? 0 : isMetricsEnabled!.hashCode) +
    (isSentinelDebugEnabled == null ? 0 : isSentinelDebugEnabled!.hashCode) +
    (sentinelToken == null ? 0 : sentinelToken!.hashCode) +
    (sentinelMetricsRefreshRateSeconds == null ? 0 : sentinelMetricsRefreshRateSeconds!.hashCode) +
    (sentinelMetricsHistoryDays == null ? 0 : sentinelMetricsHistoryDays!.hashCode) +
    (sentinelPushIntervalSeconds == null ? 0 : sentinelPushIntervalSeconds!.hashCode) +
    (sentinelCustomUrl == null ? 0 : sentinelCustomUrl!.hashCode) +
    (sentinelUpdatedAt == null ? 0 : sentinelUpdatedAt!.hashCode) +
    (trafficTopn == null ? 0 : trafficTopn!.hashCode) +
    (trafficSampleThreshold == null ? 0 : trafficSampleThreshold!.hashCode) +
    (trafficRetention1hDays == null ? 0 : trafficRetention1hDays!.hashCode) +
    (trafficRetention1dDays == null ? 0 : trafficRetention1dDays!.hashCode) +
    (isGeoipEnabled == null ? 0 : isGeoipEnabled!.hashCode) +
    (geoipRefreshDays == null ? 0 : geoipRefreshDays!.hashCode) +
    (trafficIpMode == null ? 0 : trafficIpMode!.hashCode) +
    (geoipMaxmindLicenseKey == null ? 0 : geoipMaxmindLicenseKey!.hashCode);

  @override
  String toString() => 'GetServerSentinel200Response[isSentinelEnabled=$isSentinelEnabled, isMetricsEnabled=$isMetricsEnabled, isSentinelDebugEnabled=$isSentinelDebugEnabled, sentinelToken=$sentinelToken, sentinelMetricsRefreshRateSeconds=$sentinelMetricsRefreshRateSeconds, sentinelMetricsHistoryDays=$sentinelMetricsHistoryDays, sentinelPushIntervalSeconds=$sentinelPushIntervalSeconds, sentinelCustomUrl=$sentinelCustomUrl, sentinelUpdatedAt=$sentinelUpdatedAt, trafficTopn=$trafficTopn, trafficSampleThreshold=$trafficSampleThreshold, trafficRetention1hDays=$trafficRetention1hDays, trafficRetention1dDays=$trafficRetention1dDays, isGeoipEnabled=$isGeoipEnabled, geoipRefreshDays=$geoipRefreshDays, trafficIpMode=$trafficIpMode, geoipMaxmindLicenseKey=$geoipMaxmindLicenseKey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.isSentinelEnabled != null) {
      json[r'is_sentinel_enabled'] = this.isSentinelEnabled;
    } else {
      json[r'is_sentinel_enabled'] = null;
    }
    if (this.isMetricsEnabled != null) {
      json[r'is_metrics_enabled'] = this.isMetricsEnabled;
    } else {
      json[r'is_metrics_enabled'] = null;
    }
    if (this.isSentinelDebugEnabled != null) {
      json[r'is_sentinel_debug_enabled'] = this.isSentinelDebugEnabled;
    } else {
      json[r'is_sentinel_debug_enabled'] = null;
    }
    if (this.sentinelToken != null) {
      json[r'sentinel_token'] = this.sentinelToken;
    } else {
      json[r'sentinel_token'] = null;
    }
    if (this.sentinelMetricsRefreshRateSeconds != null) {
      json[r'sentinel_metrics_refresh_rate_seconds'] = this.sentinelMetricsRefreshRateSeconds;
    } else {
      json[r'sentinel_metrics_refresh_rate_seconds'] = null;
    }
    if (this.sentinelMetricsHistoryDays != null) {
      json[r'sentinel_metrics_history_days'] = this.sentinelMetricsHistoryDays;
    } else {
      json[r'sentinel_metrics_history_days'] = null;
    }
    if (this.sentinelPushIntervalSeconds != null) {
      json[r'sentinel_push_interval_seconds'] = this.sentinelPushIntervalSeconds;
    } else {
      json[r'sentinel_push_interval_seconds'] = null;
    }
    if (this.sentinelCustomUrl != null) {
      json[r'sentinel_custom_url'] = this.sentinelCustomUrl;
    } else {
      json[r'sentinel_custom_url'] = null;
    }
    if (this.sentinelUpdatedAt != null) {
      json[r'sentinel_updated_at'] = this.sentinelUpdatedAt;
    } else {
      json[r'sentinel_updated_at'] = null;
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
    if (this.geoipMaxmindLicenseKey != null) {
      json[r'geoip_maxmind_license_key'] = this.geoipMaxmindLicenseKey;
    } else {
      json[r'geoip_maxmind_license_key'] = null;
    }
    return json;
  }

  /// Returns a new [GetServerSentinel200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetServerSentinel200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetServerSentinel200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetServerSentinel200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetServerSentinel200Response(
        isSentinelEnabled: mapValueOfType<bool>(json, r'is_sentinel_enabled'),
        isMetricsEnabled: mapValueOfType<bool>(json, r'is_metrics_enabled'),
        isSentinelDebugEnabled: mapValueOfType<bool>(json, r'is_sentinel_debug_enabled'),
        sentinelToken: mapValueOfType<String>(json, r'sentinel_token'),
        sentinelMetricsRefreshRateSeconds: mapValueOfType<int>(json, r'sentinel_metrics_refresh_rate_seconds'),
        sentinelMetricsHistoryDays: mapValueOfType<int>(json, r'sentinel_metrics_history_days'),
        sentinelPushIntervalSeconds: mapValueOfType<int>(json, r'sentinel_push_interval_seconds'),
        sentinelCustomUrl: mapValueOfType<String>(json, r'sentinel_custom_url'),
        sentinelUpdatedAt: mapValueOfType<Object>(json, r'sentinel_updated_at'),
        trafficTopn: mapValueOfType<int>(json, r'traffic_topn'),
        trafficSampleThreshold: mapValueOfType<int>(json, r'traffic_sample_threshold'),
        trafficRetention1hDays: mapValueOfType<int>(json, r'traffic_retention_1h_days'),
        trafficRetention1dDays: mapValueOfType<int>(json, r'traffic_retention_1d_days'),
        isGeoipEnabled: mapValueOfType<bool>(json, r'is_geoip_enabled'),
        geoipRefreshDays: mapValueOfType<int>(json, r'geoip_refresh_days'),
        trafficIpMode: GetServerSentinel200ResponseTrafficIpModeEnum.fromJson(json[r'traffic_ip_mode']),
        geoipMaxmindLicenseKey: mapValueOfType<String>(json, r'geoip_maxmind_license_key'),
      );
    }
    return null;
  }

  static List<GetServerSentinel200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetServerSentinel200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetServerSentinel200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetServerSentinel200Response> mapFromJson(dynamic json) {
    final map = <String, GetServerSentinel200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetServerSentinel200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetServerSentinel200Response-objects as value to a dart map
  static Map<String, List<GetServerSentinel200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetServerSentinel200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetServerSentinel200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// How Sentinel stores client IPs for the Top IPs breakdown.
class GetServerSentinel200ResponseTrafficIpModeEnum {
  /// Instantiate a new enum with the provided [value].
  const GetServerSentinel200ResponseTrafficIpModeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const full = GetServerSentinel200ResponseTrafficIpModeEnum._(r'full');
  static const anonymized = GetServerSentinel200ResponseTrafficIpModeEnum._(r'anonymized');
  static const off = GetServerSentinel200ResponseTrafficIpModeEnum._(r'off');

  /// List of all possible values in this [enum][GetServerSentinel200ResponseTrafficIpModeEnum].
  static const values = <GetServerSentinel200ResponseTrafficIpModeEnum>[
    full,
    anonymized,
    off,
  ];

  static GetServerSentinel200ResponseTrafficIpModeEnum? fromJson(dynamic value) => GetServerSentinel200ResponseTrafficIpModeEnumTypeTransformer().decode(value);

  static List<GetServerSentinel200ResponseTrafficIpModeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetServerSentinel200ResponseTrafficIpModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetServerSentinel200ResponseTrafficIpModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GetServerSentinel200ResponseTrafficIpModeEnum] to String,
/// and [decode] dynamic data back to [GetServerSentinel200ResponseTrafficIpModeEnum].
class GetServerSentinel200ResponseTrafficIpModeEnumTypeTransformer {
  factory GetServerSentinel200ResponseTrafficIpModeEnumTypeTransformer() => _instance ??= const GetServerSentinel200ResponseTrafficIpModeEnumTypeTransformer._();

  const GetServerSentinel200ResponseTrafficIpModeEnumTypeTransformer._();

  String encode(GetServerSentinel200ResponseTrafficIpModeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GetServerSentinel200ResponseTrafficIpModeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GetServerSentinel200ResponseTrafficIpModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'full': return GetServerSentinel200ResponseTrafficIpModeEnum.full;
        case r'anonymized': return GetServerSentinel200ResponseTrafficIpModeEnum.anonymized;
        case r'off': return GetServerSentinel200ResponseTrafficIpModeEnum.off;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GetServerSentinel200ResponseTrafficIpModeEnumTypeTransformer] instance.
  static GetServerSentinel200ResponseTrafficIpModeEnumTypeTransformer? _instance;
}


