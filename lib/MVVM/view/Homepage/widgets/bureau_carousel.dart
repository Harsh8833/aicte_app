import 'package:aicte_app/constants/assets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BureauCarousel extends StatelessWidget {
  const BureauCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List bureauData = [
      {
        'title': "Overview",
        'description': "An Overview of Bureaus and Cells",
        'link': "https://www.aicte-india.org/bureaus",
        'img': Assets.bureau1,
      },
      {
        'title': "Regulations",
        'description':
            "As defined in the AICTE act 1987, Technical Education means",
        'link': "https://www.aicte-india.org/bureaus/approval",
        'img': Assets.bureau2,
      },
      {
        'title': "Policy & Academic Planning (Technical)",
        'description': "Planning and framing of policies related to Academics",
        'link': "https://www.aicte-india.org/bureaus/policy-academic-planning",
        'img': Assets.bureau3,
      },
      {
        'title': "Administration",
        'description':
            "Administration consists of the performance or management",
        'link': "https://www.aicte-india.org/bureaus/administration",
        'img': Assets.bureau4,
      },
      {
        'title': "Finance",
        'description': "Finance Bureau has been mandated to manage Finances",
        'link': "https://www.aicte-india.org/bureaus/finance",
        'img': Assets.bureau5,
      },
    ];
    return CarouselSlider.builder(
        itemCount: 4,
        options: CarouselOptions(
          height: 215,
          viewportFraction: 1,
          autoPlay: true,
          autoPlayCurve: Curves.easeOut,
        ),
        itemBuilder: (context, index, realIndex) {
          return Column(
            children: [
              SizedBox(
                width: size.width,
                height: 154,
                child: Image.asset(bureauData[index]['img'], fit: BoxFit.fill),
              ),
              Container(
                width: size.width,
                height: 60,
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                color: Colors.black.withOpacity(0.15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bureauData[index]['title'],
                      style:  TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: size.width * 0.65,
                          child: Text(
                            bureauData[index]['description'],
                            overflow: TextOverflow.ellipsis,
                            style:  TextStyle(
                              color: Theme.of(context).colorScheme.onSurface,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            final url = Uri.parse(bureauData[index]['link']);
                            launchUrl(url, mode: LaunchMode.inAppWebView);
                          },
                          child: const Text(
                            "Know More",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xffF75700),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          );
        });
  }
}
