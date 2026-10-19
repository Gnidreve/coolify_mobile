//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateHetznerServerRequest {
  /// Returns a new [CreateHetznerServerRequest] instance.
  CreateHetznerServerRequest({
    this.cloudProviderTokenUuid,
    this.cloudProviderTokenId,
    required this.location,
    required this.serverType,
    required this.image,
    this.name,
    required this.privateKeyUuid,
    this.enableIpv4,
    this.enableIpv6,
    this.enableBackups,
    this.hetznerSshKeyIds = const [],
    this.hetznerFirewallIds = const [],
    this.hetznerNetworkIds = const [],
    this.cloudInitScript,
    this.instantValidate,
  });

  /// Cloud provider token UUID. Required if cloud_provider_token_id is not provided.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cloudProviderTokenUuid;

  /// Deprecated: Use cloud_provider_token_uuid instead. Cloud provider token UUID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cloudProviderTokenId;

  /// Hetzner location name
  String location;

  /// Hetzner server type name
  String serverType;

  /// Hetzner image ID
  int image;

  /// Server name (auto-generated if not provided)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Private key UUID
  String privateKeyUuid;

  /// Enable IPv4 (default: true)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableIpv4;

  /// Enable IPv6 (default: true)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableIpv6;

  /// Enable Hetzner server backups after creation (adds 20% to the monthly server fee)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableBackups;

  /// Additional Hetzner SSH key IDs. Needs a token with the deploy permission.
  List<int> hetznerSshKeyIds;

  /// Existing Hetzner firewall IDs to apply during server creation
  List<int> hetznerFirewallIds;

  /// Existing Hetzner network IDs to attach during server creation
  List<int> hetznerNetworkIds;

  /// Cloud-init YAML script (optional). Needs a token with the deploy permission.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cloudInitScript;

  /// Validate server immediately after creation
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? instantValidate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateHetznerServerRequest &&
    other.cloudProviderTokenUuid == cloudProviderTokenUuid &&
    other.cloudProviderTokenId == cloudProviderTokenId &&
    other.location == location &&
    other.serverType == serverType &&
    other.image == image &&
    other.name == name &&
    other.privateKeyUuid == privateKeyUuid &&
    other.enableIpv4 == enableIpv4 &&
    other.enableIpv6 == enableIpv6 &&
    other.enableBackups == enableBackups &&
    _deepEquality.equals(other.hetznerSshKeyIds, hetznerSshKeyIds) &&
    _deepEquality.equals(other.hetznerFirewallIds, hetznerFirewallIds) &&
    _deepEquality.equals(other.hetznerNetworkIds, hetznerNetworkIds) &&
    other.cloudInitScript == cloudInitScript &&
    other.instantValidate == instantValidate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cloudProviderTokenUuid == null ? 0 : cloudProviderTokenUuid!.hashCode) +
    (cloudProviderTokenId == null ? 0 : cloudProviderTokenId!.hashCode) +
    (location.hashCode) +
    (serverType.hashCode) +
    (image.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (privateKeyUuid.hashCode) +
    (enableIpv4 == null ? 0 : enableIpv4!.hashCode) +
    (enableIpv6 == null ? 0 : enableIpv6!.hashCode) +
    (enableBackups == null ? 0 : enableBackups!.hashCode) +
    (hetznerSshKeyIds.hashCode) +
    (hetznerFirewallIds.hashCode) +
    (hetznerNetworkIds.hashCode) +
    (cloudInitScript == null ? 0 : cloudInitScript!.hashCode) +
    (instantValidate == null ? 0 : instantValidate!.hashCode);

  @override
  String toString() => 'CreateHetznerServerRequest[cloudProviderTokenUuid=$cloudProviderTokenUuid, cloudProviderTokenId=$cloudProviderTokenId, location=$location, serverType=$serverType, image=$image, name=$name, privateKeyUuid=$privateKeyUuid, enableIpv4=$enableIpv4, enableIpv6=$enableIpv6, enableBackups=$enableBackups, hetznerSshKeyIds=$hetznerSshKeyIds, hetznerFirewallIds=$hetznerFirewallIds, hetznerNetworkIds=$hetznerNetworkIds, cloudInitScript=$cloudInitScript, instantValidate=$instantValidate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cloudProviderTokenUuid != null) {
      json[r'cloud_provider_token_uuid'] = this.cloudProviderTokenUuid;
    } else {
      json[r'cloud_provider_token_uuid'] = null;
    }
    if (this.cloudProviderTokenId != null) {
      json[r'cloud_provider_token_id'] = this.cloudProviderTokenId;
    } else {
      json[r'cloud_provider_token_id'] = null;
    }
      json[r'location'] = this.location;
      json[r'server_type'] = this.serverType;
      json[r'image'] = this.image;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'private_key_uuid'] = this.privateKeyUuid;
    if (this.enableIpv4 != null) {
      json[r'enable_ipv4'] = this.enableIpv4;
    } else {
      json[r'enable_ipv4'] = null;
    }
    if (this.enableIpv6 != null) {
      json[r'enable_ipv6'] = this.enableIpv6;
    } else {
      json[r'enable_ipv6'] = null;
    }
    if (this.enableBackups != null) {
      json[r'enable_backups'] = this.enableBackups;
    } else {
      json[r'enable_backups'] = null;
    }
      json[r'hetzner_ssh_key_ids'] = this.hetznerSshKeyIds;
      json[r'hetzner_firewall_ids'] = this.hetznerFirewallIds;
      json[r'hetzner_network_ids'] = this.hetznerNetworkIds;
    if (this.cloudInitScript != null) {
      json[r'cloud_init_script'] = this.cloudInitScript;
    } else {
      json[r'cloud_init_script'] = null;
    }
    if (this.instantValidate != null) {
      json[r'instant_validate'] = this.instantValidate;
    } else {
      json[r'instant_validate'] = null;
    }
    return json;
  }

  /// Returns a new [CreateHetznerServerRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateHetznerServerRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateHetznerServerRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateHetznerServerRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateHetznerServerRequest(
        cloudProviderTokenUuid: mapValueOfType<String>(json, r'cloud_provider_token_uuid'),
        cloudProviderTokenId: mapValueOfType<String>(json, r'cloud_provider_token_id'),
        location: mapValueOfType<String>(json, r'location')!,
        serverType: mapValueOfType<String>(json, r'server_type')!,
        image: mapValueOfType<int>(json, r'image')!,
        name: mapValueOfType<String>(json, r'name'),
        privateKeyUuid: mapValueOfType<String>(json, r'private_key_uuid')!,
        enableIpv4: mapValueOfType<bool>(json, r'enable_ipv4'),
        enableIpv6: mapValueOfType<bool>(json, r'enable_ipv6'),
        enableBackups: mapValueOfType<bool>(json, r'enable_backups'),
        hetznerSshKeyIds: json[r'hetzner_ssh_key_ids'] is Iterable
            ? (json[r'hetzner_ssh_key_ids'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        hetznerFirewallIds: json[r'hetzner_firewall_ids'] is Iterable
            ? (json[r'hetzner_firewall_ids'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        hetznerNetworkIds: json[r'hetzner_network_ids'] is Iterable
            ? (json[r'hetzner_network_ids'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        cloudInitScript: mapValueOfType<String>(json, r'cloud_init_script'),
        instantValidate: mapValueOfType<bool>(json, r'instant_validate'),
      );
    }
    return null;
  }

  static List<CreateHetznerServerRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateHetznerServerRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateHetznerServerRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateHetznerServerRequest> mapFromJson(dynamic json) {
    final map = <String, CreateHetznerServerRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateHetznerServerRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateHetznerServerRequest-objects as value to a dart map
  static Map<String, List<CreateHetznerServerRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateHetznerServerRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateHetznerServerRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'location',
    'server_type',
    'image',
    'private_key_uuid',
  };
}

