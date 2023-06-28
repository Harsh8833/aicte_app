import 'package:aicte_app/MVVM/view%20model/bureaus%20view%20model/bureaus_view_model.dart';
import 'package:aicte_app/MVVM/view/Bureaus/Overview/widgets/aicte_cells.dart';
import 'package:aicte_app/MVVM/view/Bureaus/Overview/widgets/bureaus_cards.dart';
import 'package:aicte_app/constants/assets.dart';
import 'package:aicte_app/constants/dimens.dart';
import 'package:aicte_app/widgets/aicte_office_quote.dart';
import 'package:aicte_app/widgets/app_scaffold.dart';
import 'package:aicte_app/widgets/header_logo.dart';
import 'package:aicte_app/widgets/title_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BureausOverviewView extends StatelessWidget {
  static const route = "bureaus-overview-view";
  const BureausOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return AppScaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const HeaderLogo(),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Dimens.horizontalPadding),
            child: Column(
              children: [
                const TitleBar(title: "Overview"),
                const AicteOfficeQuote(
                    quote:
                        "The organization structure of the AICTE comprises of the following bureaus"),
                const SizedBox(height: 20),
                CarouselSlider.builder(
                    itemCount: 4,
                    options: CarouselOptions(
                      height: 400,
                      viewportFraction: 0.9,
                      autoPlay: true,
                      autoPlayCurve: Curves.easeOut,
                    ),
                    itemBuilder: (context, index, realIndex) {
                      return BureausCard(
                        bureausCardModel:
                            context.read<BureausViewModel>().bureausData[index],
                      );
                    }),
                const SizedBox(height: 20),
                const TitleBar(title: "AICTE Cells"),
                const AicteCells(),
                const SizedBox(height: 200),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
