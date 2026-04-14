import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../api/coolify_api.dart';
import '../../core/services/app_toast.dart';
import '../../core/services/coolify_client_service.dart';
import '../../core/widgets/resource_card.dart';
import '../../core/widgets/state_views.dart';
import 'environment_resources_page.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  bool _loading = true;
  String? _error;
  List<ProjectSummary> _projects = const [];

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
      final projects = await api.projects.list();
      if (!mounted) return;
      setState(() => _projects = projects);
    } catch (error) {
      if (!mounted) return;
      setState(() => _error = error.toString());
      AppToast.error(
        context,
        error.toString(),
        title: 'Could not load projects',
      );
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _openProject(ProjectSummary project) async {
    try {
      final api = await CoolifyClientService.createClient();
      final environments = await api.projects.listEnvironments(project.uuid);
      if (!mounted) return;

      if (environments.length == 1) {
        await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => ProjectEnvironmentResourcesPage(
              projectName: project.name,
              projectUuid: project.uuid,
              environment: environments.first,
            ),
          ),
        );
        return;
      }

      await Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => _ProjectEnvironmentsPage(
            project: project,
            initialEnvironments: environments,
          ),
        ),
      );
    } catch (error) {
      if (!mounted) return;
      AppToast.error(
        context,
        error.toString(),
        title: 'Could not open project',
      );
    }
  }

  void _showAddInfo() {
    AppToast.info(
      context,
      'Project creation is not connected yet.',
      title: 'Coming soon',
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) return const LoadingStateView();
    if (_error != null) {
      return ErrorStateView(message: _error!, onRetry: _load);
    }
    if (_projects.isEmpty) {
      return const EmptyStateView(label: 'No projects found.');
    }

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                'Projects',
                style: ShadTheme.of(context).textTheme.h4,
              ),
            ),
            ShadButton.outline(
              onPressed: _showAddInfo,
              child: const Text('+ Add'),
            ),
          ],
        ),
        const SizedBox(height: 16),
        ..._projects.map(
          (project) => Padding(
            padding: const EdgeInsets.only(bottom: 14),
            child: ResourceCard(
              title: project.name,
              subtitle: project.description,
              onTap: () => _openProject(project),
            ),
          ),
        ),
      ],
    );
  }
}

class _ProjectEnvironmentsPage extends StatefulWidget {
  const _ProjectEnvironmentsPage({
    required this.project,
    this.initialEnvironments,
  });

  final ProjectSummary project;
  final List<ProjectEnvironment>? initialEnvironments;

  @override
  State<_ProjectEnvironmentsPage> createState() =>
      _ProjectEnvironmentsPageState();
}

class _ProjectEnvironmentsPageState extends State<_ProjectEnvironmentsPage> {
  late bool _loading = widget.initialEnvironments == null;
  String? _error;
  late List<ProjectEnvironment> _environments =
      widget.initialEnvironments ?? const [];

  @override
  void initState() {
    super.initState();
    if (widget.initialEnvironments == null) {
      _load();
    }
  }

  Future<void> _load() async {
    setState(() {
      _loading = true;
      _error = null;
    });

    try {
      final api = await CoolifyClientService.createClient();
      final environments = await api.projects.listEnvironments(
        widget.project.uuid,
      );
      if (!mounted) return;
      setState(() => _environments = environments);
    } catch (error) {
      if (!mounted) return;
      setState(() => _error = error.toString());
      AppToast.error(
        context,
        error.toString(),
        title: 'Could not load environments',
      );
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _openEnvironment(ProjectEnvironment environment) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => ProjectEnvironmentResourcesPage(
          projectName: widget.project.name,
          projectUuid: widget.project.uuid,
          environment: environment,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.project.name)),
      body: SafeArea(
        top: false,
        child: _loading
            ? const LoadingStateView()
            : _error != null
            ? ErrorStateView(message: _error!, onRetry: _load)
            : _environments.isEmpty
            ? const EmptyStateView(label: 'No environments found.')
            : ListView.separated(
                padding: const EdgeInsets.all(16),
                itemBuilder: (context, index) {
                  final environment = _environments[index];
                  return ResourceCard(
                    title: environment.name,
                    subtitle: environment.description,
                    onTap: () => _openEnvironment(environment),
                    trailing: Text(
                      environment.updatedAt.isEmpty
                          ? ''
                          : environment.updatedAt,
                      style: ShadTheme.of(context).textTheme.small,
                    ),
                  );
                },
                separatorBuilder: (_, _) => const SizedBox(height: 12),
                itemCount: _environments.length,
              ),
      ),
    );
  }
}
