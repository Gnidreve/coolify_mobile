import 'package:flutter/material.dart';

enum ResourceStatusKind { healthy, warning, error, unknown }

ResourceStatusKind resourceStatusKind(String status) {
  final tokens = _statusTokens(status);

  if (tokens.any(_isErrorToken)) {
    return ResourceStatusKind.error;
  }
  if (tokens.any(_isWarningToken)) {
    return ResourceStatusKind.warning;
  }
  if (tokens.any(_isHealthyToken)) {
    return ResourceStatusKind.healthy;
  }

  return ResourceStatusKind.unknown;
}

Color resourceStatusColor(String status) {
  return switch (resourceStatusKind(status)) {
    ResourceStatusKind.healthy => const Color(0xFF22C55E),
    ResourceStatusKind.warning => const Color(0xFFFACC15),
    ResourceStatusKind.error => const Color(0xFFEF4444),
    ResourceStatusKind.unknown => const Color(0xFF94A3B8),
  };
}

String resourceStatusLabel(String status) {
  final normalized = status.trim();
  if (normalized.isEmpty) {
    return '-';
  }

  final parts = normalized
      .split(RegExp(r'[_\-\s]+'))
      .where((part) => part.isNotEmpty)
      .toList();

  if (parts.isEmpty) {
    return normalized;
  }

  return parts
      .map(
        (part) => '${part[0].toUpperCase()}${part.substring(1).toLowerCase()}',
      )
      .join(' ');
}

Iterable<String> _statusTokens(String status) {
  return status
      .trim()
      .toLowerCase()
      .split(RegExp(r'[^a-z0-9]+'))
      .where((token) => token.isNotEmpty);
}

bool _isHealthyToken(String token) {
  return const {
    'running',
    'online',
    'healthy',
    'success',
    'finished',
    'ready',
    'completed',
  }.contains(token);
}

bool _isWarningToken(String token) {
  return const {
    'degraded',
    'warning',
    'pending',
    'queued',
    'progress',
    'processing',
    'starting',
    'restarting',
    'stopping',
    'building',
  }.contains(token);
}

bool _isErrorToken(String token) {
  return const {
    'exited',
    'stopped',
    'offline',
    'error',
    'failed',
    'failure',
    'canceled',
    'cancelled',
    'unhealthy',
    'crashed',
    'dead',
  }.contains(token);
}
