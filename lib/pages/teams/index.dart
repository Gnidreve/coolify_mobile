import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class TeamsPage extends StatelessWidget {
  const TeamsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Teams', style: ShadTheme.of(context).textTheme.muted),
    );
  }
}
