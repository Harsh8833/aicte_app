import 'package:aicte_app/MVVM/view%20model/bureaus%20view%20model/initiative_model.dart';
import 'package:aicte_app/MVVM/view/Initiatives/widgets/more_initiatives.dart';
import 'package:aicte_app/MVVM/view/Initiatives/widgets/news_card.dart';
import 'package:aicte_app/constants/assets.dart';
import 'package:aicte_app/constants/dimens.dart';
import 'package:aicte_app/widgets/app_scaffold.dart';
import 'package:aicte_app/widgets/header_logo.dart';
import 'package:aicte_app/widgets/title_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InitiativesOverviewView extends StatefulWidget {
  static const route = "Intiatives-overview-view";

  const InitiativesOverviewView({super.key});

  @override
  State<InitiativesOverviewView> createState() =>
      _InitiativesOverviewViewState();
}

int count = 0;

class _InitiativesOverviewViewState extends State<InitiativesOverviewView> {
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
                  horizontal: Dimens.horizontalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  const TitleBar(title: "Initiatives"),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 150,
                    child: Image.asset(
                      Assets.initiatives1,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Read about the initiatives undertaken by AICTE to promote technical education",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TitleBar(title: "Latest"),
                  const SizedBox(height: 15),
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        child: SizedBox(
                          width: size.width,
                          height: 200,
                          child: Image.asset(
                            Assets.initiatives2,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        width: size.width,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.15),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 12),
                        child: Column(
                          children: [
                            const Row(
                              children: [
                                Text(
                                  "AICTE Student Learning Assessment Project",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              "The AICTE-SLA project is designed to measure the benchmark levels and gains in academic and aptitude skills by the students in technical programs and to understand the various factors that affect skill development of students in Technical Institutes across India.",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    final url = Uri.parse(
                                        "https://parakh.aicte-india.org/");
                                    launchUrl(
                                      url,
                                      mode: LaunchMode.inAppWebView,
                                    );
                                  },
                                  child: const Text(
                                    "Learn More",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xffF75700),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const TitleBar(title: "More Initiatives"),
                  MoreInitiatives(
                    count: count,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      (count != 0)
                          ? TextButton.icon(
                              onPressed: () {
                                setState(() {
                                  if (count != 0) {
                                    count--;
                                  }
                                });
                              },
                              icon: const Icon(
                                size: 30,
                                Icons.chevron_left_sharp,
                                color: Color(0xffF75700),
                              ),
                              label: const Text(
                                "Prev",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          : const SizedBox(),
                      (count == (listData.length - 1))
                          ? const SizedBox()
                          : TextButton.icon(
                              onPressed: () {
                                setState(() {
                                  if (count < listData.length - 1) {
                                    count++;
                                  }
                                });
                              },
                              icon: const Text(
                                "Next",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              label: const Icon(
                                size: 30,
                                Icons.chevron_right_sharp,
                                color: Color(0xffF75700),
                              ),
                            ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const TitleBar(title: "News and Announcements"),
                  const NewsCard(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Color(0xffF75700),
                        ),
                        label: const Text(
                          "More",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xffF75700),
                          ),
                        ),
                      ),
                    ],
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
}
