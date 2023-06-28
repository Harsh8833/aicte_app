import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BannerChips extends StatelessWidget {
  const BannerChips({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> bannerChips = [
      {
        'title': "Approval Process 2023-24",
        'link': "https://www.aicte-india.org/ap2024",
      },
      {
        'title': "Centralized Support System",
        'link': "https://drisyam.aicte-india.org/",
      },
      {
        'title':
            "Dashboard Reporting in Systematic Analysis and Monitoring (DRISYAM)",
        'link': "https://css.aicte-india.org/login",
      },
    ];
    return Wrap(
      spacing: 10,
      runSpacing: 12,
      children: bannerChips.map((ele) {
        return GestureDetector(
          onTap: () {
            final url = Uri.parse(ele['link']!);
            launchUrl(
              url,
              mode: LaunchMode.inAppWebView,
            );
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 4),
                    blurRadius: 4,
                    color: Theme.of(context)
                        .colorScheme
                        .onBackground
                        .withOpacity(0.25),
                  )
                ]),
            child: Text(
              ele['title']!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xffF75700),
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
