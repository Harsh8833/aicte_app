import 'package:aicte_app/MVVM/model/Bureaus%20Model/bureaus_model.dart';
import 'package:aicte_app/constants/assets.dart';
import 'package:flutter/material.dart';

class BureausViewModel extends ChangeNotifier {
  List<BureausCardModel> bureausData = [
    BureausCardModel(
        Assets.bureau1,
        "TRAINING AND LEARNING",
        "Dr. Ramesh Unnikrishnan Advisor-II",
        "Special Buraeu for Research & Coordination with State Govt./UTs. and others coordinates and integrates development of technical education."),
    BureausCardModel(
        Assets.bureau2,
        "TRAINING AND LEARNING",
        "Dr. Ramesh Unnikrishnan Advisor-II",
        "Special Buraeu for Research & Coordination with State Govt./UTs. and others coordinates and integrates development of technical education."),
    BureausCardModel(
        Assets.bureau3,
        "TRAINING AND LEARNING",
        "Dr. Ramesh Unnikrishnan Advisor-II",
        "Special Buraeu for Research & Coordination with State Govt./UTs. and others coordinates and integrates development of technical education."),
    BureausCardModel(
        Assets.bureau4,
        "TRAINING AND LEARNING",
        "Dr. Ramesh Unnikrishnan Advisor-II",
        "Special Buraeu for Research & Coordination with State Govt./UTs. and others coordinates and integrates development of technical education."),
    BureausCardModel(
        Assets.bureau5,
        "TRAINING AND LEARNING",
        "Dr. Ramesh Unnikrishnan Advisor-II",
        "Special Buraeu for Research & Coordination with State Govt./UTs. and others coordinates and integrates development of technical education.")
  ];
}
