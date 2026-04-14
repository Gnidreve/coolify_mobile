import 'package:flutter/material.dart';

import '../../api/coolify_api.dart';
import '../databases/index.dart';
import 'create_environment_resource_type_page.dart';

class CreateEnvironmentResourcePage extends StatelessWidget {
  const CreateEnvironmentResourcePage({
    super.key,
    required this.projectUuid,
    required this.environment,
  });

  final String projectUuid;
  final ProjectEnvironment environment;

  static const _applicationTypes = <String>[
    'Private Github App',
    'Private Deploy Key',
    'Public Github App',
    'Dockerfile',
    'Docker Image',
    'Docker Compose',
  ];

  static const _databaseTypes = <String>[
    'Postgres',
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
      projectUuid: projectUuid,
      environmentUuid: environment.uuid,
      environmentName: environment.name,
    );

    final databasePage = switch (title) {
      'Postgres' => PostgreSqlDatabasePage(context: databaseContext),
      'ClickHouse' => ClickHouseDatabasePage(context: databaseContext),
      'Dragonfly' => DragonflyDatabasePage(context: databaseContext),
      'Redis' => RedisDatabasePage(context: databaseContext),
      'KeyDB' => KeyDbDatabasePage(context: databaseContext),
      'MariaDB' => MariaDbDatabasePage(context: databaseContext),
      'MySQL' => MySqlDatabasePage(context: databaseContext),
      'MongoDB' => MongoDbDatabasePage(context: databaseContext),
      _ => null,
    };

    final changed = await Navigator.of(context).push<bool>(
      MaterialPageRoute(
        builder: (_) =>
            databasePage ?? CreateEnvironmentResourceTypePage(title: title),
      ),
    );
    if (changed == true && context.mounted) {
      Navigator.of(context).pop(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Resource')),
      body: SafeArea(
        top: false,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Text(environment.name),
            const SizedBox(height: 24),
            const Text(
              'Applications',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            ..._applicationTypes.map(
              (type) => ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(type),
                onTap: () => _openType(context, type),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Databases',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            ..._databaseTypes.map(
              (type) => ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(type),
                onTap: () => _openType(context, type),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Services',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
