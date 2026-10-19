//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PatchServiceApplicationByServiceAndAppUuidRequest {
  /// Returns a new [PatchServiceApplicationByServiceAndAppUuidRequest] instance.
  PatchServiceApplicationByServiceAndAppUuidRequest({
    this.url,
    this.noindexDomains = const [],
    this.humanName,
    this.description,
    this.image,
    this.excludeFromStatus,
    this.isLogDrainEnabled,
    this.isGzipEnabled,
    this.traefikCertificateResolver,
    this.isStripprefixEnabled,
    this.isForceHttpsEnabled,
    this.maxRestartCount,
  });

  /// Comma-separated list of URLs (e.g. \"http://app.example.com:8080,https://app2.example.com\"). Stored as fqdn.
  Object? url;

  /// The subset of the service application domains served with an X-Robots-Tag: noindex, nofollow response header, keeping them out of search engines. Entries that are not among the domains are ignored.
  List<String> noindexDomains;

  Object? humanName;

  Object? description;

  Object? image;

  Object? excludeFromStatus;

  Object? isLogDrainEnabled;

  Object? isGzipEnabled;

  /// Traefik certificate resolver for this service application. Null uses the server setting, \"none\" uses no resolver.
  Object? traefikCertificateResolver;

  Object? isStripprefixEnabled;

  Object? isForceHttpsEnabled;

  /// Maximum Docker restart count before Coolify stops the container. Set to 0 to disable the limit.
  ///
  /// Minimum value: 0
  Object? maxRestartCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchServiceApplicationByServiceAndAppUuidRequest &&
    other.url == url &&
    _deepEquality.equals(other.noindexDomains, noindexDomains) &&
    other.humanName == humanName &&
    other.description == description &&
    other.image == image &&
    other.excludeFromStatus == excludeFromStatus &&
    other.isLogDrainEnabled == isLogDrainEnabled &&
    other.isGzipEnabled == isGzipEnabled &&
    other.traefikCertificateResolver == traefikCertificateResolver &&
    other.isStripprefixEnabled == isStripprefixEnabled &&
    other.isForceHttpsEnabled == isForceHttpsEnabled &&
    other.maxRestartCount == maxRestartCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (url == null ? 0 : url!.hashCode) +
    (noindexDomains.hashCode) +
    (humanName == null ? 0 : humanName!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (excludeFromStatus == null ? 0 : excludeFromStatus!.hashCode) +
    (isLogDrainEnabled == null ? 0 : isLogDrainEnabled!.hashCode) +
    (isGzipEnabled == null ? 0 : isGzipEnabled!.hashCode) +
    (traefikCertificateResolver == null ? 0 : traefikCertificateResolver!.hashCode) +
    (isStripprefixEnabled == null ? 0 : isStripprefixEnabled!.hashCode) +
    (isForceHttpsEnabled == null ? 0 : isForceHttpsEnabled!.hashCode) +
    (maxRestartCount == null ? 0 : maxRestartCount!.hashCode);

  @override
  String toString() => 'PatchServiceApplicationByServiceAndAppUuidRequest[url=$url, noindexDomains=$noindexDomains, humanName=$humanName, description=$description, image=$image, excludeFromStatus=$excludeFromStatus, isLogDrainEnabled=$isLogDrainEnabled, isGzipEnabled=$isGzipEnabled, traefikCertificateResolver=$traefikCertificateResolver, isStripprefixEnabled=$isStripprefixEnabled, isForceHttpsEnabled=$isForceHttpsEnabled, maxRestartCount=$maxRestartCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
      json[r'noindex_domains'] = this.noindexDomains;
    if (this.humanName != null) {
      json[r'human_name'] = this.humanName;
    } else {
      json[r'human_name'] = null;
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
    if (this.excludeFromStatus != null) {
      json[r'exclude_from_status'] = this.excludeFromStatus;
    } else {
      json[r'exclude_from_status'] = null;
    }
    if (this.isLogDrainEnabled != null) {
      json[r'is_log_drain_enabled'] = this.isLogDrainEnabled;
    } else {
      json[r'is_log_drain_enabled'] = null;
    }
    if (this.isGzipEnabled != null) {
      json[r'is_gzip_enabled'] = this.isGzipEnabled;
    } else {
      json[r'is_gzip_enabled'] = null;
    }
    if (this.traefikCertificateResolver != null) {
      json[r'traefik_certificate_resolver'] = this.traefikCertificateResolver;
    } else {
      json[r'traefik_certificate_resolver'] = null;
    }
    if (this.isStripprefixEnabled != null) {
      json[r'is_stripprefix_enabled'] = this.isStripprefixEnabled;
    } else {
      json[r'is_stripprefix_enabled'] = null;
    }
    if (this.isForceHttpsEnabled != null) {
      json[r'is_force_https_enabled'] = this.isForceHttpsEnabled;
    } else {
      json[r'is_force_https_enabled'] = null;
    }
    if (this.maxRestartCount != null) {
      json[r'max_restart_count'] = this.maxRestartCount;
    } else {
      json[r'max_restart_count'] = null;
    }
    return json;
  }

  /// Returns a new [PatchServiceApplicationByServiceAndAppUuidRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchServiceApplicationByServiceAndAppUuidRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchServiceApplicationByServiceAndAppUuidRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchServiceApplicationByServiceAndAppUuidRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchServiceApplicationByServiceAndAppUuidRequest(
        url: mapValueOfType<Object>(json, r'url'),
        noindexDomains: json[r'noindex_domains'] is Iterable
            ? (json[r'noindex_domains'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        humanName: mapValueOfType<Object>(json, r'human_name'),
        description: mapValueOfType<Object>(json, r'description'),
        image: mapValueOfType<Object>(json, r'image'),
        excludeFromStatus: mapValueOfType<Object>(json, r'exclude_from_status'),
        isLogDrainEnabled: mapValueOfType<Object>(json, r'is_log_drain_enabled'),
        isGzipEnabled: mapValueOfType<Object>(json, r'is_gzip_enabled'),
        traefikCertificateResolver: mapValueOfType<Object>(json, r'traefik_certificate_resolver'),
        isStripprefixEnabled: mapValueOfType<Object>(json, r'is_stripprefix_enabled'),
        isForceHttpsEnabled: mapValueOfType<Object>(json, r'is_force_https_enabled'),
        maxRestartCount: mapValueOfType<Object>(json, r'max_restart_count'),
      );
    }
    return null;
  }

  static List<PatchServiceApplicationByServiceAndAppUuidRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchServiceApplicationByServiceAndAppUuidRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchServiceApplicationByServiceAndAppUuidRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchServiceApplicationByServiceAndAppUuidRequest> mapFromJson(dynamic json) {
    final map = <String, PatchServiceApplicationByServiceAndAppUuidRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchServiceApplicationByServiceAndAppUuidRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchServiceApplicationByServiceAndAppUuidRequest-objects as value to a dart map
  static Map<String, List<PatchServiceApplicationByServiceAndAppUuidRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchServiceApplicationByServiceAndAppUuidRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchServiceApplicationByServiceAndAppUuidRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

