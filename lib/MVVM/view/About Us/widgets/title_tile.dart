import 'package:aicte_app/constants/dimens.dart';
import 'package:flutter/material.dart';

class TitleTile extends StatelessWidget {
  const TitleTile({
    super.key,
    required this.title,
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
      child: Container(
        color: Theme.of(context).colorScheme.secondary,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.015),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.onSecondary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
