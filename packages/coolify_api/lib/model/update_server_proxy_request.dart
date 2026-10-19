//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateServerProxyRequest {
  /// Returns a new [UpdateServerProxyRequest] instance.
  UpdateServerProxyRequest({
    this.redirectEnabled,
    this.redirectUrl,
    this.generateExactLabels,
    this.traefikCertificateResolver,
    this.proxyType,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? redirectEnabled;

  /// Public http(s) redirect URL, or null to clear.
  Object? redirectUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? generateExactLabels;

  /// Traefik certificate resolver for generated HTTPS routers (letters, digits, _ and -). Null or empty to use your own certificates. Redeploy resources to apply.
  Object? traefikCertificateResolver;

  /// Proxy type (case-insensitive). Changing it starts the new proxy on the server and needs the deploy permission.
  UpdateServerProxyRequestProxyTypeEnum? proxyType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateServerProxyRequest &&
    other.redirectEnabled == redirectEnabled &&
    other.redirectUrl == redirectUrl &&
    other.generateExactLabels == generateExactLabels &&
    other.traefikCertificateResolver == traefikCertificateResolver &&
    other.proxyType == proxyType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (redirectEnabled == null ? 0 : redirectEnabled!.hashCode) +
    (redirectUrl == null ? 0 : redirectUrl!.hashCode) +
    (generateExactLabels == null ? 0 : generateExactLabels!.hashCode) +
    (traefikCertificateResolver == null ? 0 : traefikCertificateResolver!.hashCode) +
    (proxyType == null ? 0 : proxyType!.hashCode);

  @override
  String toString() => 'UpdateServerProxyRequest[redirectEnabled=$redirectEnabled, redirectUrl=$redirectUrl, generateExactLabels=$generateExactLabels, traefikCertificateResolver=$traefikCertificateResolver, proxyType=$proxyType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.redirectEnabled != null) {
      json[r'redirect_enabled'] = this.redirectEnabled;
    } else {
      json[r'redirect_enabled'] = null;
    }
    if (this.redirectUrl != null) {
      json[r'redirect_url'] = this.redirectUrl;
    } else {
      json[r'redirect_url'] = null;
    }
    if (this.generateExactLabels != null) {
      json[r'generate_exact_labels'] = this.generateExactLabels;
    } else {
      json[r'generate_exact_labels'] = null;
    }
    if (this.traefikCertificateResolver != null) {
      json[r'traefik_certificate_resolver'] = this.traefikCertificateResolver;
    } else {
      json[r'traefik_certificate_resolver'] = null;
    }
    if (this.proxyType != null) {
      json[r'proxy_type'] = this.proxyType;
    } else {
      json[r'proxy_type'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateServerProxyRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateServerProxyRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateServerProxyRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateServerProxyRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateServerProxyRequest(
        redirectEnabled: mapValueOfType<bool>(json, r'redirect_enabled'),
        redirectUrl: mapValueOfType<Object>(json, r'redirect_url'),
        generateExactLabels: mapValueOfType<bool>(json, r'generate_exact_labels'),
        traefikCertificateResolver: mapValueOfType<Object>(json, r'traefik_certificate_resolver'),
        proxyType: UpdateServerProxyRequestProxyTypeEnum.fromJson(json[r'proxy_type']),
      );
    }
    return null;
  }

  static List<UpdateServerProxyRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateServerProxyRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateServerProxyRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateServerProxyRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateServerProxyRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateServerProxyRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateServerProxyRequest-objects as value to a dart map
  static Map<String, List<UpdateServerProxyRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateServerProxyRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateServerProxyRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Proxy type (case-insensitive). Changing it starts the new proxy on the server and needs the deploy permission.
class UpdateServerProxyRequestProxyTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdateServerProxyRequestProxyTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const traefik = UpdateServerProxyRequestProxyTypeEnum._(r'traefik');
  static const caddy = UpdateServerProxyRequestProxyTypeEnum._(r'caddy');
  static const nginx = UpdateServerProxyRequestProxyTypeEnum._(r'nginx');
  static const none = UpdateServerProxyRequestProxyTypeEnum._(r'none');

  /// List of all possible values in this [enum][UpdateServerProxyRequestProxyTypeEnum].
  static const values = <UpdateServerProxyRequestProxyTypeEnum>[
    traefik,
    caddy,
    nginx,
    none,
  ];

  static UpdateServerProxyRequestProxyTypeEnum? fromJson(dynamic value) => UpdateServerProxyRequestProxyTypeEnumTypeTransformer().decode(value);

  static List<UpdateServerProxyRequestProxyTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateServerProxyRequestProxyTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateServerProxyRequestProxyTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdateServerProxyRequestProxyTypeEnum] to String,
/// and [decode] dynamic data back to [UpdateServerProxyRequestProxyTypeEnum].
class UpdateServerProxyRequestProxyTypeEnumTypeTransformer {
  factory UpdateServerProxyRequestProxyTypeEnumTypeTransformer() => _instance ??= const UpdateServerProxyRequestProxyTypeEnumTypeTransformer._();

  const UpdateServerProxyRequestProxyTypeEnumTypeTransformer._();

  String encode(UpdateServerProxyRequestProxyTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdateServerProxyRequestProxyTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdateServerProxyRequestProxyTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'traefik': return UpdateServerProxyRequestProxyTypeEnum.traefik;
        case r'caddy': return UpdateServerProxyRequestProxyTypeEnum.caddy;
        case r'nginx': return UpdateServerProxyRequestProxyTypeEnum.nginx;
        case r'none': return UpdateServerProxyRequestProxyTypeEnum.none;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdateServerProxyRequestProxyTypeEnumTypeTransformer] instance.
  static UpdateServerProxyRequestProxyTypeEnumTypeTransformer? _instance;
}


