import 'package:aicte_app/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class BureausOverviewView extends StatelessWidget {
  static const route = "bureaus-overview-view";
  const BureausOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(body: Center(child: Text("Bureaus Overview Page",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),));
  }
}