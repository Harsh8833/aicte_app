import 'package:aicte_app/constants/dimens.dart';
import 'package:aicte_app/widgets/aicte_office_quote.dart';
import 'package:aicte_app/widgets/app_scaffold.dart';
import 'package:aicte_app/widgets/header_logo.dart';
import 'package:aicte_app/widgets/title_bar.dart';
import 'package:flutter/material.dart';

class StudentOpportunities extends StatelessWidget {
  static const route = '/student-opportunities';
  const StudentOpportunities({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderLogo(),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TitleBar(title: "Opportunities for Student"),
                  SizedBox(height: 20),
                  AicteOfficeQuote(
                    quote:
                        "The word student is etymologically derived through Middle English from the Latin second-type conjugation verb studēre, meaning \"to direct one's zeal at\"; hence a student could be described as \"one who directs zeal at a subject\". In its widest use, student is used for anyone who is learning.",
                  ),
                  SizedBox(height: 10),
                  TitleBar(title: "Learning and Growing"),
                  SizedBox(height: 10),
                  Text(
                    "Learning is acquiring new knowledge, behaviors, skills, values or preferences. It may involve processing different types of information. Learning functions can be performed by different brain learning processes, which depend on the mental capacities of learning subject/agent, the type of knowledge which has to be acquitted, as well as on socio-cognitive and environmental circumstances.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                    "Human learning may occur as part of education or personal development. It may be goal-oriented and may be aided by motivation. The study of how learning occurs is part of neuropsychology, educational psychology, learning theory, and pedagogy.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                    "Learning may occur as a result of habituation or classical conditioning, seen in many animal species, or as a result of more complex activities such as play, seen only in relatively intelligent animals and humans. Learning may occur consciously or without conscious awareness. There is evidence for human behavioral learning prenatally, in which habituation has been observed as early as 32 weeks into gestation, indicating that the central nervous system is sufficiently developed and primed for learning and memory to occur very early on in development.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 10)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
