class NewsCardModel {
  final String title;
  final String date;
  final String link;

  NewsCardModel(this.title, this.date, this.link);
}

List<NewsCardModel> newsCardData = [
  NewsCardModel(
    "On 21st June, 2023 which is International Yoga Day AICTE has launhed its YOGA Campaign 2023 webportal",
    "Thursday, June 22, 2023",
    "https://drive.aicte-india.org/yoga2023/",
  ),
  NewsCardModel(
    "All India Council for Technical Education (AICTE) has launched MeriLiFE movement as a key to combating climate change and promote plantation.",
    "Thursday, June 22, 2023",
    "https://drive.aicte-india.org/meriLife/",
  ),
  NewsCardModel(
    "AICTE PARAKH Portal is OPEN for Registration and Assessments",
    "Thursday, October 7, 2021",
    "https://parakh.aicte-india.org/",
  ),
  NewsCardModel(
    "Applications invited for AICTE-UKIERI Technical Education Leadership Development Programme AY 2020-21",
    "Wednesday, June 3, 2020",
    "https://www.aicte-india.org/Initiatives/ukieri2020",
  ),
];
