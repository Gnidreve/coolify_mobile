import 'package:flutter/material.dart';

import '../../api/coolify_api.dart';
import '../../components/index.dart';
import 'application_config_schema.dart';

class ApplicationConfigGeneralPage extends StatelessWidget {
  const ApplicationConfigGeneralPage({
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
      fields: ApplicationConfigSchema.generalFields,
      onUpdated: onUpdated,
    );
  }
}
