//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdatePreviewDomainsByPullRequestIdRequest {
  /// Returns a new [UpdatePreviewDomainsByPullRequestIdRequest] instance.
  UpdatePreviewDomainsByPullRequestIdRequest({
    this.domains,
    this.dockerComposeDomains = const [],
    this.forceDomainOverride = false,
  });

  Object? domains;

  List<UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInner> dockerComposeDomains;

  bool forceDomainOverride;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdatePreviewDomainsByPullRequestIdRequest &&
    other.domains == domains &&
    _deepEquality.equals(other.dockerComposeDomains, dockerComposeDomains) &&
    other.forceDomainOverride == forceDomainOverride;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domains == null ? 0 : domains!.hashCode) +
    (dockerComposeDomains.hashCode) +
    (forceDomainOverride.hashCode);

  @override
  String toString() => 'UpdatePreviewDomainsByPullRequestIdRequest[domains=$domains, dockerComposeDomains=$dockerComposeDomains, forceDomainOverride=$forceDomainOverride]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.domains != null) {
      json[r'domains'] = this.domains;
    } else {
      json[r'domains'] = null;
    }
      json[r'docker_compose_domains'] = this.dockerComposeDomains;
      json[r'force_domain_override'] = this.forceDomainOverride;
    return json;
  }

  /// Returns a new [UpdatePreviewDomainsByPullRequestIdRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdatePreviewDomainsByPullRequestIdRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdatePreviewDomainsByPullRequestIdRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdatePreviewDomainsByPullRequestIdRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdatePreviewDomainsByPullRequestIdRequest(
        domains: mapValueOfType<Object>(json, r'domains'),
        dockerComposeDomains: UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInner.listFromJson(json[r'docker_compose_domains']),
        forceDomainOverride: mapValueOfType<bool>(json, r'force_domain_override') ?? false,
      );
    }
    return null;
  }

  static List<UpdatePreviewDomainsByPullRequestIdRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdatePreviewDomainsByPullRequestIdRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdatePreviewDomainsByPullRequestIdRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdatePreviewDomainsByPullRequestIdRequest> mapFromJson(dynamic json) {
    final map = <String, UpdatePreviewDomainsByPullRequestIdRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdatePreviewDomainsByPullRequestIdRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdatePreviewDomainsByPullRequestIdRequest-objects as value to a dart map
  static Map<String, List<UpdatePreviewDomainsByPullRequestIdRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdatePreviewDomainsByPullRequestIdRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdatePreviewDomainsByPullRequestIdRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

