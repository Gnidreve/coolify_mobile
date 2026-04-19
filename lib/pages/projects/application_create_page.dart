import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../api/coolify_api.dart';
import '../../components/app_page_header.dart';
import '../../components/app_sidebar_drawer.dart';
import '../../core/services/app_toast.dart';
import '../../core/services/coolify_client_service.dart';
import '../../components/state_views.dart';

enum ApplicationCreateType {
  privateGithubApp,
  privateDeployKey,
  publicGithubApp,
  dockerfile,
  dockerImage,
  dockerCompose;

  String get title => switch (this) {
    ApplicationCreateType.privateGithubApp => 'Private Github App',
    ApplicationCreateType.privateDeployKey => 'Private Deploy Key',
    ApplicationCreateType.publicGithubApp => 'Public Github App',
    ApplicationCreateType.dockerfile => 'Dockerfile',
    ApplicationCreateType.dockerImage => 'Docker Image',
    ApplicationCreateType.dockerCompose => 'Docker Compose',
  };
}

enum _ApplicationCreateSection { general, source, advanced }

enum _ApplicationFieldType { text, multiline, integer, boolean }

class _ApplicationFieldDefinition {
  const _ApplicationFieldDefinition(this.key, this.type);

  final String key;
  final _ApplicationFieldType type;
}

class ApplicationCreatePage extends StatefulWidget {
  const ApplicationCreatePage({
    super.key,
    required this.type,
    required this.projectUuid,
    required this.projectName,
    required this.environment,
  });

  final ApplicationCreateType type;
  final String projectUuid;
  final String projectName;
  final ProjectEnvironment environment;

  @override
  State<ApplicationCreatePage> createState() => _ApplicationCreatePageState();
}

class _ApplicationCreatePageState extends State<ApplicationCreatePage> {
  static const _generalFields = <_ApplicationFieldDefinition>[
    _ApplicationFieldDefinition('project_uuid', _ApplicationFieldType.text),
    _ApplicationFieldDefinition('environment_uuid', _ApplicationFieldType.text),
    _ApplicationFieldDefinition('environment_name', _ApplicationFieldType.text),
    _ApplicationFieldDefinition('server_uuid', _ApplicationFieldType.text),
    _ApplicationFieldDefinition('destination_uuid', _ApplicationFieldType.text),
    _ApplicationFieldDefinition('name', _ApplicationFieldType.text),
    _ApplicationFieldDefinition('description', _ApplicationFieldType.multiline),
    _ApplicationFieldDefinition('domains', _ApplicationFieldType.text),
    _ApplicationFieldDefinition('ports_exposes', _ApplicationFieldType.text),
  ];

  static const _gitFields = <_ApplicationFieldDefinition>[
    _ApplicationFieldDefinition('git_repository', _ApplicationFieldType.text),
    _ApplicationFieldDefinition('git_branch', _ApplicationFieldType.text),
    _ApplicationFieldDefinition('build_pack', _ApplicationFieldType.text),
    _ApplicationFieldDefinition('base_directory', _ApplicationFieldType.text),
    _ApplicationFieldDefinition('publish_directory', _ApplicationFieldType.text),
  ];

  static const _privateGithubFields = <_ApplicationFieldDefinition>[
    _ApplicationFieldDefinition('github_app_uuid', _ApplicationFieldType.text),
    ..._gitFields,
  ];

  static const _privateDeployFields = <_ApplicationFieldDefinition>[
    _ApplicationFieldDefinition('private_key_uuid', _ApplicationFieldType.text),
    ..._gitFields,
  ];

  static const _dockerfileFields = <_ApplicationFieldDefinition>[
    _ApplicationFieldDefinition('dockerfile', _ApplicationFieldType.multiline),
    _ApplicationFieldDefinition(
      'dockerfile_location',
      _ApplicationFieldType.text,
    ),
    _ApplicationFieldDefinition(
      'dockerfile_target_build',
      _ApplicationFieldType.text,
    ),
  ];

