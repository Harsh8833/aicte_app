import 'package:aicte_app/MVVM/model/Navigation%20Model/navigation_model.dart';
import 'package:aicte_app/MVVM/model/Navigation%20Model/submenu.dart';
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
import 'package:aicte_app/MVVM/view/Initiatives/Smart%20India%20Hackathon/sih_view.dart';
import 'package:aicte_app/MVVM/view/Opportunities/faculty_opportunities.dart';
import 'package:aicte_app/MVVM/view/Opportunities/institutional_opportunities.dart';
import 'package:aicte_app/MVVM/view/Opportunities/student_opportunities.dart';
import 'package:aicte_app/utils/enums/navlinks.dart';

class NavigationServices {
  List<NavigationModel> getNavigationMenuItems() {
    return [
      NavigationModel(
        navLink: NavLinks.aboutUs,
        title: "ABOUT US",
        subMenu: [
          SubMenu(title: "Overview", route: AboutUsOverviewView.route),
          SubMenu(title: "Leadership Team", route: LeadershipTeamView.route),
          SubMenu(title: "Messages", route: MessagesView.route),
          SubMenu(title: "History", route: HistoryView.route),
          SubMenu(
              title: "Organization Structure",
              route: OrganizationStructureView.route)
        ],
      ),
      // NavigationModel(
      //   navLink: NavLinks.newsRoom,
      //   title: "NEWSROOM",
      //   subMenu: [],
      // ),
      NavigationModel(
        navLink: NavLinks.bureaus,
        title: "BUREAUS",
        subMenu: [
          SubMenu(title: "Overview", route: BureausOverviewView.route),
          SubMenu(title: "Administration", route: AdministrationView.route),
          SubMenu(
              title: "Scholarships & Grant",
              route: ScholarshipsAndGrantsView.route),
          SubMenu(title: "Regulation", route: RegulationView.route),
          SubMenu(title: "Finance", route: FinanceView.route)
        ],
      ),
      NavigationModel(
          navLink: NavLinks.initiatives,
          title: "INITIATIVES",
          subMenu: [
            SubMenu(title: "Overview", route: BureausOverviewView.route),
            SubMenu(title: "Startup Contest", route: AdministrationView.route),
            SubMenu(
                title: "AICTE Internship Portal",
                route: ScholarshipsAndGrantsView.route),
            SubMenu(title: "Smart India Hackathon", route: SIHView.route),
            SubMenu(title: "Jal Shakti Abhiyan", route: FinanceView.route)
          ]),
      // NavigationModel(
      //   navLink: NavLinks.schemes,
      //   title: "SCHEMES",
      //   subMenu: [],
      // ),
      // NavigationModel(
      //   navLink: NavLinks.education,
      //   title: "EDUCATION",
      //   subMenu: [],
      // ),
      NavigationModel(
        navLink: NavLinks.opportunities,
        title: "OPPORTUNITIES",
        subMenu: [
          SubMenu(title: "For Faculty", route: FacultyOpportunities.route),
          SubMenu(title: "For Students", route: StudentOpportunities.route),
          SubMenu(
              title: "For Institution",
              route: InstitutionalOpportunities.route),
        ],
      ),
      // NavigationModel(
      //   navLink: NavLinks.statistics,
      //   title: "STATISTICS",
      //   subMenu: [],
      // ),
      // NavigationModel(
      //   navLink: NavLinks.bulletins,
      //   title: "BULLETINS",
      //   subMenu: [],
      // ),
    ];
  }
}
