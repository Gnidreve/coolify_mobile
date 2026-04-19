import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../api/coolify_api.dart';
import '../../components/app_page_header.dart';
import '../../components/app_sidebar_drawer.dart';
import '../../core/services/app_toast.dart';
import '../../core/services/coolify_client_service.dart';
import '../../components/resource_card.dart';
import '../../components/state_views.dart';

class KeysTokensPage extends StatefulWidget {
  const KeysTokensPage({super.key});

  @override
  State<KeysTokensPage> createState() => KeysTokensPageState();
}

class KeysTokensPageState extends State<KeysTokensPage> {
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

  void openAdd() => _openEditor();

  @override
  Widget build(BuildContext context) {
    if (_loading) return const LoadingStateView();
    if (_error != null) {
      return ErrorStateView(message: _error!, onRetry: _load);
    }

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
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
    return '';
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
        'private_key': '',
      };
      _nameController.text = key.name;
      _descriptionController.text = key.description;
      // Private key is write-only — not pre-populated
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

    if (name.isEmpty || (!widget.isEditing && privateKey.isEmpty)) {
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
          widget.uuid!,
          name: name,
          description: description,
          privateKey: privateKey.isEmpty ? null : privateKey,
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
    return Scaffold(
      drawer: const AppSidebarDrawer(),
      appBar: AppPageHeader(
        crumbs: [
          'Keys & Tokens',
          widget.isEditing ? 'Edit Private Key' : 'Add Private Key',
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
                    keyboardType: TextInputType.multiline,
                    minLines: 3,
                    maxLines: 6,
                  ),
                  if (widget.isEditing) ...[
                    ShadInputFormField(
                      id: 'private_key',
                      controller: _privateKeyController,
                      label: const Text('New Private Key'),
                      placeholder: const Text('Leave empty to keep unchanged'),
                      maxLines: 12,
                      minLines: 8,
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
