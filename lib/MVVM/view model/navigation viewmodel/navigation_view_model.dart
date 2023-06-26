import 'package:aicte_app/MVVM/model/Navigation%20Model/navigation_model.dart';
import 'package:aicte_app/MVVM/view/Navigation/navigation_menu.dart';
import 'package:aicte_app/repo/navigation_services.dart';
import 'package:aicte_app/utils/enums/navigation_state.dart';
import 'package:flutter/material.dart';




class NavigationViewModel extends ChangeNotifier {
  NavigationState _navigationState = NavigationState.closed;
  NavigationState get navigationState => _navigationState;

  NavigationModel? _selectedMenu;
  NavigationModel? get selectedMenu => _selectedMenu;

  set setSelectedMenu(int i){
    _selectedMenu = navLinks[i];
  }


  set setNavigationState(NavigationState value) {
    _navigationState = value;
    notifyListeners();
  }

  List<NavigationModel> navLinks = NavigationServices().getNavigationMenuItems();

  
}
