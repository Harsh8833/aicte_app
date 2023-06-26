import 'package:aicte_app/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class ScholarshipsAndGrantsView extends StatelessWidget {
  static const route = "ScholarshipsAndGrants-view";
  const ScholarshipsAndGrantsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
        body: Center(
      child: Text("ScholarshipsAndGrants Page",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
    ));
  }
}
