

import 'package:aicte_app/constants/assets.dart';
import 'package:flutter/material.dart';

class AicteOfficeQuote extends StatelessWidget {
  final String quote;
  const AicteOfficeQuote({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(Assets.aicteOffice),
        const SizedBox(height: 12,),
        Text(quote, style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic, fontWeight: FontWeight.normal, color: Colors.white), textAlign: TextAlign.center,),
        
      
      ],
    );
  }
}