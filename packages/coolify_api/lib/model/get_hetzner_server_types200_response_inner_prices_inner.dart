//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetHetznerServerTypes200ResponseInnerPricesInner {
  /// Returns a new [GetHetznerServerTypes200ResponseInnerPricesInner] instance.
  GetHetznerServerTypes200ResponseInnerPricesInner({
    this.location,
    this.priceHourly,
    this.priceMonthly,
  });

  /// Datacenter location name
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? location;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetHetznerServerTypes200ResponseInnerPricesInnerPriceHourly? priceHourly;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetHetznerServerTypes200ResponseInnerPricesInnerPriceHourly? priceMonthly;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetHetznerServerTypes200ResponseInnerPricesInner &&
    other.location == location &&
    other.priceHourly == priceHourly &&
    other.priceMonthly == priceMonthly;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (location == null ? 0 : location!.hashCode) +
    (priceHourly == null ? 0 : priceHourly!.hashCode) +
    (priceMonthly == null ? 0 : priceMonthly!.hashCode);

  @override
  String toString() => 'GetHetznerServerTypes200ResponseInnerPricesInner[location=$location, priceHourly=$priceHourly, priceMonthly=$priceMonthly]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
    if (this.priceHourly != null) {
      json[r'price_hourly'] = this.priceHourly;
    } else {
      json[r'price_hourly'] = null;
    }
    if (this.priceMonthly != null) {
      json[r'price_monthly'] = this.priceMonthly;
    } else {
      json[r'price_monthly'] = null;
    }
    return json;
  }

  /// Returns a new [GetHetznerServerTypes200ResponseInnerPricesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetHetznerServerTypes200ResponseInnerPricesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetHetznerServerTypes200ResponseInnerPricesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetHetznerServerTypes200ResponseInnerPricesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetHetznerServerTypes200ResponseInnerPricesInner(
        location: mapValueOfType<String>(json, r'location'),
        priceHourly: GetHetznerServerTypes200ResponseInnerPricesInnerPriceHourly.fromJson(json[r'price_hourly']),
        priceMonthly: GetHetznerServerTypes200ResponseInnerPricesInnerPriceHourly.fromJson(json[r'price_monthly']),
      );
    }
    return null;
  }

  static List<GetHetznerServerTypes200ResponseInnerPricesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetHetznerServerTypes200ResponseInnerPricesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetHetznerServerTypes200ResponseInnerPricesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetHetznerServerTypes200ResponseInnerPricesInner> mapFromJson(dynamic json) {
    final map = <String, GetHetznerServerTypes200ResponseInnerPricesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetHetznerServerTypes200ResponseInnerPricesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetHetznerServerTypes200ResponseInnerPricesInner-objects as value to a dart map
  static Map<String, List<GetHetznerServerTypes200ResponseInnerPricesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetHetznerServerTypes200ResponseInnerPricesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetHetznerServerTypes200ResponseInnerPricesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

