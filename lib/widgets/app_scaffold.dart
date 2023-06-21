import 'package:aicte_app/constants/assets.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;

  const AppScaffold({super.key, required this.body});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:  [ Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(1.0375, 0.2287),
            radius: 1.9138,
            colors: [
              Color(0xFF413E37),
              Color(0xFF2B3040),
            ],
          ),
        ),
      ),
      Align(
        alignment: Alignment.topRight,
        child: Image.asset(Assets.indianFlag, width: MediaQuery.of(context).size.width* 0.4,)
      ),
    
      body
      ]
    );
  }
}
