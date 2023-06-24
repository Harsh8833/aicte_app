import 'package:flutter/material.dart';

class FacilityCard extends StatelessWidget {

  const FacilityCard(
      {super.key,
      required this.img,
      required this.title,
      required this.description,
      required this.color,
      required this.link,});

  final String img;
  final String title;
  final String description;
  final Color color;
  final String link;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        width: size.width,
        height: 125,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: size.width * 0.15,
              child: Image.asset(
                img,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: size.width * 0.7,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
              child: Column(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
