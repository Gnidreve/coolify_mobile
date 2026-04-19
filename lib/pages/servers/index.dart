import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../api/coolify_api.dart';
import '../../components/app_page_header.dart';
import '../../components/app_sidebar_drawer.dart';
import '../../core/services/app_toast.dart';
import '../../core/services/coolify_client_service.dart';
import '../../components/resource_card.dart';
import '../../components/state_views.dart';

class ServersPage extends StatefulWidget {
  const ServersPage({super.key});

  @override
  State<ServersPage> createState() => ServersPageState();
}

class ServersPageState extends State<ServersPage> {
  bool _loading = true;
  String? _error;
  List<ServerResource> _servers = const [];

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
      final servers = await api.servers.list();
      if (!mounted) return;
      setState(() => _servers = servers);
    } catch (error) {
      if (!mounted) return;
      setState(() => _error = error.toString());
      AppToast.error(
        context,
        error.toString(),
        title: 'Could not load servers',
      );
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _openServer(String uuid) async {
    final changed = await Navigator.of(context).push<bool>(
      MaterialPageRoute(builder: (_) => _ServerEditorPage(uuid: uuid)),
    );
    if (changed == true) {
      _load();
    }
  }

  void openAdd() => _openCreate();

  Future<void> _openCreate() async {
    final changed = await Navigator.of(context).push<bool>(
      MaterialPageRoute(builder: (_) => const _ServerEditorPage()),
    );
    if (changed == true) {
      _load();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) return const LoadingStateView();
    if (_error != null) {
      return ErrorStateView(message: _error!, onRetry: _load);
    }

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        if (_servers.isEmpty)
          const SizedBox(
            height: 240,
            child: EmptyStateView(label: 'No servers found.'),
          )
        else
          ..._servers.map(
            (server) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: ResourceCard(
                title: server.name,
                subtitle: server.description,
                onTap: () => _openServer(server.uuid),
              ),
            ),
          ),
      ],
    );
  }
}

enum _ServerSection { general, advanced, privateKey, proxy }

class _ServerEditorPage extends StatefulWidget {
  const _ServerEditorPage({this.uuid});

  final String? uuid;

  bool get isEditing => uuid != null;

  @override
  State<_ServerEditorPage> createState() => _ServerEditorPageState();
}

class _ServerEditorPageState extends State<_ServerEditorPage> {
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _ipController = TextEditingController();
  final _portController = TextEditingController();
  final _userController = TextEditingController();
  final _privateKeyUuidController = TextEditingController();
  final _proxyTypeController = TextEditingController();
  final _concurrentBuildsController = TextEditingController();
  final _dynamicTimeoutController = TextEditingController();
  final _deploymentQueueLimitController = TextEditingController();
  final _diskThresholdController = TextEditingController();
  final _diskCheckFrequencyController = TextEditingController();

  bool _loading = true;
  bool _saving = false;
  bool _isBuildServer = false;
  _ServerSection _section = _ServerSection.general;
  String? _error;
  Map<String, dynamic> _initial = const {};

  // Private Keys section
  List<PrivateKeyResource> _privateKeys = const [];
  bool _loadingKeys = false;
  String? _keysError;

  bool get _isDirty =>
      _nameController.text.trim() != (_initial['name'] ?? '') ||
      _descriptionController.text.trim() != (_initial['description'] ?? '') ||
      _ipController.text.trim() != (_initial['ip'] ?? '') ||
      _portController.text.trim() != (_initial['port'] ?? '') ||
      _userController.text.trim() != (_initial['user'] ?? '') ||
      _privateKeyUuidController.text.trim() !=
          (_initial['private_key_uuid'] ?? '') ||
      _proxyTypeController.text.trim() != (_initial['proxy_type'] ?? '') ||
      _concurrentBuildsController.text.trim() !=
          (_initial['concurrent_builds'] ?? '') ||
      _dynamicTimeoutController.text.trim() !=
          (_initial['dynamic_timeout'] ?? '') ||
      _deploymentQueueLimitController.text.trim() !=
          (_initial['deployment_queue_limit'] ?? '') ||
      _diskThresholdController.text.trim() !=
          (_initial['server_disk_usage_notification_threshold'] ?? '') ||
      _diskCheckFrequencyController.text.trim() !=
          (_initial['server_disk_usage_check_frequency'] ?? '') ||
      _isBuildServer != (_initial['is_build_server'] ?? false);

