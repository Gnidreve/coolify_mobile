import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../components/app_page_header.dart';
import '../../components/app_sidebar_drawer.dart';

class CreateEnvironmentResourceTypePage extends StatelessWidget {
  const CreateEnvironmentResourceTypePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppSidebarDrawer(),
      appBar: AppPageHeader(crumbs: ['Add Resource', title]),
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
