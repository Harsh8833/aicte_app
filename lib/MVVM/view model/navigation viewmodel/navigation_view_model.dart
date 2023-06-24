import 'package:aicte_app/MVVM/model/Navigation%20Model/navigation_model.dart';
import 'package:aicte_app/repo/navigation_services.dart';
import 'package:flutter/material.dart';




class NavigationViewModel extends ChangeNotifier {
  bool _isDrawerOpen = false;
  bool get isDrawerOpen => _isDrawerOpen;
  set setDrawerOpen(bool value) {
    _isDrawerOpen = value;
    notifyListeners();
  }

  List<NavigationModel> navLinks = NavigationServices().getNavigationMenuItems();

  
}
