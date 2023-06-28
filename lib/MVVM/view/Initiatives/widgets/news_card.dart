import 'package:aicte_app/MVVM/view%20model/initiatives%20view%20model/news_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: newsCardData.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.white54,
                width: 2,
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 13),
            child: Column(
              children: [
                Text(
                  newsCardData[index].title,
                  style: const TextStyle(
                    color: Colors.white,
                    // color: Color(0xffF75700),
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Text(
                      newsCardData[index].date,
                      style: const TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Color(0xffF75700),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton.filled(
                      onPressed: () {
                        final url = Uri.parse(newsCardData[index].link);
                        launchUrl(
                          url,
                          mode: LaunchMode.inAppWebView,
                        );
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Color(0xffF75700),
                      ),
                      style: IconButton.styleFrom(
                        backgroundColor: const Color(0xffd9d9d9),
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        });
  }
}
