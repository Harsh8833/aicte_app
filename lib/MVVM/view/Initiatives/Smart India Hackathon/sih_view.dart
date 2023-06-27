import 'package:aicte_app/MVVM/view/About%20Us/widgets/title_tile.dart';
import 'package:aicte_app/constants/dimens.dart';
import 'package:aicte_app/widgets/app_scaffold.dart';
import 'package:aicte_app/widgets/header_logo.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SIHView extends StatelessWidget {
  static const route = 'sih-view';
  const SIHView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const HeaderLogo(),
          const SizedBox(height: 20),
          const TitleTile(title: "Smart India Hackathon"),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
            child: Text(
              "Smart India Hackathon is a nationwide initiative to provide students a platform to solve some of pressing problems we face in our daily lives, and thus inculcate a culture of product innovation and a mindset of problem solving.\n\nThe last edition of the hackathon saw over 5 million+ students from various engineering colleges compete for the top prize at 35+ locations.\n\nIn SIH, the students would also have the opportunity to work on challenges faced within the private sector organisations and create world class solutions for some of the top companies in the world, thus helping the Private sector hire the best minds from across the nation.\n\n To get more information about SIH: ",
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 5),
          GestureDetector(
            onTap: () {
              final url = Uri.parse("https://sih.gov.in/");
              launchUrl(
                url,
                mode: LaunchMode.inAppWebView,
              );
            },
            child: Chip(
              padding: const EdgeInsets.all(8),
              label: const Text(
                "More Details",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffF75700),
                ),
              ),
              backgroundColor: Colors.white,
              side: BorderSide.none,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
            child: Text(
              "Invitation to Private & Public Sector industries and NGOs to join Smart India Hackathon(SIH): ",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 5),
          GestureDetector(
            onTap: () {
              //TODO Change the link to the download link of the PDF
              final url = Uri.parse("https://sih.gov.in/");
              launchUrl(
                url,
                mode: LaunchMode.inAppWebView,
              );
            },
            child: Chip(
              padding: const EdgeInsets.all(8),
              label: const Text(
                "Download the Invite",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffF75700),
                ),
              ),
              backgroundColor: Colors.white,
              side: BorderSide.none,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
