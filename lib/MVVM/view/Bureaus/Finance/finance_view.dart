import 'package:aicte_app/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class FinanceView extends StatelessWidget {
  static const route = "Finance-view";
  const FinanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(body: Center(child: Text("Finance Page", 
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),));
  }
}