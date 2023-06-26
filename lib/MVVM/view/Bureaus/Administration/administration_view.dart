import 'package:aicte_app/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class AdministrationView extends StatelessWidget {
  static const route = "administration-view";
  const AdministrationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
        body: Center(
      child: Text(  
        "Administration Page",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
      ),
    ));
  }
}
