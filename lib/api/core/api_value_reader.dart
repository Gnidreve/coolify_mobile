typedef JsonMap = Map<String, dynamic>;

class ApiValueReader {
  const ApiValueReader._();

  static String string(
    JsonMap json,
    List<String> keys, {
    String fallback = '',
  }) {
    for (final key in keys) {
      final value = json[key];
      if (value is String && value.trim().isNotEmpty) {
        return value.trim();
      }
      if (value is num || value is bool) {
        final converted = '$value'.trim();
        if (converted.isNotEmpty) {
          return converted;
        }
      }
    }

    return fallback;
  }

  static int integer(JsonMap json, List<String> keys, {int fallback = 0}) {
    for (final key in keys) {
      final value = json[key];
      if (value is int) {
        return value;
      }
      if (value is num) {
        return value.toInt();
      }
      if (value is String) {
        final parsed = int.tryParse(value.trim());
        if (parsed != null) {
          return parsed;
        }
      }
    }

    return fallback;
  }

  static bool boolean(JsonMap json, List<String> keys, {bool fallback = false}) {
    for (final key in keys) {
      final value = json[key];
      if (value is bool) {
        return value;
      }
      if (value is num) {
        return value != 0;
      }
      if (value is String) {
        final normalized = value.trim().toLowerCase();
        if (normalized == 'true' || normalized == '1') {
          return true;
        }
        if (normalized == 'false' || normalized == '0') {
          return false;
        }
      }
    }

    return fallback;
  }

  static JsonMap map(JsonMap json, List<String> keys) {
    for (final key in keys) {
      final value = json[key];
      if (value is Map) {
        return Map<String, dynamic>.from(value);
      }
    }

    return const {};
  }
}
