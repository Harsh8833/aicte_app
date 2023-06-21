import 'package:aicte_app/constants/dimens.dart';
import 'package:flutter/material.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimens.borderRadius)),
      child: Container(
        height: 42.0, // Set the desired height
        decoration: BoxDecoration(
          color: const Color(0xFFD9D9D9).withOpacity(0.13), // Set the desired background color
          borderRadius: BorderRadius.circular(Dimens.borderRadius),
          border: Border.all(
            color: const Color(0xFF707070), // Set the desired border color
            width: 1.0,
          ),
        ),
        child:const  TextField(
          textAlignVertical: TextAlignVertical.center, 
          cursorHeight: 14,
          
          style: TextStyle(color: Colors.white, fontSize: 14.0),
          decoration: InputDecoration(
            
            hintText: 'Enter any terms...',
            hintStyle: TextStyle(color: Colors.white, fontSize: 14.0),
            contentPadding: EdgeInsets.only(left: 20.0, bottom: 10.0),
            suffixIcon: Icon(Icons.search),
            border: InputBorder.none, // Remove the default border
          ),
        ),
      ),
    );
  }
}
