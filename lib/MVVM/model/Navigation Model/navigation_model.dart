import 'package:aicte_app/MVVM/model/Navigation%20Model/submenu.dart';
import 'package:aicte_app/utils/enums/navlinks.dart';

class NavigationModel {
  final NavLinks navLink;
  final String title;
  final List<SubMenu> subMenu;

  NavigationModel({
    required this.navLink,
    required this.title,
    required this.subMenu,

  });
}


