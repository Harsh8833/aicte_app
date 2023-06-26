

import 'package:aicte_app/constants/assets.dart';
import 'package:flutter/material.dart';

class HeaderLogo extends StatelessWidget {
  const HeaderLogo({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return  SizedBox(
      width: size.width,
      height: 220,

      child:
        Stack(
          children: [
             Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              Assets.indianFlag,
              width: MediaQuery.of(context).size.width * 0.4,
            )),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 120,
                child: Image.asset(Assets.appLogo),
              ),
            ),
          ],
        ),
      
    );
  }
}