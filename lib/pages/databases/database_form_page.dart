import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../components/app_page_header.dart';
import '../../components/app_sidebar_drawer.dart';
import '../../core/services/app_toast.dart';
import '../../core/services/coolify_client_service.dart';
import '../../components/state_views.dart';

class DatabaseContext {
  const DatabaseContext({
    required this.projectName,
    required this.projectUuid,
    required this.environmentUuid,
    required this.environmentName,
  });

  final String projectName;
  final String projectUuid;
  final String environmentUuid;
  final String environmentName;
}

enum DatabaseServiceType {
  postgresql,
  clickhouse,
  dragonfly,
  redis,
  keydb,
  mariadb,
  mysql,
  mongodb;

  String get apiKey => switch (this) {
    DatabaseServiceType.postgresql => 'postgresql',
    DatabaseServiceType.clickhouse => 'clickhouse',
    DatabaseServiceType.dragonfly => 'dragonfly',
    DatabaseServiceType.redis => 'redis',
    DatabaseServiceType.keydb => 'keydb',
    DatabaseServiceType.mariadb => 'mariadb',
    DatabaseServiceType.mysql => 'mysql',
    DatabaseServiceType.mongodb => 'mongodb',
  };

  String get title => switch (this) {
    DatabaseServiceType.postgresql => 'PostgreSQL',
    DatabaseServiceType.clickhouse => 'ClickHouse',
    DatabaseServiceType.dragonfly => 'Dragonfly',
    DatabaseServiceType.redis => 'Redis',
    DatabaseServiceType.keydb => 'KeyDB',
    DatabaseServiceType.mariadb => 'MariaDB',
    DatabaseServiceType.mysql => 'MySQL',
    DatabaseServiceType.mongodb => 'MongoDB',
  };

  static DatabaseServiceType? fromApiValue(String value) {
    final normalized = value.trim().toLowerCase().replaceAll('_', '');
    return switch (normalized) {
      'postgresql' || 'postgres' => DatabaseServiceType.postgresql,
      'clickhouse' => DatabaseServiceType.clickhouse,
      'dragonfly' || 'dragonflydb' => DatabaseServiceType.dragonfly,
      'redis' => DatabaseServiceType.redis,
      'keydb' => DatabaseServiceType.keydb,
      'mariadb' => DatabaseServiceType.mariadb,
      'mysql' => DatabaseServiceType.mysql,
      'mongodb' || 'mongo' => DatabaseServiceType.mongodb,
      _ => null,
    };
  }
}

class DatabaseFormPage extends StatefulWidget {
  const DatabaseFormPage({
    super.key,
    required this.serviceType,
    required this.context,
    this.databaseUuid,
  });

  final DatabaseServiceType serviceType;
  final DatabaseContext context;
  final String? databaseUuid;

  bool get isEditing => databaseUuid != null;

  @override
  State<DatabaseFormPage> createState() => _DatabaseFormPageState();
}

class _DatabaseFormPageState extends State<DatabaseFormPage> {
  late final Map<String, TextEditingController> _controllers;
  late final Map<String, bool> _boolValues;
  bool _loading = true;
  bool _saving = false;
  String? _error;
  _DatabaseSection _section = _DatabaseSection.general;

  static const _hiddenCreateKeys = {
    'server_uuid',
    'project_uuid',
    'environment_name',
    'environment_uuid',
    'destination_uuid',
  };

  static const _advancedEditKeys = {
    'is_public', 'public_port', 'public_port_timeout',
    'limits_memory', 'limits_memory_swap', 'limits_memory_swappiness',
    'limits_memory_reservation', 'limits_cpus', 'limits_cpuset',
    'limits_cpu_shares',
  };

  static const List<_DatabaseFieldDefinition> _commonCreateFields = [
    _DatabaseFieldDefinition('server_uuid', _DatabaseFieldType.text),
    _DatabaseFieldDefinition('project_uuid', _DatabaseFieldType.text),
    _DatabaseFieldDefinition('environment_name', _DatabaseFieldType.text),
    _DatabaseFieldDefinition('environment_uuid', _DatabaseFieldType.text),
    _DatabaseFieldDefinition('destination_uuid', _DatabaseFieldType.text),
  ];

