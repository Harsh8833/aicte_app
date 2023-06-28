import 'package:aicte_app/MVVM/view%20model/opportunity%20view%20model/teacher_view_model.dart';
import 'package:aicte_app/MVVM/view/Opportunities/widgets/opportunity_card.dart';
import 'package:aicte_app/constants/dimens.dart';
import 'package:aicte_app/widgets/app_scaffold.dart';
import 'package:aicte_app/widgets/header_logo.dart';
import 'package:aicte_app/widgets/title_bar.dart';
import 'package:flutter/material.dart';

class FacultyOpportunities extends StatelessWidget {
  static const route = '/faculty-opportunities';
  const FacultyOpportunities({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderLogo(),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Dimens.horizontalPadding),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const TitleBar(title: "Opportunities For Faculty"),
                  const SizedBox(height: 20),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: teacherViewData.length,
                    itemBuilder: (context, index) {
                      return OpportunityCard(
                        title: teacherViewData[index].title,
                        description: teacherViewData[index].description,
                        links: teacherViewData[index].links,
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
