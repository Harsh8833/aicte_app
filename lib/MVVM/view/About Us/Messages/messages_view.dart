import 'package:aicte_app/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class MessagesView extends StatelessWidget {
  static const route = "Messages-view";
  const MessagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(body: Center(child: Text("Messages Page",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),));
  }
}