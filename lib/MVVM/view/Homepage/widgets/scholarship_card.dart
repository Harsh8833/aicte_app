import 'package:aicte_app/constants/assets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ScholarshipCard extends StatefulWidget {
  const ScholarshipCard({super.key});

  @override
  State<ScholarshipCard> createState() => _ScholarshipCardState();
}

class _ScholarshipCardState extends State<ScholarshipCard> {
  List data = [
    {
      'img': Assets.scholarship1,
      'title': "National e-Scholarship",
      'description':
          "National e-Scholarship is the one-stop solution to help students seek various scholarships.",
      'link': "http://scholarships.gov.in/",
    },
    {
      'img': Assets.scholarship2,
      'title': "Vidya Lakshmi",
      'description':
          "Vidya Lakshmi is a first-of-its-kind portal for students seeking educational loan.",
      'link': "https://www.vidyalakshmi.co.in/Students/indexPopup",
    },
    {
      'img': Assets.scholarship3,
      'title': "Pragati and Saksham",
      'description':
          "Scholarship for girls under the Pragati Scheme and scholarship for differently-abled students under Saksham Scheme.",
      'link':
          "https://www.aicte-india.org/schemes/students-development-schemes",
    },
    {
      'img': Assets.scholarship4,
      'title': "India Innovation Initiative",
      'description':
          "India's largest innovation challenges jointly promoted by the CII and Department of Science & Technology.",
      'link': "http://www.ciiinnovation.in/",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CarouselSlider.builder(
      itemCount: data.length,
      options: CarouselOptions(
        autoPlay: true,
        height: 115,
        viewportFraction: 1,
      ),
      itemBuilder: (context, index, realIndex) {
        return GestureDetector(
          onTap: () {
            final url = Uri.parse(data[index]['link']);
            launchUrl(
              url,
              mode: LaunchMode.inAppWebView,
            );
          },
          child: Container(
            width: size.width * 0.72,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 4),
                  width: size.width * 0.1,
                  child: Image.asset(
                    data[index]['img'],
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 8, left: 2),
                  width: size.width * 0.57,
                  // color: Colors.blue,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        data[index]['title'],
                        style: const TextStyle(
                          color: Color(0xFFF75700),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        data[index]['description'],
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
