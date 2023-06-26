import 'package:aicte_app/MVVM/model/Bureaus%20Model/bureaus_model.dart';
import 'package:flutter/material.dart';

class BureausCard extends StatelessWidget {
  final BureausCardModel bureausCardModel;
  const BureausCard({super.key, required this.bureausCardModel});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          color: Colors.white12, borderRadius: BorderRadius.circular(10)),
      width: size.width * 0.8,
      child: Column(children: [
        Image.asset(bureausCardModel.image),
        Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 10),
            color: Colors.amberAccent,
            child: Text(
              bureausCardModel.title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            )),
        const SizedBox(height: 10),
        Text(
          bureausCardModel.subtitle,
          style: const TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Text(
          bureausCardModel.description,
          style: const TextStyle(fontSize: 16, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ]),
    );
  }
}
