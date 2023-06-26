import 'package:aicte_app/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class HistoryView extends StatelessWidget {
  static const route = "History-view";
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(body: Center(child: Text("History Page",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),));
  }
}