import 'package:aicte_app/constants/assets.dart';
import 'package:flutter/material.dart';

class ScholarshipCard extends StatelessWidget {
  const ScholarshipCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.72,
      height: 110,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 4),
            width: size.width * 0.1,
            child: Image.asset(
              Assets.scholarship1,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 8, left: 2),
            width: size.width * 0.57,
            // color: Colors.blue,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "National e-Scholarship",
                  style: TextStyle(
                    color: Color(0xFFF75700),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  "National e-Scholarship is the one-stop solution to help students seek various scholarships.",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
