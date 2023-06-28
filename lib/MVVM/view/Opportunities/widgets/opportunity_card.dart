import 'package:flutter/material.dart';

class OpportunityCard extends StatelessWidget {
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
              title,
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
              description,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 12,
              children: links.map((ele) {
                //TODO Implement onTap webview for all the hyperlinks including pdf also
                return Row(
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
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
