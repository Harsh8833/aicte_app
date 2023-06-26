import 'package:aicte_app/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class OrganizationStructureView extends StatelessWidget {
  static const route = "OrganizationStructure-view";
  const OrganizationStructureView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(body: Center(child: Text("OrganizationStructure Page",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),));
  }
}