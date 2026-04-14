import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class TerminalPage extends StatefulWidget {
  const TerminalPage({super.key});

  @override
  State<TerminalPage> createState() => _TerminalPageState();
}

class _TerminalPageState extends State<TerminalPage> {
  // Placeholder server list — will be replaced with live data from the API.
  static const _servers = ['Select a server...'];

  String? _selectedServer;
  bool _connected = false;

  void _connect() {
    if (_selectedServer == null || _selectedServer == _servers.first) return;
    setState(() => _connected = true);
  }

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Terminal', style: theme.textTheme.h4),
          const SizedBox(height: 4),
          Text(
            'Connect to a server to open an interactive terminal.',
            style: theme.textTheme.muted,
          ),
          const SizedBox(height: 24),
          ShadSelect<String>(
            placeholder: const Text('Select a server...'),
            onChanged: (value) => setState(() {
              _selectedServer = value;
              _connected = false;
            }),
            options: _servers
                .skip(1)
                .map((s) => ShadOption(value: s, child: Text(s)))
                .toList(),
            selectedOptionBuilder: (context, value) => Text(value),
          ),
          const SizedBox(height: 12),
          ShadButton(
            onPressed:
                (_selectedServer != null && _selectedServer != _servers.first)
                ? _connect
                : null,
            child: const Text('Connect'),
          ),
          if (_connected) ...[
            const SizedBox(height: 24),
            Expanded(
              child: ShadCard(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    r'$ _',
                    style: theme.textTheme.p.copyWith(fontFamily: 'monospace'),
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
