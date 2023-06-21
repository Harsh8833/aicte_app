import 'package:aicte_app/MVVM/view/Homepage/widgets/search_bar.dart';
import 'package:aicte_app/constants/assets.dart';
import 'package:aicte_app/constants/dimens.dart';
import 'package:aicte_app/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  static const route = '/homepage';
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return AppScaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: 80,
            width: size.width,
          ),
          Image.asset(
            Assets.appLogo,
            height: 100,
          ),
          SizedBox(height: 20),
          AppSearchBar(),
          SizedBox(height: 20),
          Image.asset(Assets.cor1),
          SizedBox(height: 20),
          Text(
            "Welcome to AICTE",
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          ),
                    SizedBox(height: 6),

          Text(
            "All India Council for Technical Education (AICTE) was set up in November 1945 as a national-level Apex Advisory Body to conduct a survey on the facilities available for technical education and to promote development in the country in a coordinated and integrated manner.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ]),
      ),
    ));
  }
}
