/// Formats [timestamp] (ISO 8601, as returned by the Coolify API) relative to
/// [now], e.g. "5 min ago". Returns an empty string when it cannot be parsed.
String relativeTime(String timestamp, {DateTime? now}) {
  final parsed = DateTime.tryParse(timestamp);
  if (parsed == null) return '';

  final diff = (now ?? DateTime.now()).difference(parsed);
  if (diff.inSeconds < 45) return 'just now';
  if (diff.inMinutes < 60) return '${diff.inMinutes} min ago';
  if (diff.inHours < 24) return '${diff.inHours} h ago';
  if (diff.inDays < 30) return '${diff.inDays} d ago';
  return '${diff.inDays ~/ 30} mo ago';
}
