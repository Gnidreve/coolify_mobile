//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateSecretManagerIntegrationTokenRequest {
  /// Returns a new [CreateSecretManagerIntegrationTokenRequest] instance.
  CreateSecretManagerIntegrationTokenRequest({
    required this.provider,
    required this.name,
    required this.token,
    this.metadata = const {},
  });

  CreateSecretManagerIntegrationTokenRequestProviderEnum provider;

  String name;

  String token;

  Map<String, Object> metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateSecretManagerIntegrationTokenRequest &&
    other.provider == provider &&
    other.name == name &&
    other.token == token &&
    _deepEquality.equals(other.metadata, metadata);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (provider.hashCode) +
    (name.hashCode) +
    (token.hashCode) +
    (metadata.hashCode);

  @override
  String toString() => 'CreateSecretManagerIntegrationTokenRequest[provider=$provider, name=$name, token=$token, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'provider'] = this.provider;
      json[r'name'] = this.name;
      json[r'token'] = this.token;
      json[r'metadata'] = this.metadata;
    return json;
  }

  /// Returns a new [CreateSecretManagerIntegrationTokenRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateSecretManagerIntegrationTokenRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateSecretManagerIntegrationTokenRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateSecretManagerIntegrationTokenRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateSecretManagerIntegrationTokenRequest(
        provider: CreateSecretManagerIntegrationTokenRequestProviderEnum.fromJson(json[r'provider'])!,
        name: mapValueOfType<String>(json, r'name')!,
        token: mapValueOfType<String>(json, r'token')!,
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
      );
    }
    return null;
  }

  static List<CreateSecretManagerIntegrationTokenRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateSecretManagerIntegrationTokenRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateSecretManagerIntegrationTokenRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateSecretManagerIntegrationTokenRequest> mapFromJson(dynamic json) {
    final map = <String, CreateSecretManagerIntegrationTokenRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateSecretManagerIntegrationTokenRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateSecretManagerIntegrationTokenRequest-objects as value to a dart map
  static Map<String, List<CreateSecretManagerIntegrationTokenRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateSecretManagerIntegrationTokenRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateSecretManagerIntegrationTokenRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'provider',
    'name',
    'token',
  };
}


class CreateSecretManagerIntegrationTokenRequestProviderEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateSecretManagerIntegrationTokenRequestProviderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const doppler = CreateSecretManagerIntegrationTokenRequestProviderEnum._(r'doppler');
  static const infisical = CreateSecretManagerIntegrationTokenRequestProviderEnum._(r'infisical');
  static const vault = CreateSecretManagerIntegrationTokenRequestProviderEnum._(r'vault');

  /// List of all possible values in this [enum][CreateSecretManagerIntegrationTokenRequestProviderEnum].
  static const values = <CreateSecretManagerIntegrationTokenRequestProviderEnum>[
    doppler,
    infisical,
    vault,
  ];

  static CreateSecretManagerIntegrationTokenRequestProviderEnum? fromJson(dynamic value) => CreateSecretManagerIntegrationTokenRequestProviderEnumTypeTransformer().decode(value);

  static List<CreateSecretManagerIntegrationTokenRequestProviderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateSecretManagerIntegrationTokenRequestProviderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateSecretManagerIntegrationTokenRequestProviderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateSecretManagerIntegrationTokenRequestProviderEnum] to String,
/// and [decode] dynamic data back to [CreateSecretManagerIntegrationTokenRequestProviderEnum].
class CreateSecretManagerIntegrationTokenRequestProviderEnumTypeTransformer {
  factory CreateSecretManagerIntegrationTokenRequestProviderEnumTypeTransformer() => _instance ??= const CreateSecretManagerIntegrationTokenRequestProviderEnumTypeTransformer._();

  const CreateSecretManagerIntegrationTokenRequestProviderEnumTypeTransformer._();

  String encode(CreateSecretManagerIntegrationTokenRequestProviderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateSecretManagerIntegrationTokenRequestProviderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateSecretManagerIntegrationTokenRequestProviderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'doppler': return CreateSecretManagerIntegrationTokenRequestProviderEnum.doppler;
        case r'infisical': return CreateSecretManagerIntegrationTokenRequestProviderEnum.infisical;
        case r'vault': return CreateSecretManagerIntegrationTokenRequestProviderEnum.vault;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateSecretManagerIntegrationTokenRequestProviderEnumTypeTransformer] instance.
  static CreateSecretManagerIntegrationTokenRequestProviderEnumTypeTransformer? _instance;
}


