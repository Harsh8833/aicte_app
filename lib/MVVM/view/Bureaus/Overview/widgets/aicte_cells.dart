import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AicteCells extends StatelessWidget {
  const AicteCells({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> quickChips = [
      {
        'text': "NEAT",
        'link': "https://www.aicte-india.org/bureaus/neat",
      },
      {
        'text': "Innovation",
        'link': "https://mic.gov.in/mic/",
      },
      {
        'text': "Vigilance",
        'link': "https://www.aicte-india.org/bureaus/Vigilance",
      },
      {
        'text': "Internal Audit",
        'link': "https://www.aicte-india.org/bureaus/internal-audit",
      },
      {
        'text': "Indian Knowledge System(IKS)",
        'link': "https://iksindia.org/",
      },
    ];

    return Wrap(
      alignment: WrapAlignment.start,
      spacing: 6,
      children: quickChips.map((e) {
        return GestureDetector(
          onTap: () {
            //Works for every chip except more
            final url = Uri.parse(e['link']!);
            launchUrl(
              url,
              mode: LaunchMode.inAppWebView,
            );
          },
          child: Chip(
            shadowColor: Theme.of(context).colorScheme.onBackground,
            elevation: 5,
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
