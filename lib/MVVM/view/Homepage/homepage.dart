import 'package:aicte_app/MVVM/view/Homepage/widgets/announcement_chips.dart';
import 'package:aicte_app/MVVM/view/Homepage/widgets/banner_carousel.dart';
import 'package:aicte_app/MVVM/view/Homepage/widgets/banner_chips.dart';
import 'package:aicte_app/MVVM/view/Homepage/widgets/bureau_carousel.dart';
import 'package:aicte_app/MVVM/view/Homepage/widgets/facility_card.dart';
import 'package:aicte_app/MVVM/view/Homepage/widgets/quicklink_chips.dart';
import 'package:aicte_app/MVVM/view/Homepage/widgets/scheme_card.dart';
import 'package:aicte_app/MVVM/view/Homepage/widgets/scholarship_card.dart';
import 'package:aicte_app/MVVM/view/Homepage/widgets/search_bar.dart';
import 'package:aicte_app/constants/assets.dart';
import 'package:aicte_app/constants/dimens.dart';
import 'package:aicte_app/widgets/app_scaffold.dart';
import 'package:aicte_app/widgets/header_logo.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Homepage extends StatelessWidget {
  static const route = '/homepage';
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return AppScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderLogo(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimens.horizontalPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  const AppSearchBar(),
                  const SizedBox(height: 20),
                  const BannerCarousel(),
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
                  const BannerChips(),
                  const SizedBox(height: 35),
                  titleText("Quick Links"),
                  const SizedBox(height: 15),
                  const QuickLinkChips(),
                  const SizedBox(height: 35),
                  titleText("Announcement"),
                  const SizedBox(height: 15),
                  const AnnouncementChip(),
                  const SizedBox(height: 35),
                  titleText("Bureaus"),
                  const SizedBox(height: 15),
                  const BureauCarousel(),
                  const SizedBox(height: 35),
                  titleText("Initiatives & Schemes"),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: size.width,
                    height: 180,
                    child: Image.asset(
                      Assets.schemes1,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(height: 25),
                  const SchemeCard(
                    title:
                        "Prime Minister's Special Scholarship Scheme (PMSSS)",
                    img: Assets.schemes2,
                    link: "https://www.aicte-india.org/bureaus/jk",
                  ),
                  const SizedBox(height: 25),
                  const SchemeCard(
                    title:
                        "Unnat Bharat Abhiyan for transformational change in rural development processes",
                    img: Assets.schemes3,
                    link: "https://unnatbharatabhiyan.gov.in/",
                  ),
                  const SizedBox(height: 35),
                  const ScholarshipCard(),
                  const SizedBox(height: 35),
                  const FacilityCard(
                    img: Assets.facility1,
                    color: Color(0xFFE175A4),
                    title: "Women Empowerment",
                    description:
                        "Learn about AICTE’s contribution towards the socio-economic development of women through various women-oriented programmes.",
                  ),
                  const SizedBox(height: 20),
                  const FacilityCard(
                    img: Assets.facility2,
                    color: Color(0xFF55BAD2),
                    title: "Facilities for Differently Abled",
                    description:
                        "Creating awareness in the higher education system and providing necessary guidance & counselling to differently-abled people.",
                  ),
                  const SizedBox(height: 20),
                  const FacilityCard(
                    img: Assets.facility3,
                    color: Color(0xFF429488),
                    title: "Women Empowerment",
                    description:
                        "Explore various India-centric and other research funds and the way to avail of them.",
                  ),
                  const SizedBox(height: 20)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget titleText(String title) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 17,
          ),
        ),
      ],
    );
  }
}