  static const _dockerImageFields = <_ApplicationFieldDefinition>[
    _ApplicationFieldDefinition(
      'docker_registry_image_name',
      _ApplicationFieldType.text,
    ),
    _ApplicationFieldDefinition(
      'docker_registry_image_tag',
      _ApplicationFieldType.text,
    ),
  ];

  static const _dockerComposeFields = <_ApplicationFieldDefinition>[
    _ApplicationFieldDefinition(
      'docker_compose_raw',
      _ApplicationFieldType.multiline,
    ),
  ];

  static const _advancedFields = <_ApplicationFieldDefinition>[
    _ApplicationFieldDefinition('instant_deploy', _ApplicationFieldType.boolean),
    _ApplicationFieldDefinition(
      'use_build_server',
      _ApplicationFieldType.boolean,
    ),
    _ApplicationFieldDefinition(
      'connect_to_docker_network',
      _ApplicationFieldType.boolean,
    ),
    _ApplicationFieldDefinition(
      'force_domain_override',
      _ApplicationFieldType.boolean,
    ),
    _ApplicationFieldDefinition(
      'is_container_label_escape_enabled',
      _ApplicationFieldType.boolean,
    ),
    _ApplicationFieldDefinition('is_static', _ApplicationFieldType.boolean),
    _ApplicationFieldDefinition('is_spa', _ApplicationFieldType.boolean),
    _ApplicationFieldDefinition(
      'is_force_https_enabled',
      _ApplicationFieldType.boolean,
    ),
  ];

  late final Map<String, TextEditingController> _controllers;
  late final Map<String, bool> _boolValues;

  bool _loading = false;
  bool _saving = false;
  String? _error;
  _ApplicationCreateSection _section = _ApplicationCreateSection.general;

  List<PrivateKeyResource> _privateKeys = const [];
  List<GithubAppResource> _githubApps = const [];

  List<_ApplicationFieldDefinition> get _sourceFields => switch (widget.type) {
    ApplicationCreateType.privateGithubApp => _privateGithubFields,
    ApplicationCreateType.privateDeployKey => _privateDeployFields,
    ApplicationCreateType.publicGithubApp => _gitFields,
    ApplicationCreateType.dockerfile => _dockerfileFields,
    ApplicationCreateType.dockerImage => _dockerImageFields,
    ApplicationCreateType.dockerCompose => _dockerComposeFields,
  };

  List<_ApplicationCreateSection> get _sections => [
    _ApplicationCreateSection.general,
    if (_sourceFields.isNotEmpty) _ApplicationCreateSection.source,
    _ApplicationCreateSection.advanced,
  ];

  List<_ApplicationFieldDefinition> get _visibleFields => switch (_section) {
    _ApplicationCreateSection.general => _generalFields,
    _ApplicationCreateSection.source => _sourceFields,
    _ApplicationCreateSection.advanced => _advancedFields,
  };

  @override
  void initState() {
    super.initState();
    final allFields = [
      ..._generalFields,
      ..._privateGithubFields,
      ..._privateDeployFields,
      ..._dockerfileFields,
      ..._dockerImageFields,
      ..._dockerComposeFields,
      ..._advancedFields,
    ];

    _controllers = {
      for (final field in allFields.where(
        (field) => field.type != _ApplicationFieldType.boolean,
      ))
        field.key: TextEditingController(),
    };
    _boolValues = {
      for (final field in allFields.where(
        (field) => field.type == _ApplicationFieldType.boolean,
      ))
        field.key: false,
    };

    _controllers['project_uuid']!.text = widget.projectUuid;
    _controllers['environment_uuid']!.text = widget.environment.uuid;
    _controllers['environment_name']!.text = widget.environment.name;
    _controllers['git_branch']!.text = 'main';
    _controllers['docker_registry_image_tag']!.text = 'latest';
    _loadLookups();
  }

