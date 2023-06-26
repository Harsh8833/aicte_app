import 'package:aicte_app/MVVM/view/About%20Us/widgets/title_tile.dart';
import 'package:aicte_app/constants/assets.dart';
import 'package:aicte_app/constants/dimens.dart';
import 'package:aicte_app/widgets/app_scaffold.dart';
import 'package:aicte_app/widgets/header_logo.dart';
import 'package:flutter/material.dart';

class MessagesView extends StatelessWidget {
  static const route = "Messages-view";
  const MessagesView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AppScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const HeaderLogo(),
          const SizedBox(height: 20),
          const TitleTile(title: "Messages"),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Dimens.horizontalPadding),
            child: SizedBox(
              width: size.width,
              height: 150,
              child: Image.asset(
                Assets.about,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
            child: Text(
              "A repository of key messages from notable personalities and dignitaries.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const SizedBox(height: 25),
          const TitleTile(title: "Messages from the Chairman"),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
            child: Text(
              "The transformation of Indian education dates back to it being the pioneer in the 800 BCs where the undivided India had global institutions, whereas the deterioration began with the ages of modernization and industrialization.\n\n\nProf. TG Sitharam \nChairman  ",
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
