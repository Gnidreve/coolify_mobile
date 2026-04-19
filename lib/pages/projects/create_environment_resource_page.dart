import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../api/coolify_api.dart';
import '../../components/app_page_header.dart';
import '../../components/app_sidebar_drawer.dart';
import '../../components/resource_card.dart';
import '../../core/services/app_toast.dart';
import '../databases/index.dart';
import 'application_create_page.dart';
import 'service_presets.dart';

class CreateEnvironmentResourcePage extends StatelessWidget {
  const CreateEnvironmentResourcePage({
    super.key,
    required this.projectUuid,
    required this.projectName,
    required this.environment,
  });

  final String projectUuid;
  final String projectName;
  final ProjectEnvironment environment;

  static const _applicationTypes = <ApplicationCreateType>[
    ApplicationCreateType.privateGithubApp,
    ApplicationCreateType.privateDeployKey,
    ApplicationCreateType.publicGithubApp,
    ApplicationCreateType.dockerfile,
    ApplicationCreateType.dockerImage,
    ApplicationCreateType.dockerCompose,
  ];

  static const _databaseTypes = <String>[
    'PostgreSQL',
    'ClickHouse',
    'Dragonfly',
    'Redis',
    'KeyDB',
    'MariaDB',
    'MySQL',
    'MongoDB',
  ];

  Future<void> _openType(BuildContext context, String title) async {
    final databaseContext = DatabaseContext(
      projectName: projectName,
      projectUuid: projectUuid,
      environmentUuid: environment.uuid,
      environmentName: environment.name,
    );

    final databasePage = switch (title) {
      'PostgreSQL' => PostgreSqlDatabasePage(context: databaseContext),
      'ClickHouse' => ClickHouseDatabasePage(context: databaseContext),
      'Dragonfly' => DragonflyDatabasePage(context: databaseContext),
      'Redis' => RedisDatabasePage(context: databaseContext),
      'KeyDB' => KeyDbDatabasePage(context: databaseContext),
      'MariaDB' => MariaDbDatabasePage(context: databaseContext),
      'MySQL' => MySqlDatabasePage(context: databaseContext),
      'MongoDB' => MongoDbDatabasePage(context: databaseContext),
      _ => null,
    };

    final changed = await Navigator.of(
      context,
    ).push<bool>(MaterialPageRoute(builder: (_) => databasePage!));
    if (changed == true && context.mounted) {
      Navigator.of(context).pop(true);
    }
  }

  Future<void> _openApplication(
    BuildContext context,
    ApplicationCreateType type,
  ) async {
    final changed = await Navigator.of(context).push<bool>(
      MaterialPageRoute(
        builder: (_) => ApplicationCreatePage(
          type: type,
          projectUuid: projectUuid,
          projectName: projectName,
          environment: environment,
        ),
      ),
    );
    if (changed == true && context.mounted) {
      Navigator.of(context).pop(true);
    }
  }

  void _showServiceComingSoon(BuildContext context, ServicePreset service) {
    AppToast.info(
      context,
      'The service creation flow for ${service.title} will come in a later step.',
      title: 'Service presets are not wired yet',
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);

    return Scaffold(
      drawer: const AppSidebarDrawer(),
      appBar: AppPageHeader(
        crumbs: ['Projects', projectName, environment.name, 'Add Resource'],
      ),
      body: SafeArea(
        top: false,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Text('Applications', style: theme.textTheme.h3),
            const SizedBox(height: 12),
            ..._applicationTypes.map(
              (type) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: ResourceCard(
                  title: type.title,
                  subtitle: _applicationSubtitle(type),
                  leading: ResourceCardAssetIcon(
                    assetDirectory: 'lib/assets/applications',
                    assetName: type.title,
                  ),
                  onTap: () => _openApplication(context, type),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text('Databases', style: theme.textTheme.h3),
            const SizedBox(height: 12),
            ..._databaseTypes.map(
              (type) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: ResourceCard(
                  title: type,
                  subtitle: _databaseSubtitle(type),
                  leading: ResourceCardAssetIcon(
                    assetDirectory: 'lib/assets/databases',
                    assetName: type,
                  ),
                  onTap: () => _openType(context, type),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text('Services', style: theme.textTheme.h3),
            const SizedBox(height: 12),
            ...servicePresets.map(
              (service) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: ResourceCard(
                  title: service.title,
                  subtitle: service.subtitle,
                  leading: ResourceCardAssetIcon(
                    assetDirectory: 'lib/assets/services',
                    assetName: service.title,
                  ),
                  onTap: () => _showServiceComingSoon(context, service),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _applicationSubtitle(ApplicationCreateType type) => switch (type) {
    ApplicationCreateType.privateGithubApp =>
      'You can deploy public & private repositories through your GitHub Apps.',
    ApplicationCreateType.privateDeployKey =>
      'You can deploy private repositories with a deploy key.',
    ApplicationCreateType.publicGithubApp =>
      'You can deploy any kind of public repositories from the supported git providers.',
    ApplicationCreateType.dockerfile =>
      'You can deploy a simple Dockerfile, without Git.',
    ApplicationCreateType.dockerImage =>
      'You can deploy an existing Docker Image from any Registry, without Git.',
    ApplicationCreateType.dockerCompose =>
      'You can deploy complex application easily with Docker Compose, without Git.',
  };

  String _databaseSubtitle(String type) => switch (type) {
    'PostgreSQL' =>
      'PostgreSQL is an object-relational database known for its robustness, advanced features, and strong standards compliance.',
    'ClickHouse' =>
      'ClickHouse is a column-oriented database that supports real-time analytics, business intelligence, observability, ML and GenAI, and more.',
    'Dragonfly' =>
      'Dragonfly DB is a drop-in Redis replacement that delivers 25x more throughput and 12x faster snapshotting than Redis.',
    'Redis' =>
      'Redis is a source-available, in-memory storage, used as a distributed, in-memory key-value database, cache and message broker, with optional durability.',
    'KeyDB' =>
      'KeyDB is a database that offers high performance, low latency, and scalability for various data structures and workloads.',
    'MariaDB' =>
      'MariaDB is a community-developed, commercially supported fork of the MySQL relational database management system, intended to remain free and open-source.',
    'MySQL' => 'MySQL is an open-source relational database management system.',
    'MongoDB' =>
      'MongoDB is a source-available, cross-platform, document-oriented database program.',
    _ => 'Provision a database in this environment.',
  };
}
