

import 'package:aicte_app/MVVM/model/Navigation%20Model/navigation_model.dart';
import 'package:aicte_app/utils/enums/navlinks.dart';

class NavigationServices{

  List<NavigationModel> getNavigationMenuItems(){
    return [
    NavigationModel(
      navLink: NavLinks.aboutUs,
      title: "ABOUT US",
      subMenu: [],
    ),
    NavigationModel(
      navLink: NavLinks.newsRoom,
      title: "NEWSROOM",
      subMenu: [],
    ),
    NavigationModel(
      navLink: NavLinks.bureaus,
      title: "BUREAUS",
      subMenu: [],
    ),
    NavigationModel(
      navLink: NavLinks.initiatives,
      title: "INITIATIVES",
      subMenu: [],
    ),
    NavigationModel(
      navLink: NavLinks.schemes,
      title: "SCHEMES",
      subMenu: [],
    ),
    NavigationModel(
      navLink: NavLinks.education,
      title: "EDUCATION",
      subMenu: [],
    ),
    NavigationModel(
      navLink: NavLinks.oppurtunities,
      title: "OPPURTUNITES",
      subMenu: [],
    ),
    NavigationModel(
      navLink: NavLinks.statistics,
      title: "STATISTICS",
      subMenu: [],
    ),
    NavigationModel(
      navLink: NavLinks.bulletins,
      title: "BULLETINS",
      subMenu: [],
    ),
  ];
  }


}