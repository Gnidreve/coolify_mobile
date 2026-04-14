import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../api/coolify_api.dart';
import '../../core/services/app_toast.dart';
import '../../core/services/coolify_client_service.dart';
import '../../core/widgets/resource_card.dart';
import '../../core/widgets/state_views.dart';

enum _SecurityTab { privateKeys, apiTokens }

class KeysTokensPage extends StatefulWidget {
  const KeysTokensPage({super.key});

  @override
  State<KeysTokensPage> createState() => _KeysTokensPageState();
}

class _KeysTokensPageState extends State<KeysTokensPage> {
  _SecurityTab _tab = _SecurityTab.privateKeys;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ShadTabs<_SecurityTab>(
          value: _tab,
          onChanged: (value) => setState(() => _tab = value),
          tabs: [
            ShadTab(
              value: _SecurityTab.privateKeys,
              content: const SizedBox.shrink(),
              child: const Text('Private Keys'),
            ),
            ShadTab(
              value: _SecurityTab.apiTokens,
              content: const SizedBox.shrink(),
              child: const Text('API Tokens'),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Expanded(
          child: switch (_tab) {
            _SecurityTab.privateKeys => const _PrivateKeysTab(),
            _SecurityTab.apiTokens => const Center(
              child: _SecurityTabContent(label: 'API Tokens'),
            ),
          },
        ),
      ],
    );
  }
}

class _PrivateKeysTab extends StatefulWidget {
  const _PrivateKeysTab();

  @override
  State<_PrivateKeysTab> createState() => _PrivateKeysTabState();
}

class _PrivateKeysTabState extends State<_PrivateKeysTab> {
  bool _loading = true;
  String? _error;
  List<PrivateKeyResource> _keys = const [];

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
      final keys = await api.security.keys.list();
      if (!mounted) return;
      setState(() => _keys = keys);
    } catch (error) {
      if (!mounted) return;
      setState(() => _error = error.toString());
      AppToast.error(
        context,
        error.toString(),
        title: 'Could not load private keys',
      );
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _openEditor({String? uuid}) async {
    final changed = await Navigator.of(context).push<bool>(
      MaterialPageRoute(builder: (_) => _PrivateKeyEditorPage(uuid: uuid)),
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
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Private Keys',
                    style: ShadTheme.of(context).textTheme.h4,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${_keys.length} loaded',
                    style: ShadTheme.of(context).textTheme.muted,
                  ),
                ],
              ),
            ),
            ShadButton.outline(
              onPressed: () => _openEditor(),
              child: const Text('Add'),
            ),
          ],
        ),
        const SizedBox(height: 16),
        if (_keys.isEmpty)
          const SizedBox(
            height: 240,
            child: EmptyStateView(label: 'No private keys found.'),
          )
        else
          ..._keys.map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: ResourceCard(
                title: _displayTitle(item),
                subtitle: _displaySubtitle(item),
                onTap: () => _openEditor(uuid: item.uuid),
              ),
            ),
          ),
      ],
    );
  }

  String _displayTitle(PrivateKeyResource item) {
    if (item.name.trim().isNotEmpty) {
      return item.name.trim();
    }
    if (item.fingerprint.trim().isNotEmpty) {
      return item.fingerprint.trim();
    }
    if (item.publicKey.trim().isNotEmpty) {
      return item.publicKey.trim().split('\n').first;
    }
    return 'Unnamed key';
  }

  String _displaySubtitle(PrivateKeyResource item) {
    if (item.description.trim().isNotEmpty) {
      return item.description.trim();
    }
    if (item.fingerprint.trim().isNotEmpty) {
      return item.fingerprint.trim();
    }
    if (item.uuid.trim().isNotEmpty) {
      return item.uuid.trim();
    }
    return 'No description';
  }
}

class _SecurityTabContent extends StatelessWidget {
  const _SecurityTabContent({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(label, style: ShadTheme.of(context).textTheme.muted),
    );
  }
}

class _PrivateKeyEditorPage extends StatefulWidget {
  const _PrivateKeyEditorPage({this.uuid});

  final String? uuid;

  bool get isEditing => uuid != null;

  @override
  State<_PrivateKeyEditorPage> createState() => _PrivateKeyEditorPageState();
}

