import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../api/coolify_api.dart';
import '../../components/app_page_header.dart';
import '../../components/app_sidebar_drawer.dart';
import '../../core/services/app_toast.dart';
import '../../core/services/coolify_client_service.dart';
import '../../components/resource_card.dart';
import '../../components/state_views.dart';
import 'create_project_page.dart';
import 'environment_resources_page.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => ProjectsPageState();
}

class ProjectsPageState extends State<ProjectsPage> {
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

      // temporarily disabled: auto-skip to single environment on project tap
      // if (environments.length == 1) {
      //   await Navigator.of(context).push(
      //     MaterialPageRoute(
      //       builder: (_) => ProjectEnvironmentResourcesPage(
      //         projectName: project.name,
      //         projectUuid: project.uuid,
      //         environment: environments.first,
      //       ),
      //     ),
      //   );
      //   return;
      // }

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

  void openAdd() => _openCreateProject();

  Future<void> _openCreateProject() async {
    final created = await Navigator.of(context).push<bool>(
      MaterialPageRoute(builder: (_) => const CreateProjectPage()),
    );
    if (created == true) _load();
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
  bool _creatingEnvironment = false;

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

  Future<void> _openCreateEnvironmentDialog() async {
    final controller = TextEditingController();
    String? validationError;

    final created = await showDialog<bool>(
      context: context,
      builder: (dialogContext) {
        return StatefulBuilder(
          builder: (dialogContext, setDialogState) {
            Future<void> save() async {
              final name = controller.text.trim();
              if (name.isEmpty) {
                setDialogState(() => validationError = 'Name is required.');
                return;
              }

              setDialogState(() => validationError = null);
              setState(() => _creatingEnvironment = true);

              try {
                final api = await CoolifyClientService.createClient();
                await api.projects.createEnvironment(
                  projectUuid: widget.project.uuid,
                  name: name,
                );
                if (!mounted || !dialogContext.mounted) return;
                Navigator.of(dialogContext).pop(true);
                AppToast.success(context, 'Environment created.');
              } catch (error) {
                if (!mounted) return;
                AppToast.error(
                  context,
                  error.toString(),
                  title: 'Could not create environment',
                );
              } finally {
                if (mounted) {
                  setState(() => _creatingEnvironment = false);
                }
              }
            }

            return AlertDialog(
              title: const Text('Add Environment'),
              content: SizedBox(
                width: 420,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShadInput(
                      controller: controller,
                      autofocus: true,
                      placeholder: const Text('Name'),
                      enabled: !_creatingEnvironment,
                      onSubmitted: (_) => save(),
                    ),
                    if (validationError != null) ...[
                      const SizedBox(height: 8),
                      Text(
                        validationError!,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              actions: [
                ShadButton.outline(
                  onPressed: _creatingEnvironment
                      ? null
                      : () => Navigator.of(dialogContext).pop(false),
                  child: const Text('Cancel'),
                ),
                ShadButton(
                  onPressed: _creatingEnvironment ? null : save,
                  child: Text(_creatingEnvironment ? 'Saving...' : 'Save'),
                ),
              ],
            );
          },
        );
      },
    );

    controller.dispose();

    if (created == true) {
      await _load();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppSidebarDrawer(),
      appBar: AppPageHeader(
        crumbs: ['Projects', widget.project.name],
        actions: [
          IconButton(
            onPressed: _creatingEnvironment ? null : _openCreateEnvironmentDialog,
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
