import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ApplicationConfigWebhooksPage extends StatelessWidget {
  const ApplicationConfigWebhooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Webhooks', style: ShadTheme.of(context).textTheme.muted);
  }
}
