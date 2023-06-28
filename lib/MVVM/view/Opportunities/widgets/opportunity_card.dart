import 'package:aicte_app/MVVM/view/PDF%20Viewer/pdf_viewer.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OpportunityCard extends StatefulWidget {
  final String title;
  final String description;
  final List<Map<String, String>> links;

  const OpportunityCard({
    super.key,
    required this.title,
    required this.description,
    required this.links,
  });

  @override
  State<OpportunityCard> createState() => _OpportunityCardState();
}

class _OpportunityCardState extends State<OpportunityCard> {
  void onLinkClicks(int type, String link, BuildContext context) async {
    switch (type) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PDFViewerScreen(pdfUrl: link),
          ),
        );
        break;
      case 1:
        final imageProvider = Image.network(link).image;
        showImageViewer(context, imageProvider);
        break;
      case 2:
        final url = Uri.parse(link);
        launchUrl(
          url,
          mode: LaunchMode.inAppWebView,
        );
        break;
      default:
        //If none of the format matches
        final url = Uri.parse(link);
        launchUrl(
          url,
          mode: LaunchMode.inAppWebView,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: size.width,
      decoration: BoxDecoration(
          color: Colors.white12, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: size.width * 0.2,
              height: 8,
              color: const Color(0xffF75700),
            ),
            const SizedBox(height: 10),
            Text(
              widget.description,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 12,
              children: widget.links.map((ele) {
                return GestureDetector(
                  onTap: () {
                    if (ele['link']!.contains('.pdf')) {
                      onLinkClicks(0, ele['link']!, context);
                    } else {
                      if (ele['link']!.contains('.jpg') ||
                          ele['link']!.contains('jpeg')) {
                        onLinkClicks(1, ele['link']!, context);
                      } else {
                        onLinkClicks(2, ele['link']!, context);
                      }
                    }
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.arrow_right,
                        color: Color(0xffF75700),
                      ),
                      Text(
                        ele['text']!,
                        style: const TextStyle(
                            color: Color(0xffF75700),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
