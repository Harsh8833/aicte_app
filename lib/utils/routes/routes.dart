import 'package:aicte_app/MVVM/view/Homepage/homepage.dart';
import 'package:aicte_app/MVVM/view/Navigation/navscreen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      // splash screen
      case Homepage.route:
        return MaterialPageRoute(
          builder: (_) => const Homepage(),
        );

      case NavScreen.route:
        return MaterialPageRoute(
          builder: (_) => NavScreen(),
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
