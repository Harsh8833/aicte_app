import 'package:aicte_app/MVVM/view/Homepage/homepage.dart';
import 'package:aicte_app/MVVM/view/Navigation/navigation_menu.dart';
import 'package:aicte_app/MVVM/view/Navigation/navigation_submenu.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {
      // splash screen
      case Homepage.route:
        return MaterialPageRoute(
          builder: (_) => const Homepage(),
        );

      case NavigationMenu.route:
        return MaterialPageRoute(
          builder: (_) => const NavigationMenu(),
        );

      case NavigationSubMenu.route:
        return MaterialPageRoute(
          builder: (_) => const NavigationSubMenu(),
        );

      default:
        return _errorRoute();
    }
  }

// handling the error
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => const Scaffold(
        body: Center(
          child: Text('Error: Invalid route'),
        ),
      ),
    );
  }
}
