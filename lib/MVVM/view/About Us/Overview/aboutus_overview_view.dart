import 'package:aicte_app/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class AboutUsOverviewView extends StatelessWidget {
  static const route = "AboutUs-overview-view";
  const AboutUsOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(body: Center(child: Text("AboutUs Overview Page",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),));
  }
}