  @override
  void initState() {
    super.initState();
    for (final controller in [
      _nameController,
      _descriptionController,
      _ipController,
      _portController,
      _userController,
      _privateKeyUuidController,
      _proxyTypeController,
      _concurrentBuildsController,
      _dynamicTimeoutController,
      _deploymentQueueLimitController,
      _diskThresholdController,
      _diskCheckFrequencyController,
    ]) {
      controller.addListener(_onChanged);
    }
    _load();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _ipController.dispose();
    _portController.dispose();
    _userController.dispose();
    _privateKeyUuidController.dispose();
    _proxyTypeController.dispose();
    _concurrentBuildsController.dispose();
    _dynamicTimeoutController.dispose();
    _deploymentQueueLimitController.dispose();
    _diskThresholdController.dispose();
    _diskCheckFrequencyController.dispose();
    super.dispose();
  }

  void _onChanged() {
    if (mounted) setState(() {});
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
      final server = await api.servers.get(widget.uuid!);
      _initial = {
        'name': server.name,
        'description': server.description,
        'ip': server.ip,
        'port': server.port.toString(),
        'user': server.user,
        'private_key_uuid': server.privateKeyUuid,
        'proxy_type': server.proxyType,
        'concurrent_builds': server.settings.concurrentBuilds.toString(),
        'dynamic_timeout': server.settings.dynamicTimeout.toString(),
        'deployment_queue_limit': server.settings.deploymentQueueLimit
            .toString(),
        'server_disk_usage_notification_threshold': server
            .settings
            .serverDiskUsageNotificationThreshold
            .toString(),
        'server_disk_usage_check_frequency':
            server.settings.serverDiskUsageCheckFrequency,
        'is_build_server': server.settings.isBuildServer,
      };
      _nameController.text = server.name;
      _descriptionController.text = server.description;
      _ipController.text = server.ip;
      _portController.text = server.port.toString();
      _userController.text = server.user;
      _privateKeyUuidController.text = server.privateKeyUuid;
      _proxyTypeController.text = server.proxyType;
      _concurrentBuildsController.text = server.settings.concurrentBuilds
          .toString();
      _dynamicTimeoutController.text = server.settings.dynamicTimeout
          .toString();
      _deploymentQueueLimitController.text = server
          .settings
          .deploymentQueueLimit
          .toString();
      _diskThresholdController.text = server
          .settings
          .serverDiskUsageNotificationThreshold
          .toString();
      _diskCheckFrequencyController.text =
          server.settings.serverDiskUsageCheckFrequency;
      _isBuildServer = server.settings.isBuildServer;
    } catch (error) {
      _error = error.toString();
      if (mounted) {
        AppToast.error(
          context,
          error.toString(),
          title: widget.isEditing ? 'Could not load server' : 'Could not open form',
        );
      }
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  int _parseInt(TextEditingController controller, {required int fallback}) {
    return int.tryParse(controller.text.trim()) ?? fallback;
  }

  Future<void> _save() async {
    if (_saving || !_isDirty) return;

    final name = _nameController.text.trim();
    final ip = _ipController.text.trim();
    final user = _userController.text.trim();

    if (name.isEmpty || ip.isEmpty || user.isEmpty) {
      AppToast.error(
        context,
        'Name, IP and user are required.',
        title: 'Validation failed',
      );
      return;
    }

    final body = {
      'name': name,
      'description': _descriptionController.text.trim(),
      'ip': ip,
      'port': _parseInt(_portController, fallback: 22),
      'user': user,
      'private_key_uuid': _privateKeyUuidController.text.trim(),
      'is_build_server': _isBuildServer,
      'instant_validate': true,
      'proxy_type': _proxyTypeController.text.trim(),
      'concurrent_builds': _parseInt(_concurrentBuildsController, fallback: 1),
      'dynamic_timeout': _parseInt(_dynamicTimeoutController, fallback: 30),
      'deployment_queue_limit': _parseInt(
        _deploymentQueueLimitController,
        fallback: 1,
      ),
      'server_disk_usage_notification_threshold': _parseInt(
        _diskThresholdController,
        fallback: 80,
      ),
      'server_disk_usage_check_frequency': _diskCheckFrequencyController.text
          .trim(),
    };

    setState(() => _saving = true);

    try {
      final api = await CoolifyClientService.createClient();
      if (widget.isEditing) {
        await api.servers.update(widget.uuid!, body: body);
      } else {
        await api.servers.create(body: body);
      }
      if (!mounted) return;
      AppToast.success(
        context,
        widget.isEditing ? 'Server updated.' : 'Server created.',
      );
      Navigator.of(context).pop(true);
    } catch (error) {
      if (!mounted) return;
      AppToast.error(context, error.toString(), title: 'Save failed');
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  Widget _field(
    String id,
    String label,
    TextEditingController controller, {
    TextInputType? keyboardType,
    bool enabled = true,
    int minLines = 1,
    int maxLines = 1,
    String? infoDescription,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: ShadInputFormField(
        id: id,
        controller: controller,
        label: Text(label),
        keyboardType: keyboardType,
        enabled: enabled,
        minLines: minLines,
        maxLines: maxLines,
        trailing: infoDescription == null
            ? null
            : _FieldInfoPopover(
                title: label,
                description: infoDescription,
              ),
      ),
    );
  }

  Future<void> _loadPrivateKeys() async {
    if (_loadingKeys) return;
    setState(() {
      _loadingKeys = true;
      _keysError = null;
    });
    try {
      final api = await CoolifyClientService.createClient();
      final keys = await api.security.keys.list();
      if (!mounted) return;
      setState(() => _privateKeys = keys);
    } catch (error) {
      if (!mounted) return;
      setState(() => _keysError = error.toString());
    } finally {
      if (mounted) setState(() => _loadingKeys = false);
    }
  }

  Widget _buildSection() {
    return switch (_section) {
      _ServerSection.general => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _field('name', 'Name', _nameController),
          _field(
            'description',
            'Description',
            _descriptionController,
            keyboardType: TextInputType.multiline,
            minLines: 3,
            maxLines: 6,
          ),
          _field('ip', 'IP', _ipController),
          _field('port', 'Port', _portController, keyboardType: TextInputType.number),
          _field('user', 'User', _userController),
        ],
      ),
      _ServerSection.advanced => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _field('concurrent_builds', 'Concurrent Builds', _concurrentBuildsController, keyboardType: TextInputType.number),
          _field('dynamic_timeout', 'Dynamic Timeout', _dynamicTimeoutController, keyboardType: TextInputType.number),
          _field('deployment_queue_limit', 'Deployment Queue Limit', _deploymentQueueLimitController, keyboardType: TextInputType.number),
          _field(
            'server_disk_usage_notification_threshold',
            'Server disk usage notification threshold (%)',
            _diskThresholdController,
            keyboardType: TextInputType.number,
            infoDescription:
                'If the server disk usage exceeds this threshold, Coolify will send a notification to the team members.',
          ),
          _field(
            'server_disk_usage_check_frequency',
            'Disk usage check frequency',
            _diskCheckFrequencyController,
            infoDescription:
                'Cron expression for disk usage check frequency.\nYou can use every_minute, hourly, daily, weekly, monthly, yearly.\n\nDefault is every night at 11:00 PM.',
          ),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text('Build Server'),
            value: _isBuildServer,
            onChanged: (value) => setState(() => _isBuildServer = value),
          ),
        ],
      ),
      _ServerSection.proxy => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _field('proxy_type', 'Proxy Type', _proxyTypeController),
        ],
      ),
      _ServerSection.privateKey => _buildPrivateKeySection(),
    };
  }

  Widget _buildPrivateKeySection() {
    final theme = ShadTheme.of(context);
    final activeUuid = _privateKeyUuidController.text.trim();

    if (_loadingKeys) return const LoadingStateView();

    if (_keysError != null) {
      return ErrorStateView(
        message: _keysError!,
        onRetry: _loadPrivateKeys,
      );
    }

    if (_privateKeys.isEmpty) {
      return const EmptyStateView(label: 'No private keys found.');
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: _privateKeys.map((key) {
        final isActive = key.uuid == activeUuid;
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: ShadCard(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () => setState(
                () => _privateKeyUuidController.text = key.uuid,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          key.name.isNotEmpty ? key.name : 'Unnamed key',
                          style: theme.textTheme.p.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        if (key.fingerprint.isNotEmpty) ...[
                          const SizedBox(height: 2),
                          Text(
                            key.fingerprint,
                            style: theme.textTheme.muted.copyWith(
                              fontFamily: 'monospace',
                              fontSize: 11,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ],
                    ),
                  ),
                  if (isActive) ...[
                    const SizedBox(width: 8),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'In use',
                          style: theme.textTheme.small.copyWith(
                            color: theme.colorScheme.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 6),
                        Icon(
                          LucideIcons.circleCheck,
                          size: 18,
                          color: theme.colorScheme.primary,
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppSidebarDrawer(),
      appBar: AppPageHeader(
        crumbs: ['Servers', widget.isEditing ? 'Edit Server' : 'Add Server'],
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
                  SizedBox(
                    width: double.infinity,
                    child: ShadSelect<_ServerSection>(
                      initialValue: _section,
                      onChanged: (value) {
                        if (value == null) return;
                        setState(() => _section = value);
                        if (value == _ServerSection.privateKey &&
                            _privateKeys.isEmpty &&
                            !_loadingKeys) {
                          _loadPrivateKeys();
                        }
                      },
                      options: const [
                        ShadOption(value: _ServerSection.general, child: Text('General')),
                        ShadOption(value: _ServerSection.advanced, child: Text('Advanced')),
                        ShadOption(value: _ServerSection.privateKey, child: Text('Private Key')),
                        ShadOption(value: _ServerSection.proxy, child: Text('Proxy')),
                      ],
                      selectedOptionBuilder: (context, value) => Text(switch (value) {
                        _ServerSection.general => 'General',
                        _ServerSection.advanced => 'Advanced',
                        _ServerSection.privateKey => 'Private Key',
                        _ServerSection.proxy => 'Proxy',
                      }),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Divider(height: 1),
                  const SizedBox(height: 16),
                  _buildSection(),
                  const SizedBox(height: 20),
                  if (_section != _ServerSection.privateKey)
                    ShadButton(
                      onPressed: (!_isDirty || _saving) ? null : _save,
                      child: _saving
                          ? const SizedBox(
                              width: 16,
                              height: 16,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Text('Save'),
                    ),
                ],
              ),
      ),
    );
  }
}

class _FieldInfoPopover extends StatefulWidget {
  const _FieldInfoPopover({
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  State<_FieldInfoPopover> createState() => _FieldInfoPopoverState();
}

class _FieldInfoPopoverState extends State<_FieldInfoPopover> {
  late final ShadPopoverController _controller = ShadPopoverController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);

    return ShadPopover(
      controller: _controller,
      popover: (context) => SizedBox(
        width: 320,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.title, style: theme.textTheme.p.copyWith(fontWeight: FontWeight.w600)),
            const SizedBox(height: 8),
            Text(
              widget.description,
              style: theme.textTheme.muted.copyWith(height: 1.4),
            ),
          ],
        ),
      ),
      child: SizedBox.square(
        dimension: 24,
        child: OverflowBox(
          maxWidth: 28,
          maxHeight: 28,
          child: ShadIconButton.ghost(
            iconSize: 16,
            padding: const EdgeInsets.all(2),
            icon: const Icon(LucideIcons.info),
            onPressed: _controller.toggle,
          ),
        ),
      ),
    );
  }
}
