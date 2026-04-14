import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class CreateEnvironmentResourceTypePage extends StatelessWidget {
  const CreateEnvironmentResourceTypePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SafeArea(
        top: false,
        child: Center(
          child: Text(
            'Coming soon',
            style: ShadTheme.of(context).textTheme.muted,
          ),
        ),
      ),
    );
  }
}
