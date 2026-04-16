import 'package:flutter/material.dart';

import '../../api/coolify_api.dart';
import '../../components/index.dart';
import 'application_config_schema.dart';

class ApplicationConfigWebhooksPage extends StatelessWidget {
  const ApplicationConfigWebhooksPage({
    super.key,
    required this.application,
    this.onUpdated,
  });

  final ApplicationResource application;
  final ValueChanged<ApplicationResource>? onUpdated;

  @override
  Widget build(BuildContext context) {
    return ApplicationConfigSectionEditor(
      application: application,
      fields: ApplicationConfigSchema.webhookFields,
      onUpdated: onUpdated,
    );
  }
}
