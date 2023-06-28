import 'package:aicte_app/MVVM/view%20model/bureaus%20view%20model/initiative_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreInitiatives extends StatelessWidget {
  const MoreInitiatives({
    super.key,
    required this.count,
  });

  final int count;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: listData[count].length,
        itemBuilder: (context, index) {
          return Column(
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
                    listData[count][index].image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          listData[count][index].title,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Text(
                      listData[count][index].description,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            final url = Uri.parse(listData[count][index].link);
                            launchUrl(
                              url,
                              mode: LaunchMode.inAppWebView,
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color(0xffd9d9d9),
                                borderRadius: BorderRadius.circular(8)),
                            child: const Icon(
                              Icons.chevron_right_sharp,
                              size: 28,
                              color: Color(0xffF75700),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          );
        });
  }
}