import 'package:aicte_app/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class RegulationView extends StatelessWidget {
  static const route = "Regulation-view";
  const RegulationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(body: Center(child: Text("Regulation Page",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),));
  }
}