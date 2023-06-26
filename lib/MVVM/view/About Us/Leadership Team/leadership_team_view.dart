import 'package:aicte_app/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class LeadershipTeamView extends StatelessWidget {
  static const route = "LeadershipTeam-view";
  const LeadershipTeamView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
        body: Center(
      child: Text(  
        "LeadershipTeam Page",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
      ),
    ));
  }
}
