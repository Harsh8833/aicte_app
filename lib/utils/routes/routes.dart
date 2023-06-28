import 'package:aicte_app/MVVM/view/About%20Us/History/history_view.dart';
import 'package:aicte_app/MVVM/view/About%20Us/Leadership%20Team/leadership_team_view.dart';
import 'package:aicte_app/MVVM/view/About%20Us/Messages/messages_view.dart';
import 'package:aicte_app/MVVM/view/About%20Us/Organization%20Structure/organization_structure_view.dart';
import 'package:aicte_app/MVVM/view/About%20Us/Overview/aboutus_overview_view.dart';
import 'package:aicte_app/MVVM/view/Bureaus/Administration/administration_view.dart';
import 'package:aicte_app/MVVM/view/Bureaus/Finance/finance_view.dart';
import 'package:aicte_app/MVVM/view/Bureaus/Overview/bureaus_overview_view.dart';
import 'package:aicte_app/MVVM/view/Bureaus/Regulation/regulation_view.dart';
import 'package:aicte_app/MVVM/view/Bureaus/Scholarships%20&%20Grants/scholarships_and_grants_view.dart';
import 'package:aicte_app/MVVM/view/Homepage/homepage.dart';
import 'package:aicte_app/MVVM/view/Initiatives/Smart%20India%20Hackathon/sih_view.dart';
import 'package:aicte_app/MVVM/view/Navigation/navigation_menu.dart';
import 'package:aicte_app/MVVM/view/Navigation/navigation_submenu.dart';
import 'package:aicte_app/MVVM/view/Opportunities/faculty_opportunities.dart';
import 'package:aicte_app/MVVM/view/Opportunities/institutional_opportunities.dart';
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

      // AboutUs Routes
      case AboutUsOverviewView.route:
        return MaterialPageRoute(
          builder: (_) => const AboutUsOverviewView(),
        );
      case LeadershipTeamView.route:
        return MaterialPageRoute(
          builder: (_) => const LeadershipTeamView(),
        );

      case MessagesView.route:
        return MaterialPageRoute(
          builder: (_) => const MessagesView(),
        );
      case HistoryView.route:
        return MaterialPageRoute(
          builder: (_) => const HistoryView(),
        );
      case OrganizationStructureView.route:
        return MaterialPageRoute(
          builder: (_) => const OrganizationStructureView(),
        );

      // Bureaus Routes
      case BureausOverviewView.route:
        return MaterialPageRoute(
          builder: (_) => const BureausOverviewView(),
        );
      case AdministrationView.route:
        return MaterialPageRoute(
          builder: (_) => const AdministrationView(),
        );

      case ScholarshipsAndGrantsView.route:
        return MaterialPageRoute(
          builder: (_) => const ScholarshipsAndGrantsView(),
        );
      case RegulationView.route:
        return MaterialPageRoute(
          builder: (_) => const RegulationView(),
        );
      case FinanceView.route:
        return MaterialPageRoute(
          builder: (_) => const FinanceView(),
        );

      // Initiatives Routes
      case SIHView.route:
        return MaterialPageRoute(
          builder: (_) => const SIHView(),
        );

      //Opportunities Routes
      case FacultyOpportunities.route:
        return MaterialPageRoute(
          builder: (_) => const FacultyOpportunities(),
        );

      case InstitutionalOpportunities.route:
        return MaterialPageRoute(
          builder: (_) => const InstitutionalOpportunities(),
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
