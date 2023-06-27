import 'package:aicte_app/MVVM/view/About%20Us/widgets/title_tile.dart';
import 'package:aicte_app/constants/dimens.dart';
import 'package:aicte_app/widgets/app_scaffold.dart';
import 'package:aicte_app/widgets/header_logo.dart';
import 'package:flutter/material.dart';
import 'package:aicte_app/constants/assets.dart';

class AboutUsOverviewView extends StatelessWidget {
  static const route = "AboutUs-overview-view";
  const AboutUsOverviewView({super.key});

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
            const TitleTile(title: "About US"),
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
            const Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
              child: Text(
                "Technical education in India contributes a major share to the overall education system and plays a vital role in the social and economic development of our nation.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(height: 25),
            const TitleTile(title: "The Organisation"),
            const SizedBox(height: 15),
            const Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
              child: Text(
                "In accordance with the provisions of the AICTE Act (1987), for the first five years after its inception in 1988, the Minister for Human Resource Development, the Government of India, was the Chairman of the Council. The first full-time Chairman was appointed on July 2, 1993 and the Council was reconstituted in March 1994 with a term of three years. The Executive Committee was re-constituted on July 7, 1994 and All India Board of Studies and Advisory Boards were constituted in 1994-95. Regional Offices of the Ministry of Human Resource Development, the Government of India, located in Kolkata, Chennai, Kanpur, and Mumbai were transferred to AICTE and the staff working in these offices were also deputed to the Council on foreign service terms w.e.f. October 1, 1995.\nThese offices functioned as secretariats of regional Committees in the four regions (North, East, West and South). Three new regional Committees in southwest, central, and northwest regions with their secretariats located in Bangalore, Bhopal, and Chandigarh, respectively, were also established on July 27, 1994. One more regional committee in South-Central region with its Secretariat in Hyderabad was notified on March 8, 2007.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 25),
            const TitleTile(title: "Our Objective"),
            const SizedBox(height: 15),
            const Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
              child: Text(
                ' • Promotion of Quality in Technical Education.\n • Planning and Coordinated Developmentof Technical Education System.\n • Regulations and Maintenance ofNorms and Standards.\n',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const TitleTile(title: "Our Vision"),
            const SizedBox(height: 15),
            const Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
              child: Text(
                '“To be a world-class organization leading technological and socio-economic development of the country by enhancing the global competitiveness of technical manpower and by ensuring high quality technical education to all sections of the society.”',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(height: 25),
            const TitleTile(title: "Our Mission"),
            const SizedBox(height: 15),
            const Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
              child: Text(
                '• A true facilitator and an objective regulator;\n• Transparent governance and accountable approach towards the society;\n• Planned and coordinated development of Technical Education in the country by ensuring world-class standards of institutions through accreditation;\n• Emphasis on developing high quality institutions, academic excellence, and innovative research and development programmes;\n• Networking with/or a network of institutions for optimum resource utilization;\n• Dissemination of knowledge;\nTechnology forecasting and global manpower planning;\n• Promoting industry-institution interaction for developing new products, services, and patents;\n• Inculcating entrepreneurship;\n• Encouraging indigenous technology;\n• Focusing on non-formal education;\n• Providing affordable education to all;\n• Making Technical Education in India globally acceptable;',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
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
