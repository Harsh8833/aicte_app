import 'package:aicte_app/MVVM/model/Bureaus%20Model/bureaus_model.dart';
import 'package:aicte_app/constants/assets.dart';
import 'package:flutter/material.dart';

class BureausViewModel extends ChangeNotifier {
  List<BureausCardModel> bureausData = [
    BureausCardModel(
        Assets.bureau1,
        "TRAINING AND LEARNING",
        "Dr. Ramesh Unnikrishnan Advisor-II",
        "Special Buraeu for Research & Coordination with State Govt./UTs. and others coordinates and integrates development of technical education.",
        "https://www.aicte-india.org/bureaus/training-and-learning"),
    BureausCardModel(
        Assets.bureau2,
        "REGULATION",
        "Prof. Rajendra B Kakde Adviser -I",
        "The Approvals Bureau processes proposals for grant of approval for establishing a new technical institution or an integrated campus.",
        "https://www.aicte-india.org/bureaus/approval"),
    BureausCardModel(
        Assets.bureau3,
        "POLICY & ACADEMIC PLANNING",
        "Dr Mamta Rani Agarwal Advisor-I",
        "Special Cell for Research & Coordination with State Govt./UTs. and others coordinates and integrates development of technical education.",
        "https://www.aicte-india.org/bureaus/policy-academic-planning"),
    BureausCardModel(
        Assets.bureau4,
        "SCHOLARSHIPS AND GRANTS",
        "Dr. Neeraj Saxena Adviser-I",
        "Scholarships and Grants bureau of AICTE promotes quality in technical education through Training, research, scholarships through several schemes which aim to improve the technical education in the country through systematic efforts.",
        "https://www.aicte-india.org/bureaus/scholarships-and-grants"),
    BureausCardModel(
        Assets.bureau5,
        "ADMINISTRATION",
        "Dr. R K Soni Advisor-II",
        "The Administration Bureau nominates AICTE representatives on various bodies and committees, along with providing logistic support for conducting meetings and trainings for all the staff of the Council.",
        "https://www.aicte-india.org/bureaus/administration"),
    BureausCardModel(
        Assets.bureau5,
        "FINANCE",
        "Smt. Gujju Manusree Director",
        "The Finance Bureau owns drawing and disbursement of planned and non-planned accounts, along with the management of cash and bills.",
        "https://www.aicte-india.org/bureaus/finance"),
  ];
}
