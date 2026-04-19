import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../components/app_page_header.dart';
import '../../components/app_sidebar_drawer.dart';
import '../../core/services/app_toast.dart';
import '../../core/services/coolify_client_service.dart';

class CreateProjectPage extends StatefulWidget {
  const CreateProjectPage({super.key});

  @override
  State<CreateProjectPage> createState() => _CreateProjectPageState();
}

class _CreateProjectPageState extends State<CreateProjectPage> {
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  bool _saving = false;

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final name = _nameController.text.trim();
    if (name.isEmpty) {
      AppToast.error(context, 'Name is required.');
      return;
    }

    if (_saving) return;
    setState(() => _saving = true);

    try {
      final api = await CoolifyClientService.createClient();
      await api.projects.create(
        name: name,
        description: _descriptionController.text.trim(),
      );
      if (!mounted) return;
      AppToast.success(context, 'Project created.');
      Navigator.of(context).pop(true);
    } catch (error) {
      if (!mounted) return;
      AppToast.error(context, error.toString(), title: 'Could not create project');
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppSidebarDrawer(),
      appBar: const AppPageHeader(crumbs: ['Projects', 'New Project']),
      body: SafeArea(
        top: false,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            ShadInputFormField(
              id: 'name',
              controller: _nameController,
              label: const Text('Name'),
              keyboardType: TextInputType.text,
            ),
            const SizedBox(height: 12),
            ShadInputFormField(
              id: 'description',
              controller: _descriptionController,
              label: const Text('Description'),
              keyboardType: TextInputType.multiline,
              minLines: 3,
              maxLines: 6,
            ),
            const SizedBox(height: 24),
            ShadButton(
              onPressed: _saving ? null : _save,
              child: _saving
                  ? const SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Text('Create Project'),
            ),
          ],
        ),
      ),
    );
  }
}
