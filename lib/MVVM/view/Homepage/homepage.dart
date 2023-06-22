import 'package:aicte_app/MVVM/view/Homepage/widgets/announcement_chips.dart';
import 'package:aicte_app/MVVM/view/Homepage/widgets/quicklink_chips.dart';
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

    List<String> bannerChips = [
      "Approval Process 2023-24",
      "Centralized Support System",
      "Dashboard Reporting in Systematic Analysis and Monitoring (DRISYAM)",
    ];

    return AppScaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
                width: size.width,
              ),
              Image.asset(
                Assets.appLogo,
                height: 100,
              ),
              const SizedBox(height: 20),
              const AppSearchBar(),
              const SizedBox(height: 20),
              Image.asset(Assets.cor1),
              const SizedBox(height: 20),
              const Text(
                "Welcome to AICTE",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              const Text(
                "All India Council for Technical Education (AICTE) was set up in November 1945 as a national-level Apex Advisory Body to conduct a survey on the facilities available for technical education and to promote development in the country in a coordinated and integrated manner.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
              const SizedBox(height: 35),
              Wrap(
                spacing: 10,
                runSpacing: 12,
                children: bannerChips.map((ele) {
                  return Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Text(
                      ele,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xffF75700),
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 35),
              const Row(
                children: [
                  Text(
                    "Quick Links",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const QuickLinkChips(),
              const SizedBox(height: 35),
              const Row(
                children: [
                  Text(
                    "Announcements",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const AnnouncementChip(),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