  static const List<_DatabaseFieldDefinition> _commonPatchFields = [
    _DatabaseFieldDefinition('name', _DatabaseFieldType.text),
    _DatabaseFieldDefinition('description', _DatabaseFieldType.multiline),
    _DatabaseFieldDefinition('image', _DatabaseFieldType.text),
    _DatabaseFieldDefinition('is_public', _DatabaseFieldType.boolean),
    _DatabaseFieldDefinition('public_port', _DatabaseFieldType.integer),
    _DatabaseFieldDefinition('public_port_timeout', _DatabaseFieldType.integer),
    _DatabaseFieldDefinition('limits_memory', _DatabaseFieldType.text),
    _DatabaseFieldDefinition('limits_memory_swap', _DatabaseFieldType.text),
    _DatabaseFieldDefinition(
      'limits_memory_swappiness',
      _DatabaseFieldType.integer,
    ),
    _DatabaseFieldDefinition(
      'limits_memory_reservation',
      _DatabaseFieldType.text,
    ),
    _DatabaseFieldDefinition('limits_cpus', _DatabaseFieldType.text),
    _DatabaseFieldDefinition('limits_cpuset', _DatabaseFieldType.text),
    _DatabaseFieldDefinition('limits_cpu_shares', _DatabaseFieldType.integer),
  ];

  static const Map<DatabaseServiceType, List<_DatabaseFieldDefinition>>
  _serviceFields = {
    DatabaseServiceType.postgresql: [
      _DatabaseFieldDefinition('postgres_user', _DatabaseFieldType.text),
      _DatabaseFieldDefinition('postgres_password', _DatabaseFieldType.text),
      _DatabaseFieldDefinition('postgres_db', _DatabaseFieldType.text),
      _DatabaseFieldDefinition('postgres_initdb_args', _DatabaseFieldType.text),
      _DatabaseFieldDefinition(
        'postgres_host_auth_method',
        _DatabaseFieldType.text,
      ),
      _DatabaseFieldDefinition('postgres_conf', _DatabaseFieldType.multiline),
      _DatabaseFieldDefinition('instant_deploy', _DatabaseFieldType.boolean),
    ],
    DatabaseServiceType.clickhouse: [
      _DatabaseFieldDefinition(
        'clickhouse_admin_user',
        _DatabaseFieldType.text,
      ),
      _DatabaseFieldDefinition(
        'clickhouse_admin_password',
        _DatabaseFieldType.text,
      ),
      _DatabaseFieldDefinition('instant_deploy', _DatabaseFieldType.boolean),
    ],
    DatabaseServiceType.dragonfly: [
      _DatabaseFieldDefinition('dragonfly_password', _DatabaseFieldType.text),
      _DatabaseFieldDefinition('instant_deploy', _DatabaseFieldType.boolean),
    ],
    DatabaseServiceType.redis: [
      _DatabaseFieldDefinition('redis_password', _DatabaseFieldType.text),
      _DatabaseFieldDefinition('redis_conf', _DatabaseFieldType.multiline),
      _DatabaseFieldDefinition('instant_deploy', _DatabaseFieldType.boolean),
    ],
    DatabaseServiceType.keydb: [
      _DatabaseFieldDefinition('keydb_password', _DatabaseFieldType.text),
      _DatabaseFieldDefinition('keydb_conf', _DatabaseFieldType.multiline),
      _DatabaseFieldDefinition('instant_deploy', _DatabaseFieldType.boolean),
    ],
    DatabaseServiceType.mariadb: [
      _DatabaseFieldDefinition('mariadb_conf', _DatabaseFieldType.multiline),
      _DatabaseFieldDefinition(
        'mariadb_root_password',
        _DatabaseFieldType.text,
      ),
      _DatabaseFieldDefinition('mariadb_user', _DatabaseFieldType.text),
      _DatabaseFieldDefinition('mariadb_password', _DatabaseFieldType.text),
      _DatabaseFieldDefinition('mariadb_database', _DatabaseFieldType.text),
      _DatabaseFieldDefinition('instant_deploy', _DatabaseFieldType.boolean),
    ],
    DatabaseServiceType.mysql: [
      _DatabaseFieldDefinition('mysql_root_password', _DatabaseFieldType.text),
      _DatabaseFieldDefinition('mysql_password', _DatabaseFieldType.text),
      _DatabaseFieldDefinition('mysql_user', _DatabaseFieldType.text),
      _DatabaseFieldDefinition('mysql_database', _DatabaseFieldType.text),
      _DatabaseFieldDefinition('mysql_conf', _DatabaseFieldType.multiline),
      _DatabaseFieldDefinition('instant_deploy', _DatabaseFieldType.boolean),
    ],
    DatabaseServiceType.mongodb: [
      _DatabaseFieldDefinition('mongo_conf', _DatabaseFieldType.multiline),
      _DatabaseFieldDefinition(
        'mongo_initdb_root_username',
        _DatabaseFieldType.text,
      ),
      _DatabaseFieldDefinition(
        'mongo_initdb_root_password',
        _DatabaseFieldType.text,
      ),
      _DatabaseFieldDefinition(
        'mongo_initdb_database',
        _DatabaseFieldType.text,
      ),
      _DatabaseFieldDefinition('instant_deploy', _DatabaseFieldType.boolean),
    ],
  };

