import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class QuickLinkChips extends StatelessWidget {
  const QuickLinkChips({super.key});

  @override
  Widget build(BuildContext context) {
    
    List<Map<String, String>> quickChips = [
      {
        'text': "Vidyanjali-HE",
        'link': "https://vidyanjali-he.education.gov.in",
      },
      {
        'text': "eKUMBH Portal",
        'link': "https://ekumbh.aicte-india.org/",
      },
      {
        'text': "Atal Academy",
        'link': "https://www.aicte-india.org/atal",
      },
      {
        'text': "AICTE Internship Portal",
        'link': "https://internship.aicte-india.org/",
      },
      {
        'text': "Policies & Reforms",
        'link': "https://www.aicte-india.org/policy-reforms",
      },
      {
        'text': "AICTE QIP Portal",
        'link': "https://qip.aicte-india.org/",
      },
      {
        'text': "Cyber Security Awareness",
        'link': "https://www.aicte-india.org/CyberSecurity",
      },
      {
        'text': "More",
        'link': "",
      },
    ];

    return Wrap(
      alignment: WrapAlignment.start,
      spacing: 6,
      children: quickChips.map((e) {
        return GestureDetector(
          onTap: () {
            //Works for every chip except more
            if (e['text'] != "More") {
              final url = Uri.parse(e['link']!);
              launchUrl(
                url,
                mode: LaunchMode.inAppWebView,
              );
            }
          },
          child: Chip(
            padding: const EdgeInsets.all(8),
            labelPadding: const EdgeInsets.symmetric(horizontal: 5),
            avatar: e['text'] == "More"
                ? const Icon(
                    Icons.add,
                    color: Color(0xfff75700),
                  )
                : null,
            backgroundColor:
                e['text'] == "More" ? Colors.white : const Color(0xffF75700),
            side: BorderSide.none,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            label: Text(
              e['text']!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: e['text'] != "More"
                    ? Colors.white
                    : const Color(0xffF75700),
                fontSize: 12,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
