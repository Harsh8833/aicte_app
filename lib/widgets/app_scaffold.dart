import 'package:aicte_app/MVVM/view/Homepage/homepage.dart';
import 'package:aicte_app/constants/assets.dart';
import 'package:aicte_app/MVVM/view/Navigation/navscreen.dart';
import 'package:flutter/material.dart';
import 'package:aicte_app/constants/globals.dart';

class AppScaffold extends StatefulWidget {
  final Widget body;

  const AppScaffold({super.key, required this.body});

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
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
          child: Image.asset(
            Assets.indianFlag,
            width: MediaQuery.of(context).size.width * 0.4,
          ),
        ),
        widget.body,
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.045,
            left: MediaQuery.of(context).size.width * 0.04,
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 2,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: IconButton.filled(
              onPressed: () {
                Globals.navOpen
                    ? Navigator.pushNamed(context, Homepage.route)
                    : Navigator.pushReplacementNamed(context, NavScreen.route);
                setState(() {
                  Globals.navOpen = !Globals.navOpen;
                });
              },
              icon: Globals.navOpen
                  ? const Icon(Icons.close_rounded)
                  : const Icon(Icons.menu_rounded),
              color: Colors.black,
              style: IconButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                backgroundColor: Colors.white,
                shadowColor: Colors.black,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
