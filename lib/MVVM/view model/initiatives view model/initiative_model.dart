import 'package:aicte_app/constants/assets.dart';

class InitiativeCardModel {
  final String image;
  final String title;
  final String description;
  final String link;

  InitiativeCardModel(this.image, this.title, this.description, this.link);
}

List<InitiativeCardModel> initiativeCardData1 = [
  InitiativeCardModel(
    Assets.initiatives3,
    "One Student One Tree 2023",
    "All India Council for Technical Education (AICTE) has launched MeriLiFE movement as a key to combating climate change and promote plantation. Under this mission, target of “One crore” Tree Plantation has been taken by AICTE. Hence, AICTE requests all students, faculty and staff members of its approved Institutions to plant at least one tree having suitable utility in the respective region. The name of the Tree may be given on the name of person who planted that tree.",
    "https://drive.aicte-india.org/meriLife/",
  ),
  InitiativeCardModel(
    Assets.initiatives4,
    "AICTE Yoga Campaign 2023",
    "On 21st June, 2023 which is International Yoga Day AICTE has launhed its YOGA Campaign 2023 webportal",
    "https://drive.aicte-india.org/yoga2023/",
  ),
  InitiativeCardModel(
    Assets.initiatives5,
    "Jal Shakti Abhiyan",
    "The scheme “Jal Shakti Abhiyan” with the theme, “Sanchay Jal Behtar Kal”, has commenced from 1st July 2019",
    "https://aicte-india.org/sites/default/files/Jal%20Shakti.pdf", //TODO PDF view to be added
  )
];

List<InitiativeCardModel> initiativeCardData2 = [
  InitiativeCardModel(
    Assets.initiatives6,
    "AICTE-UKEIRI 2020-21",
    "UK India Education Research Initiative (UKIERI) was started in April 2006 with the aim of enhancing educational links between India and the United Kingdom.",
    "https://www.aicte-india.org/Initiatives/ukieri2020",
  ),
  InitiativeCardModel(
    Assets.initiatives7,
    "Smart India Hackathon 2018",
    "Smart India Hackathon 2018 will be officially launched on Monday, Oct 16, 2017 at the hands of Shri. Prakash Javadekar, Hon’ble Minister of HRD in Pune.",
    "https://aicte-india.org/Initiatives/smart-india-hackathon",
  ),
  InitiativeCardModel(
    Assets.initiatives8,
    "Startup Contest 2017",
    "AICTE’s Student Start-up Policy was launched by the then Hon’ble President of India Shri Pranab Mukherjee....",
    "https://aicte-india.org/Initiatives/startup-contest-2017",
  )
];

List<InitiativeCardModel> initiativeCardData3 = [
  InitiativeCardModel(
    Assets.initiatives9,
    "Launch of SWAYAM by Hon'ble President",
    "SWAYAM MOOCs platform is World’s Largest Online Free E-Learning Platform Portal designed to achieve the three cardinal principles of Education...",
    "https://drive.aicte-india.org/meriLife/",
  ),
  InitiativeCardModel(
    Assets.initiatives10,
    "AICTE-CII India Innovation Initiative (i3)",
    "",
    "http://www.i3.ciiinnovation.in/",
  ),
  InitiativeCardModel(
    Assets.initiatives11,
    "Clean & Green Campus",
    "To recognize the contribution of AICTE approved academic institutions in implementing Swachh Bharat Mission...",
    "https://aicte-india.org/Initiatives/clean-green-campus",
  ),
];

List listData = [
  initiativeCardData1,
  initiativeCardData2,
  initiativeCardData3,
];