  List<_DatabaseFieldDefinition> get _createFields => [
    ..._commonCreateFields,
    ..._commonPatchFields,
    ..._serviceFields[widget.serviceType]!,
  ];

  List<_DatabaseFieldDefinition> get _editFields => [
    ..._commonPatchFields,
    ..._serviceFields[widget.serviceType]!,
  ];

  List<_DatabaseFieldDefinition> get _activeFields =>
      widget.isEditing ? _editFields : _createFields;

  List<_DatabaseFieldDefinition> get _visibleFields {
    if (!widget.isEditing) {
      return _createFields
          .where((f) => !_hiddenCreateKeys.contains(f.key))
          .toList();
    }
    return _editFields.where((f) {
      final isAdvanced = _advancedEditKeys.contains(f.key);
      return _section == _DatabaseSection.advanced ? isAdvanced : !isAdvanced;
    }).toList();
  }

  @override
  void initState() {
    super.initState();
    _controllers = {
      for (final field in {
        ..._createFields.where(
          (field) => field.type != _DatabaseFieldType.boolean,
        ),
        ..._editFields.where(
          (field) => field.type != _DatabaseFieldType.boolean,
        ),
      })
        field.key: TextEditingController(),
    };
    _boolValues = {
      for (final field in {
        ..._createFields.where(
          (field) => field.type == _DatabaseFieldType.boolean,
        ),
        ..._editFields.where(
          (field) => field.type == _DatabaseFieldType.boolean,
        ),
      })
        field.key: false,
    };
    _seedCreateDefaults();
    _load();
  }

