import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

enum _NotificationChannel { email, discord, telegram, slack, pushover, webhook }

extension _NotificationChannelX on _NotificationChannel {
  String get label => switch (this) {
    _NotificationChannel.email => 'E-Mail',
    _NotificationChannel.discord => 'Discord',
    _NotificationChannel.telegram => 'Telegram',
    _NotificationChannel.slack => 'Slack',
    _NotificationChannel.pushover => 'Pushover',
    _NotificationChannel.webhook => 'Webhook',
  };
}

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);

    return ShadTabs<_NotificationChannel>(
      value: _NotificationChannel.email,
      scrollable: true,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      tabs: _NotificationChannel.values.map((channel) {
        return ShadTab(
          value: channel,
          content: Center(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Text(channel.label, style: theme.textTheme.muted),
            ),
          ),
          child: Text(channel.label),
        );
      }).toList(),
    );
  }
}
