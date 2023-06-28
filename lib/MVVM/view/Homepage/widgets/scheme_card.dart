import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SchemeCard extends StatelessWidget {
  const SchemeCard({
    super.key,
    required this.title,
    required this.img,
    required this.link,
  });

  final String title;
  final String img;
  final String link;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 210,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          SizedBox(
            width: size.width,
            height: 160,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              child: Image.asset(
                img,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: size.width * 0.75,
                  child: Text(
                    title,
                    style:  TextStyle(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    final url = Uri.parse(link);
                    launchUrl(url);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffF75700),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Icon(
                      Icons.chevron_right_sharp,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