  @override
  void dispose() {
    for (final controller in _controllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  void _seedCreateDefaults() {
    _controllers['project_uuid']?.text = widget.context.projectUuid;
    _controllers['environment_uuid']?.text = widget.context.environmentUuid;
    _controllers['environment_name']?.text = widget.context.environmentName;
  }

  Future<void> _load() async {
    if (!widget.isEditing) {
      setState(() => _loading = false);
      return;
    }

    setState(() {
      _loading = true;
      _error = null;
    });

    try {
      final api = await CoolifyClientService.createClient();
      final database = await api.databases.get(widget.databaseUuid!);
      for (final field in _editFields) {
        final value = database.rawJson[field.key];
        if (field.type == _DatabaseFieldType.boolean) {
          _boolValues[field.key] = _asBool(value);
        } else {
          _controllers[field.key]!.text = _asString(value);
        }
      }
      if (!mounted) return;
      setState(() {});
    } catch (error) {
      if (!mounted) return;
      setState(() => _error = error.toString());
      AppToast.error(
        context,
        error.toString(),
        title: 'Could not load database',
      );
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _save() async {
    if (_saving) return;

    setState(() => _saving = true);

    try {
      final body = <String, dynamic>{};
      for (final field in _activeFields) {
        if (field.type == _DatabaseFieldType.boolean) {
          body[field.key] = _boolValues[field.key] ?? false;
        } else if (field.type == _DatabaseFieldType.integer) {
          body[field.key] =
              int.tryParse(_controllers[field.key]!.text.trim()) ?? 0;
        } else {
          body[field.key] = _controllers[field.key]!.text.trim();
        }
      }

      final api = await CoolifyClientService.createClient();
      if (widget.isEditing) {
        await api.databases.update(widget.databaseUuid!, body: body);
      } else {
        await switch (widget.serviceType) {
          DatabaseServiceType.postgresql => api.databases.postgresql.create(
            body,
          ),
          DatabaseServiceType.clickhouse => api.databases.clickhouse.create(
            body,
          ),
          DatabaseServiceType.dragonfly => api.databases.dragonfly.create(body),
          DatabaseServiceType.redis => api.databases.redis.create(body),
          DatabaseServiceType.keydb => api.databases.keydb.create(body),
          DatabaseServiceType.mariadb => api.databases.mariadb.create(body),
          DatabaseServiceType.mysql => api.databases.mysql.create(body),
          DatabaseServiceType.mongodb => api.databases.mongodb.create(body),
        };
      }

      if (!mounted) return;
      AppToast.success(
        context,
        widget.isEditing ? 'Database updated.' : 'Database created.',
      );
      Navigator.of(context).pop(true);
    } catch (error) {
      if (!mounted) return;
      AppToast.error(context, error.toString(), title: 'Save failed');
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
          widget.context.projectName,
          widget.context.environmentName,
          widget.isEditing
              ? 'Edit ${widget.serviceType.title}'
              : 'Add ${widget.serviceType.title}',
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
                  if (widget.isEditing) ...[
                    SizedBox(
                      width: double.infinity,
                      child: ShadSelect<_DatabaseSection>(
                        initialValue: _section,
                        onChanged: (value) {
                          if (value == null) return;
                          setState(() => _section = value);
                        },
                        options: const [
                          ShadOption(value: _DatabaseSection.general, child: Text('General')),
                          ShadOption(value: _DatabaseSection.advanced, child: Text('Advanced')),
                        ],
                        selectedOptionBuilder: (context, value) => Text(
                          value == _DatabaseSection.general ? 'General' : 'Advanced',
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
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
                        : Text(widget.isEditing ? 'Save' : 'Create'),
                  ),
                ],
              ),
      ),
    );
  }

  Widget _buildField(_DatabaseFieldDefinition field) {
    if (field.type == _DatabaseFieldType.boolean) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: ShadCard(
          child: SwitchListTile(
            value: _boolValues[field.key] ?? false,
            onChanged: (value) =>
                setState(() => _boolValues[field.key] = value),
            title: Text(field.key),
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: ShadInputFormField(
        id: field.key,
        controller: _controllers[field.key],
        label: Text(field.key),
        keyboardType: field.type == _DatabaseFieldType.integer
            ? TextInputType.number
            : TextInputType.multiline,
        minLines: field.type == _DatabaseFieldType.multiline ? 3 : 1,
        maxLines: field.type == _DatabaseFieldType.multiline ? 8 : 1,
      ),
    );
  }

  String _asString(dynamic value) {
    if (value == null) return '';
    if (value is String) return value;
    return '$value';
  }

  bool _asBool(dynamic value) {
    if (value is bool) return value;
    if (value is num) return value != 0;
    if (value is String) {
      final normalized = value.toLowerCase();
      return normalized == 'true' || normalized == '1';
    }
    return false;
  }
}

enum _DatabaseFieldType { text, multiline, integer, boolean }

enum _DatabaseSection { general, advanced }

class _DatabaseFieldDefinition {
  const _DatabaseFieldDefinition(this.key, this.type);

  final String key;
  final _DatabaseFieldType type;
}
