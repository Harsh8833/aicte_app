import 'package:flutter/material.dart';

class AnnouncementChip extends StatelessWidget {
  const AnnouncementChip({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> announcementChips = [
      "AICTE Direct Recruitment 2023",
      "Academic Calender 2023-24",
      "Approval Process Handbook",
      "Fake Email/ Calls Alert",
      "More",
    ];

    return Wrap(
      alignment: WrapAlignment.start,
      spacing: 6,
      children: announcementChips.map((e) {
        return Chip(
          padding: const EdgeInsets.all(8),
          labelPadding: const EdgeInsets.symmetric(horizontal: 3),
          avatar: e == "More"
              ? const Icon(
                  Icons.add,
                  color: Color(0xfff75700),
                )
              : null,
          backgroundColor: e == "More" ? Colors.white : const Color(0xffF75700),
          side: BorderSide.none,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          label: Text(
            e,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: e != "More" ? Colors.white : const Color(0xffF75700),
              fontSize: 12,
            ),
          ),
        );
      }).toList(),
    );
  }
}