class _PrivateKeyEditorPageState extends State<_PrivateKeyEditorPage> {
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _privateKeyController = TextEditingController();

  bool _loading = true;
  bool _saving = false;
  String? _error;
  String _publicKey = '';
  String _fingerprint = '';
  Map<String, String> _initial = const {
    'name': '',
    'description': '',
    'private_key': '',
  };

  bool get _isDirty =>
      _nameController.text.trim() != _initial['name'] ||
      _descriptionController.text.trim() != _initial['description'] ||
      _privateKeyController.text.trim() != _initial['private_key'];

  @override
  void initState() {
    super.initState();
    _nameController.addListener(_onChanged);
    _descriptionController.addListener(_onChanged);
    _privateKeyController.addListener(_onChanged);
    _load();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _privateKeyController.dispose();
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
      final key = await api.security.keys.get(widget.uuid!);
      _initial = {
        'name': key.name,
        'description': key.description,
        'private_key': key.privateKey,
      };
      _publicKey = key.publicKey;
      _fingerprint = key.fingerprint;
      _nameController.text = key.name;
      _descriptionController.text = key.description;
      _privateKeyController.text = key.privateKey;
    } catch (error) {
      _error = error.toString();
      if (mounted) {
        AppToast.error(
          context,
          error.toString(),
          title: 'Could not load private key',
        );
      }
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _save() async {
    if (_saving || !_isDirty) return;

    final name = _nameController.text.trim();
    final description = _descriptionController.text.trim();
    final privateKey = _privateKeyController.text.trim();

    if (name.isEmpty || privateKey.isEmpty) {
      AppToast.error(
        context,
        'Name and private key are required.',
        title: 'Validation failed',
      );
      return;
    }

    setState(() => _saving = true);

    try {
      final api = await CoolifyClientService.createClient();
      if (widget.isEditing) {
        await api.security.keys.update(
          name: name,
          description: description,
          privateKey: privateKey,
        );
      } else {
        await api.security.keys.create(
          name: name,
          description: description,
          privateKey: privateKey,
        );
      }

      if (!mounted) return;
      AppToast.success(
        context,
        widget.isEditing ? 'Private key updated.' : 'Private key created.',
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
    final theme = ShadTheme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.isEditing ? 'Edit Private Key' : 'Add Private Key'),
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
                  ShadInputFormField(
                    id: 'name',
                    controller: _nameController,
                    label: const Text('Name'),
                    placeholder: const Text('Private key name'),
                  ),
                  const SizedBox(height: 12),
                  ShadInputFormField(
                    id: 'description',
                    controller: _descriptionController,
                    label: const Text('Description'),
                    placeholder: const Text('Short description'),
                  ),
                  if (widget.isEditing) ...[
                    const SizedBox(height: 20),
                    Text('Details', style: theme.textTheme.h4),
                    const SizedBox(height: 12),
                    _ReadOnlyDetailsCard(
                      label: 'Fingerprint',
                      value: _fingerprint,
                    ),
                    const SizedBox(height: 12),
                    _ReadOnlyDetailsCard(
                      label: 'Public Key',
                      value: _publicKey,
                      monospace: true,
                    ),
                    const SizedBox(height: 12),
                    _ReadOnlyDetailsCard(
                      label: 'Private Key',
                      value: _privateKeyController.text,
                      monospace: true,
                    ),
                  ] else ...[
                    const SizedBox(height: 12),
                    ShadInputFormField(
                      id: 'private_key',
                      controller: _privateKeyController,
                      label: const Text('Private Key'),
                      placeholder: const Text('Paste the private key'),
                      maxLines: 12,
                      minLines: 8,
                    ),
                  ],
                  const SizedBox(height: 20),
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

class _ReadOnlyDetailsCard extends StatelessWidget {
  const _ReadOnlyDetailsCard({
    required this.label,
    required this.value,
    this.monospace = false,
  });

  final String label;
  final String value;
  final bool monospace;

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);

    return ShadCard(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: theme.textTheme.small),
            const SizedBox(height: 8),
            SelectableText(
              value.isEmpty ? '-' : value,
              style: theme.textTheme.muted.copyWith(
                color: theme.colorScheme.foreground,
                fontFamily: monospace ? 'monospace' : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
