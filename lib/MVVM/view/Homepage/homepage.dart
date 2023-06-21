

import 'package:aicte_app/constants/assets.dart';
import 'package:aicte_app/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  static const route = '/homepage';
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return  AppScaffold(
      body: SingleChildScrollView(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          SizedBox(height: 80, width: size.width,),
          Image.asset(Assets.appLogo, height: 100,)                                      
      ]),)
    );
  }
}