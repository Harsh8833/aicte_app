import 'package:aicte_app/MVVM/view/About%20Us/widgets/title_tile.dart';
import 'package:aicte_app/MVVM/view/PDF%20Viewer/pdf_viewer.dart';
import 'package:aicte_app/constants/assets.dart';
import 'package:aicte_app/constants/dimens.dart';
import 'package:aicte_app/widgets/app_scaffold.dart';
import 'package:aicte_app/widgets/header_logo.dart';
import 'package:flutter/material.dart';

class HistoryView extends StatelessWidget {
  static const route = "History-view";
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return AppScaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const HeaderLogo(),
            const SizedBox(height: 20),
            const TitleTile(title: "History"),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Dimens.horizontalPadding),
              child: SizedBox(
                width: size.width,
                height: 150,
                child: Image.asset(
                  Assets.about1,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
              child: Text(
                "The beginning of formal technical education in India can be dated back to the mid-19th century. Major policy initiatives in the pre-independence period included the appointment of the Indian Universities Commission in 1902, issue of the Indian Education Policy Resolution in 1904, and the Governor General’s policy statement of 1913 stressing the importance of technical education, the establishment of IISc in Bangalore, Institute for Sugar, Textile & Leather Technology in Kanpur, N.C.E. in Bengal in 1905, and industrial schools in several provinces.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Theme.of(context).colorScheme.onBackground,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(height: 25),
            const TitleTile(title: "Initial Set-Up"),
            const SizedBox(height: 15),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
              child: Text(
                "All India Council for Technical Education (AICTE) was set up in November 1945 as a national-level apex advisory body to conduct a survey on the facilities available for technical education and to promote development in the country in a coordinated and integrated manner. And to ensure the same, as stipulated in the National Policy of Education (1986), AICTE was vested with:",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
              child: Text(
                "• Statutory authority for planning, formulation, and maintenance of norms & standards\n• Quality assurance through accreditation\n• Funding in priority areas, monitoring, and evaluation\n• Maintaining parity of certification & awards\n• The management of technical education in the country",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 13,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Dimens.horizontalPadding),
              child: Row(
                children: [
                  Text(
                    "1943",
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          offset: const Offset(2, 4),
                          blurRadius: 3,
                          color: Colors.black.withOpacity(0.25),
                        )
                      ],
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFFF75700),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
              child: Text(
                "Constitution of the Technical Education Committee of the Central Advisory Board of Education (CABE)",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Dimens.horizontalPadding),
              child: Row(
                children: [
                  Text(
                    "1944",
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          offset: const Offset(2, 4),
                          blurRadius: 3,
                          color: Colors.black.withOpacity(0.25),
                        )
                      ],
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
              child: Row(
                children: [
                  Text(
                    "Preparation of the Sergeant Report",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Dimens.horizontalPadding),
              child: Row(
                children: [
                  Text(
                    "1945",
                    style: TextStyle(
                        shadows: [
                          Shadow(
                            offset: const Offset(2, 4),
                            blurRadius: 3,
                            color: Colors.black.withOpacity(0.25),
                          )
                        ],
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF3C8226)),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
              child: Text(
                "Formation of All India Council of Technical Education (AICTE)",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Dimens.horizontalPadding),
              child: SizedBox(
                width: size.width,
                height: 350,
                child: Image.asset(
                  Assets.about2,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const TitleTile(title: "Role of National Working Group"),
            const SizedBox(height: 15),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
              child: Text(
                "The Government of India (the Ministry of Human Resource Development) also constituted a National Working Group to look into the role of AICTE in the context of proliferation of technical institutions, maintenance of standards, and other related matters. The Working Group recommended that AICTE be vested with the necessary statutory authority for making it more effective, which would consequently require restructuring and strengthening with the necessary infrastructure and operating mechanisms.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const TitleTile(
              title: "The All India Council For Technical Education Act 1987",
            ),
            const SizedBox(height: 15),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
              child: Text(
                "(No 52 of 1987 as passed by both the Houses of Parliament)\nThe AICTE Act was constituted to provide for the establishment of an All India Council for Technical Education with a view to proper planning and co-ordinated development of a technical education system throughout the country, the promotion of qualitative improvements of such education in relation to planned quantitative growth, and regulation & proper maintenance of norms and standards in the technical education system and for the matters connected therewith.\n\nThe purview of AICTE (the Council) covers programmes of technical education including training and research in Engineering, Technology, Architecture, Town Planning, Management, Pharmacy, Applied Arts and Crafts, Hotel Management and Catering Technology etc. at different levels.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
            ),
            const SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PDFViewerScreen(
                        pdfUrl:
                            "http://www.aicte-india.org/downloads/aicteact.pdf"),
                  ),
                );
              },
              child: Chip(
                padding: const EdgeInsets.all(10),
                shadowColor: Theme.of(context).colorScheme.onBackground,
                elevation: 5,
                label: const Text(
                  "Download the Act",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                backgroundColor: const Color(0xffF75700),
                side: BorderSide.none,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
