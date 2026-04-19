import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../api/coolify_api.dart';
import '../core/services/app_toast.dart';
import '../core/services/coolify_client_service.dart';
import '../pages/projects/application_config_schema.dart';

class ApplicationConfigSectionEditor extends StatefulWidget {
  const ApplicationConfigSectionEditor({
    super.key,
    required this.application,
    this.fields = const [],
    this.groups = const [],
    this.onUpdated,
  });

  final ApplicationResource application;
  final List<ApplicationConfigFieldDefinition> fields;
  final List<ApplicationConfigFieldGroup> groups;
  final ValueChanged<ApplicationResource>? onUpdated;

  List<ApplicationConfigFieldDefinition> get _effectiveFields =>
      groups.isNotEmpty ? groups.expand((g) => g.fields).toList() : fields;

  @override
  State<ApplicationConfigSectionEditor> createState() =>
      _ApplicationConfigSectionEditorState();
}

class _ApplicationConfigSectionEditorState
    extends State<ApplicationConfigSectionEditor> {
  late ApplicationResource _application;
  late final Map<String, TextEditingController> _controllers;
  late final Map<String, bool> _boolValues;
  late final Map<String, String?> _dropdownValues;
  bool _saving = false;

  @override
  void initState() {
    super.initState();
    _application = widget.application;
    _controllers = {
      for (final field in widget._effectiveFields)
        if (field.type != ApplicationConfigFieldType.boolean &&
            field.type != ApplicationConfigFieldType.dropdown)
          field.key: TextEditingController(),
    };
    _boolValues = {
      for (final field in widget._effectiveFields)
        if (field.type == ApplicationConfigFieldType.boolean) field.key: false,
    };
    _dropdownValues = {
      for (final field in widget._effectiveFields)
        if (field.type == ApplicationConfigFieldType.dropdown) field.key: null,
    };
    _seedFromApplication(_application);
  }

  @override
  void didUpdateWidget(covariant ApplicationConfigSectionEditor oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.application.uuid != widget.application.uuid ||
        oldWidget.application.rawJson != widget.application.rawJson) {
      _application = widget.application;
      _seedFromApplication(_application);
    }
  }

  @override
  void dispose() {
    for (final controller in _controllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  void _seedFromApplication(ApplicationResource application) {
    final raw = application.rawJson;
    final patchDefaults = ApplicationConfigSchema.patchOnlyDefaults(raw);

    for (final field in widget._effectiveFields) {
      if (field.type == ApplicationConfigFieldType.boolean) {
        _boolValues[field.key] = ApplicationConfigSchema.readBool(
          field,
          raw,
          patchDefaults,
        );
        continue;
      }

      if (field.type == ApplicationConfigFieldType.dropdown) {
        final value = ApplicationConfigSchema.readText(field, raw, patchDefaults);
        _dropdownValues[field.key] = value.isEmpty ? null : value;
        continue;
      }

      _controllers[field.key]!.text = ApplicationConfigSchema.readText(
        field,
        raw,
        patchDefaults,
      );
    }
  }

  Future<void> _save() async {
    if (_saving) return;

    setState(() => _saving = true);

    try {
      final body = <String, dynamic>{};

      for (final field in widget._effectiveFields.where((field) => field.editable)) {
        switch (field.type) {
          case ApplicationConfigFieldType.boolean:
            body[field.key] = _boolValues[field.key] ?? false;
            break;
          case ApplicationConfigFieldType.integer:
            body[field.key] =
                int.tryParse(_controllers[field.key]!.text.trim()) ?? 0;
            break;
          case ApplicationConfigFieldType.jsonArray:
            body[field.key] = _parseJsonArray(_controllers[field.key]!.text);
            break;
          case ApplicationConfigFieldType.dropdown:
            body[field.key] = _dropdownValues[field.key] ?? '';
            break;
          case ApplicationConfigFieldType.text:
          case ApplicationConfigFieldType.multiline:
            body[field.key] = _controllers[field.key]!.text.trim();
            break;
        }
      }

      final api = await CoolifyClientService.createClient();
      final updated = await api.applications.update(
        _application.uuid,
        body: body,
      );

      if (!mounted) return;
      setState(() => _application = updated);
      _seedFromApplication(updated);
      widget.onUpdated?.call(updated);
      AppToast.success(context, 'Application updated.');
    } on FormatException catch (error) {
      if (!mounted) return;
      AppToast.error(context, error.message, title: 'Validation failed');
    } catch (error) {
      if (!mounted) return;
      AppToast.error(context, error.toString(), title: 'Save failed');
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  List<Map<String, dynamic>> _parseJsonArray(String input) {
    final trimmed = input.trim();
    if (trimmed.isEmpty) {
      return const [];
    }

    final decoded = jsonDecode(trimmed);
    if (decoded is! List) {
      throw const FormatException(
        'docker_compose_domains must be a JSON array.',
      );
    }

    return decoded
        .whereType<Map>()
        .map((item) => Map<String, dynamic>.from(item))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final allVisible = widget._effectiveFields
        .where((f) => f.editable && !f.hidden)
        .toSet();

    if (allVisible.isEmpty) {
      return Text(
        'No configurable fields in this section.',
        style: ShadTheme.of(context).textTheme.muted,
      );
    }

    final children = <Widget>[];

    if (widget.groups.isNotEmpty) {
      for (var i = 0; i < widget.groups.length; i++) {
        final group = widget.groups[i];
        final groupFields = group.fields.where((f) => allVisible.contains(f)).toList();
        if (groupFields.isEmpty) continue;

        if (i > 0) {
          children.add(const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Divider(),
          ));
        }
        if (group.title != null) {
          children.add(Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Text(
              group.title!,
              style: ShadTheme.of(context).textTheme.h4,
            ),
          ));
        }
        for (final field in groupFields) {
          children.add(Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: _buildField(field),
          ));
        }
      }
    } else {
      for (final field in allVisible) {
        children.add(Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: _buildField(field),
        ));
      }
    }

    children.addAll([
      const SizedBox(height: 8),
      ShadButton(
        onPressed: _saving ? null : _save,
        child: _saving
            ? const SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            : const Text('Save'),
      ),
    ]);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: children,
    );
  }

  Widget _buildField(ApplicationConfigFieldDefinition field) {
    if (field.type == ApplicationConfigFieldType.boolean) {
      return ShadCard(
        child: SwitchListTile(
          title: Text(field.key),
          value: _boolValues[field.key] ?? false,
          onChanged: field.editable
              ? (value) => setState(() => _boolValues[field.key] = value)
              : null,
        ),
      );
    }

    if (field.type == ApplicationConfigFieldType.dropdown) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(field.key, style: ShadTheme.of(context).textTheme.small),
          const SizedBox(height: 6),
          ShadSelect<String>(
            initialValue: _dropdownValues[field.key],
            enabled: field.editable,
            onChanged: field.editable
                ? (value) => setState(() => _dropdownValues[field.key] = value)
                : null,
            options: field.options
                .map((opt) => ShadOption(value: opt, child: Text(opt)))
                .toList(),
            selectedOptionBuilder: (context, value) => Text(value),
          ),
        ],
      );
    }

    final controller = _controllers[field.key]!;

    return ShadInputFormField(
      id: field.key,
      controller: controller,
      label: Text(field.key),
      enabled: field.editable,
      keyboardType: field.type == ApplicationConfigFieldType.integer
          ? TextInputType.number
          : TextInputType.multiline,
      minLines:
          field.type == ApplicationConfigFieldType.multiline ||
              field.type == ApplicationConfigFieldType.jsonArray
          ? 3
          : 1,
      maxLines:
          field.type == ApplicationConfigFieldType.multiline ||
              field.type == ApplicationConfigFieldType.jsonArray
          ? 8
          : 1,
    );
  }
}
