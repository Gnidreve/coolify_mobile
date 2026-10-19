//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListServerRegistries200ResponseRegistriesInner {
  /// Returns a new [ListServerRegistries200ResponseRegistriesInner] instance.
  ListServerRegistries200ResponseRegistriesInner({
    this.registry,
    this.loggedIn,
    this.source_,
    this.username,
    this.usedBy = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? registry;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? loggedIn;

  /// Where the Docker config stores the credentials.
  ListServerRegistries200ResponseRegistriesInnerSource_Enum? source_;

  Object? username;

  List<ListServerRegistries200ResponseRegistriesInnerUsedByInner> usedBy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListServerRegistries200ResponseRegistriesInner &&
    other.registry == registry &&
    other.loggedIn == loggedIn &&
    other.source_ == source_ &&
    other.username == username &&
    _deepEquality.equals(other.usedBy, usedBy);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (registry == null ? 0 : registry!.hashCode) +
    (loggedIn == null ? 0 : loggedIn!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (username == null ? 0 : username!.hashCode) +
    (usedBy.hashCode);

  @override
  String toString() => 'ListServerRegistries200ResponseRegistriesInner[registry=$registry, loggedIn=$loggedIn, source_=$source_, username=$username, usedBy=$usedBy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.registry != null) {
      json[r'registry'] = this.registry;
    } else {
      json[r'registry'] = null;
    }
    if (this.loggedIn != null) {
      json[r'logged_in'] = this.loggedIn;
    } else {
      json[r'logged_in'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
      json[r'used_by'] = this.usedBy;
    return json;
  }

  /// Returns a new [ListServerRegistries200ResponseRegistriesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListServerRegistries200ResponseRegistriesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListServerRegistries200ResponseRegistriesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListServerRegistries200ResponseRegistriesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListServerRegistries200ResponseRegistriesInner(
        registry: mapValueOfType<String>(json, r'registry'),
        loggedIn: mapValueOfType<bool>(json, r'logged_in'),
        source_: ListServerRegistries200ResponseRegistriesInnerSource_Enum.fromJson(json[r'source']),
        username: mapValueOfType<Object>(json, r'username'),
        usedBy: ListServerRegistries200ResponseRegistriesInnerUsedByInner.listFromJson(json[r'used_by']),
      );
    }
    return null;
  }

  static List<ListServerRegistries200ResponseRegistriesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListServerRegistries200ResponseRegistriesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListServerRegistries200ResponseRegistriesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListServerRegistries200ResponseRegistriesInner> mapFromJson(dynamic json) {
    final map = <String, ListServerRegistries200ResponseRegistriesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListServerRegistries200ResponseRegistriesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListServerRegistries200ResponseRegistriesInner-objects as value to a dart map
  static Map<String, List<ListServerRegistries200ResponseRegistriesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListServerRegistries200ResponseRegistriesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListServerRegistries200ResponseRegistriesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Where the Docker config stores the credentials.
class ListServerRegistries200ResponseRegistriesInnerSource_Enum {
  /// Instantiate a new enum with the provided [value].
  const ListServerRegistries200ResponseRegistriesInnerSource_Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const auths = ListServerRegistries200ResponseRegistriesInnerSource_Enum._(r'auths');
  static const credHelpers = ListServerRegistries200ResponseRegistriesInnerSource_Enum._(r'credHelpers');

  /// List of all possible values in this [enum][ListServerRegistries200ResponseRegistriesInnerSource_Enum].
  static const values = <ListServerRegistries200ResponseRegistriesInnerSource_Enum>[
    auths,
    credHelpers,
  ];

  static ListServerRegistries200ResponseRegistriesInnerSource_Enum? fromJson(dynamic value) => ListServerRegistries200ResponseRegistriesInnerSource_EnumTypeTransformer().decode(value);

  static List<ListServerRegistries200ResponseRegistriesInnerSource_Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListServerRegistries200ResponseRegistriesInnerSource_Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListServerRegistries200ResponseRegistriesInnerSource_Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ListServerRegistries200ResponseRegistriesInnerSource_Enum] to String,
/// and [decode] dynamic data back to [ListServerRegistries200ResponseRegistriesInnerSource_Enum].
class ListServerRegistries200ResponseRegistriesInnerSource_EnumTypeTransformer {
  factory ListServerRegistries200ResponseRegistriesInnerSource_EnumTypeTransformer() => _instance ??= const ListServerRegistries200ResponseRegistriesInnerSource_EnumTypeTransformer._();

  const ListServerRegistries200ResponseRegistriesInnerSource_EnumTypeTransformer._();

  String encode(ListServerRegistries200ResponseRegistriesInnerSource_Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a ListServerRegistries200ResponseRegistriesInnerSource_Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ListServerRegistries200ResponseRegistriesInnerSource_Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'auths': return ListServerRegistries200ResponseRegistriesInnerSource_Enum.auths;
        case r'credHelpers': return ListServerRegistries200ResponseRegistriesInnerSource_Enum.credHelpers;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ListServerRegistries200ResponseRegistriesInnerSource_EnumTypeTransformer] instance.
  static ListServerRegistries200ResponseRegistriesInnerSource_EnumTypeTransformer? _instance;
}


