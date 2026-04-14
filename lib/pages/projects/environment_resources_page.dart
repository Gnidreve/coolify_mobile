import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../api/coolify_api.dart';
import '../../components/resource_card.dart';
import '../../core/services/app_toast.dart';
import '../../core/services/coolify_client_service.dart';
import '../../core/utils/resource_status.dart';
import '../../core/widgets/state_views.dart';
import '../databases/index.dart';
import 'application_details_page.dart';
import 'create_environment_resource_page.dart';

class ProjectEnvironmentResourcesPage extends StatefulWidget {
  const ProjectEnvironmentResourcesPage({
    super.key,
    required this.projectName,
    required this.projectUuid,
    required this.environment,
  });

  final String projectName;
  final String projectUuid;
  final ProjectEnvironment environment;

  @override
  State<ProjectEnvironmentResourcesPage> createState() =>
      _ProjectEnvironmentResourcesPageState();
}

class _ProjectEnvironmentResourcesPageState
    extends State<ProjectEnvironmentResourcesPage> {
  bool _loading = true;
  String? _error;
  List<ApplicationResource> _applications = const [];
  List<DatabaseResource> _databases = const [];

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    setState(() {
      _loading = true;
      _error = null;
    });

    try {
      final api = await CoolifyClientService.createClient();
      final applications = await api.applications.list();
      final databases = await api.databases.list();
      final filtered = applications
          .where((item) => item.environmentId == widget.environment.id)
          .toList();
      final filteredDatabases = databases
          .where((item) => item.environmentId == widget.environment.id)
          .toList();
      if (!mounted) return;
      setState(() {
        _applications = filtered;
        _databases = filteredDatabases;
      });
    } catch (error) {
      if (!mounted) return;
      setState(() => _error = error.toString());
      AppToast.error(
        context,
        error.toString(),
        title: 'Could not load environment resources',
      );
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _openApplication(ApplicationResource application) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => ApplicationDetailsPage(
          applicationUuid: application.uuid,
          fallbackTitle: application.name,
        ),
      ),
    );
  }

  Future<void> _openCreateResource() async {
    final changed = await Navigator.of(context).push<bool>(
      MaterialPageRoute(
        builder: (_) => CreateEnvironmentResourcePage(
          projectUuid: widget.projectUuid,
          environment: widget.environment,
        ),
      ),
    );
    if (changed == true) {
      _load();
    }
  }

  Future<void> _openDatabase(DatabaseResource database) async {
    final databaseContext = DatabaseContext(
      projectUuid: widget.projectUuid,
      environmentUuid: widget.environment.uuid,
      environmentName: widget.environment.name,
    );

    final page = switch (database.serviceType) {
      'postgresql' => PostgreSqlDatabasePage(
        context: databaseContext,
        databaseUuid: database.uuid,
      ),
      'clickhouse' => ClickHouseDatabasePage(
        context: databaseContext,
        databaseUuid: database.uuid,
      ),
      'dragonfly' => DragonflyDatabasePage(
        context: databaseContext,
        databaseUuid: database.uuid,
      ),
      'redis' => RedisDatabasePage(
        context: databaseContext,
        databaseUuid: database.uuid,
      ),
      'keydb' => KeyDbDatabasePage(
        context: databaseContext,
        databaseUuid: database.uuid,
      ),
      'mariadb' => MariaDbDatabasePage(
        context: databaseContext,
        databaseUuid: database.uuid,
      ),
      'mysql' => MySqlDatabasePage(
        context: databaseContext,
        databaseUuid: database.uuid,
      ),
      'mongodb' => MongoDbDatabasePage(
        context: databaseContext,
        databaseUuid: database.uuid,
      ),
      _ => null,
    };

    if (page == null) {
      AppToast.info(
        context,
        'No dedicated editor exists yet for ${database.serviceType}.',
      );
      return;
    }

    final changed = await Navigator.of(
      context,
    ).push<bool>(MaterialPageRoute(builder: (_) => page));
    if (changed == true) {
      _load();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.environment.name),
        actions: [
          IconButton(
            onPressed: _openCreateResource,
            icon: const Icon(LucideIcons.plus),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SafeArea(
        top: false,
        child: _loading
            ? const LoadingStateView()
            : _error != null
            ? ErrorStateView(message: _error!, onRetry: _load)
            : ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  Text(widget.projectName, style: theme.textTheme.muted),
                  const SizedBox(height: 20),
                  const _EnvironmentSectionHeader(title: 'Applications'),
                  const SizedBox(height: 12),
                  if (_applications.isEmpty)
                    const _EmptyResourceHint(label: 'No applications found.')
                  else
                    ..._applications.map(
                      (application) => Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: ResourceCard(
                          title: application.name,
                          subtitle: application.fqdn,
                          statusColor: resourceStatusColor(application.status),
                          showChevron: false,
                          onTap: () => _openApplication(application),
                        ),
                      ),
                    ),
                  const SizedBox(height: 28),
                  const _EnvironmentSectionHeader(title: 'Databases'),
                  const SizedBox(height: 12),
                  if (_databases.isEmpty)
                    const _EmptyResourceHint(label: 'No databases found.')
                  else
                    ..._databases.map(
                      (database) => Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: ResourceCard(
                          title: database.name,
                          subtitle: database.description,
                          tertiary: database.serviceType,
                          statusColor: resourceStatusColor(database.status),
                          showChevron: false,
                          onTap: () => _openDatabase(database),
                        ),
                      ),
                    ),
                  const SizedBox(height: 28),
                  const _EnvironmentSectionHeader(title: 'Services'),
                  const SizedBox(height: 12),
                  const ResourceCard(
                    title: 'Supabase Stack',
                    tertiary: 'Server: 72.60.182.93 / 2a02:4780:41:b917::1',
                    statusColor: Color(0xFFFACC15),
                    showChevron: false,
                  ),
                ],
              ),
      ),
    );
  }
}

class _EnvironmentSectionHeader extends StatelessWidget {
  const _EnvironmentSectionHeader({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: ShadTheme.of(
        context,
      ).textTheme.h3.copyWith(fontWeight: FontWeight.w700),
    );
  }
}

class _EmptyResourceHint extends StatelessWidget {
  const _EmptyResourceHint({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Text(label, style: ShadTheme.of(context).textTheme.muted),
    );
  }
}