  @override
  void dispose() {
    for (final controller in _controllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  Future<void> _loadLookups() async {
    final needsPrivateKeys =
        widget.type == ApplicationCreateType.privateDeployKey;
    final needsGithubApps =
        widget.type == ApplicationCreateType.privateGithubApp;
    if (!needsPrivateKeys && !needsGithubApps) return;

    setState(() {
      _loading = true;
      _error = null;
    });

    try {
      final api = await CoolifyClientService.createClient();
      if (needsPrivateKeys) {
        _privateKeys = await api.security.keys.list();
      }
      if (needsGithubApps) {
        _githubApps = await api.githubApps.list();
      }
    } catch (error) {
      _error = error.toString();
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _save() async {
    if (_saving) return;

    final name = _controllers['name']!.text.trim();
    final serverUuid = _controllers['server_uuid']!.text.trim();
    final destinationUuid = _controllers['destination_uuid']!.text.trim();

    if (name.isEmpty || serverUuid.isEmpty || destinationUuid.isEmpty) {
      AppToast.error(
        context,
        'Name, server UUID and destination UUID are required.',
        title: 'Validation failed',
      );
      return;
    }

    final missingSourceField = switch (widget.type) {
      ApplicationCreateType.privateGithubApp =>
        _controllers['github_app_uuid']!.text.trim().isEmpty
            ? 'GitHub App UUID'
            : _controllers['git_repository']!.text.trim().isEmpty
            ? 'Git Repository'
            : null,
      ApplicationCreateType.privateDeployKey =>
        _controllers['private_key_uuid']!.text.trim().isEmpty
            ? 'Private Key UUID'
            : _controllers['git_repository']!.text.trim().isEmpty
            ? 'Git Repository'
            : null,
      ApplicationCreateType.publicGithubApp =>
        _controllers['git_repository']!.text.trim().isEmpty
            ? 'Git Repository'
            : null,
      ApplicationCreateType.dockerfile =>
        _controllers['dockerfile']!.text.trim().isEmpty ? 'Dockerfile' : null,
      ApplicationCreateType.dockerImage =>
        _controllers['docker_registry_image_name']!.text.trim().isEmpty
            ? 'Docker Registry Image Name'
            : null,
      ApplicationCreateType.dockerCompose =>
        _controllers['docker_compose_raw']!.text.trim().isEmpty
            ? 'Docker Compose'
            : null,
    };

    if (missingSourceField != null) {
      AppToast.error(
        context,
        '$missingSourceField is required.',
        title: 'Validation failed',
      );
      return;
    }

    final body = <String, dynamic>{};
    for (final entry in _controllers.entries) {
      final value = entry.value.text.trim();
      if (value.isNotEmpty) {
        body[entry.key] = value;
      }
    }
    for (final entry in _boolValues.entries) {
      body[entry.key] = entry.value;
    }

    setState(() => _saving = true);

    try {
      final api = await CoolifyClientService.createClient();
      await switch (widget.type) {
        ApplicationCreateType.privateGithubApp =>
          api.applications.createPrivateGithubApp(body: body),
        ApplicationCreateType.privateDeployKey =>
          api.applications.createPrivateDeployKey(body: body),
        ApplicationCreateType.publicGithubApp =>
          api.applications.createPublic(body: body),
        ApplicationCreateType.dockerfile =>
          api.applications.createDockerfile(body: body),
        ApplicationCreateType.dockerImage =>
          api.applications.createDockerImage(body: body),
        ApplicationCreateType.dockerCompose =>
          api.applications.createDockerCompose(body: body),
      };

      if (!mounted) return;
      AppToast.success(context, '${widget.type.title} created.');
      Navigator.of(context).pop(true);
    } catch (error) {
      if (!mounted) return;
      AppToast.error(context, error.toString(), title: 'Create failed');
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppSidebarDrawer(),
      appBar: AppPageHeader(
        crumbs: [
          'Projects',
          widget.projectName,
          widget.environment.name,
          'Add Resource',
          widget.type.title,
        ],
      ),
      body: SafeArea(
        top: false,
        child: _loading
            ? const LoadingStateView()
            : _error != null
            ? ErrorStateView(message: _error!, onRetry: _loadLookups)
            : ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ShadSelect<_ApplicationCreateSection>(
                      initialValue: _section,
                      onChanged: (value) {
                        if (value == null) return;
                        setState(() => _section = value);
                      },
                      options: _sections
                          .map(
                            (section) => ShadOption(
                              value: section,
                              child: Text(_sectionLabel(section)),
                            ),
                          )
                          .toList(),
                      selectedOptionBuilder: (context, value) =>
                          Text(_sectionLabel(value)),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ..._visibleFields.map(_buildField),
                  const SizedBox(height: 8),
                  ShadButton(
                    onPressed: _saving ? null : _save,
                    child: _saving
                        ? const SizedBox(
                            width: 16,
                            height: 16,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Text('Create'),
                  ),
                ],
              ),
      ),
    );
  }

  Widget _buildField(_ApplicationFieldDefinition field) {
    if (field.key == 'private_key_uuid' && _privateKeys.isNotEmpty) {
      final currentValue = _controllers[field.key]!.text.trim().isEmpty
          ? null
          : _controllers[field.key]!.text.trim();
      return Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: SizedBox(
          width: double.infinity,
          child: ShadSelect<String>(
            initialValue: currentValue,
            placeholder: const Text('Select private key'),
            onChanged: (value) {
              _controllers[field.key]!.text = value ?? '';
              setState(() {});
            },
            options: _privateKeys
                .map(
                  (key) => ShadOption(
                    value: key.uuid,
                    child: Text(
                      key.name.isNotEmpty ? key.name : key.uuid,
                    ),
                  ),
                )
                .toList(),
            selectedOptionBuilder: (context, value) {
              final match = _privateKeys.where((key) => key.uuid == value).first;
              return Text(match.name.isNotEmpty ? match.name : match.uuid);
            },
          ),
        ),
      );
    }

    if (field.key == 'github_app_uuid' && _githubApps.isNotEmpty) {
      final currentValue = _controllers[field.key]!.text.trim().isEmpty
          ? null
          : _controllers[field.key]!.text.trim();
      return Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: SizedBox(
          width: double.infinity,
          child: ShadSelect<String>(
            initialValue: currentValue,
            placeholder: const Text('Select GitHub app'),
            onChanged: (value) {
              _controllers[field.key]!.text = value ?? '';
              setState(() {});
            },
            options: _githubApps
                .map(
                  (app) => ShadOption(
                    value: app.uuid,
                    child: Text(
                      app.organization.isEmpty
                          ? app.name
                          : '${app.name} (${app.organization})',
                    ),
                  ),
                )
                .toList(),
            selectedOptionBuilder: (context, value) {
              final match = _githubApps.where((app) => app.uuid == value).first;
              return Text(
                match.organization.isEmpty
                    ? match.name
                    : '${match.name} (${match.organization})',
              );
            },
          ),
        ),
      );
    }

    if (field.type == _ApplicationFieldType.boolean) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: ShadCard(
          child: SwitchListTile(
            value: _boolValues[field.key] ?? false,
            onChanged: (value) =>
                setState(() => _boolValues[field.key] = value),
            title: Text(_labelFor(field.key)),
          ),
        ),
      );
    }

    final keyboardType = field.type == _ApplicationFieldType.integer
        ? TextInputType.number
        : TextInputType.multiline;

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: ShadInputFormField(
        id: field.key,
        controller: _controllers[field.key],
        label: Text(_labelFor(field.key)),
        keyboardType: keyboardType,
        minLines: field.type == _ApplicationFieldType.multiline ? 3 : 1,
        maxLines: field.type == _ApplicationFieldType.multiline ? 10 : 1,
      ),
    );
  }

  String _sectionLabel(_ApplicationCreateSection section) => switch (section) {
    _ApplicationCreateSection.general => 'General',
    _ApplicationCreateSection.source => 'Source',
    _ApplicationCreateSection.advanced => 'Advanced',
  };

  String _labelFor(String key) {
    return key
        .split('_')
        .map(
          (part) => part.isEmpty
              ? part
              : '${part[0].toUpperCase()}${part.substring(1)}',
        )
        .join(' ');
  }
}
