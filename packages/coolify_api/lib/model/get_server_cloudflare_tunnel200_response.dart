//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetServerCloudflareTunnel200Response {
  /// Returns a new [GetServerCloudflareTunnel200Response] instance.
  GetServerCloudflareTunnel200Response({
    this.isCloudflareTunnel,
    this.ip,
    this.ipPrevious,
  });

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
  String? ip;

  Object? ipPrevious;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetServerCloudflareTunnel200Response &&
    other.isCloudflareTunnel == isCloudflareTunnel &&
    other.ip == ip &&
    other.ipPrevious == ipPrevious;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (isCloudflareTunnel == null ? 0 : isCloudflareTunnel!.hashCode) +
    (ip == null ? 0 : ip!.hashCode) +
    (ipPrevious == null ? 0 : ipPrevious!.hashCode);

  @override
  String toString() => 'GetServerCloudflareTunnel200Response[isCloudflareTunnel=$isCloudflareTunnel, ip=$ip, ipPrevious=$ipPrevious]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.isCloudflareTunnel != null) {
      json[r'is_cloudflare_tunnel'] = this.isCloudflareTunnel;
    } else {
      json[r'is_cloudflare_tunnel'] = null;
    }
    if (this.ip != null) {
      json[r'ip'] = this.ip;
    } else {
      json[r'ip'] = null;
    }
    if (this.ipPrevious != null) {
      json[r'ip_previous'] = this.ipPrevious;
    } else {
      json[r'ip_previous'] = null;
    }
    return json;
  }

  /// Returns a new [GetServerCloudflareTunnel200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetServerCloudflareTunnel200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetServerCloudflareTunnel200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetServerCloudflareTunnel200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetServerCloudflareTunnel200Response(
        isCloudflareTunnel: mapValueOfType<bool>(json, r'is_cloudflare_tunnel'),
        ip: mapValueOfType<String>(json, r'ip'),
        ipPrevious: mapValueOfType<Object>(json, r'ip_previous'),
      );
    }
    return null;
  }

  static List<GetServerCloudflareTunnel200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetServerCloudflareTunnel200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetServerCloudflareTunnel200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetServerCloudflareTunnel200Response> mapFromJson(dynamic json) {
    final map = <String, GetServerCloudflareTunnel200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetServerCloudflareTunnel200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetServerCloudflareTunnel200Response-objects as value to a dart map
  static Map<String, List<GetServerCloudflareTunnel200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetServerCloudflareTunnel200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetServerCloudflareTunnel200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

