import 'package:aicte_app/MVVM/view%20model/navigation%20viewmodel/navigation_view_model.dart';
import 'package:aicte_app/MVVM/view/Homepage/homepage.dart';
import 'package:aicte_app/constants/assets.dart';
import 'package:aicte_app/MVVM/view/Navigation/navigation_menu.dart';
import 'package:aicte_app/utils/enums/navigation_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;

  const AppScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              center: Alignment(1.0375, 0.2287),
              radius: 1.9138,
              colors: [
                Color(0xFF413E37),
                Color(0xFF2B3040),
              ],
            ),
          ),
        ),
        Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              Assets.indianFlag,
              width: MediaQuery.of(context).size.width * 0.4,
            )),
        body,
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.045,
            left: MediaQuery.of(context).size.width * 0.04,
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 2,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: IconButton.filled(
              onPressed: () {
                final navigationViewModel =
                    Provider.of<NavigationViewModel>(context, listen: false);
                switch (navigationViewModel.navigationState) {
                  case NavigationState.closed:
                    print(navigationViewModel.navigationState);
                    Navigator.pushReplacementNamed(
                        context, NavigationMenu.route);
                        navigationViewModel.setNavigationState =
                        NavigationState.menu;
                    break; 

                  case NavigationState.menu:
                    print(navigationViewModel.navigationState);
                    Navigator.pushReplacementNamed(context, Homepage.route);
                    navigationViewModel.setNavigationState =
                        NavigationState.closed;
                    break; 

                  case NavigationState.submenu:
                    print(navigationViewModel.navigationState);
                    Navigator.pushReplacementNamed(
                        context, NavigationMenu.route);
                    navigationViewModel.setNavigationState =
                        NavigationState.menu;
                    break; 
                }
              },
              icon: context.watch<NavigationViewModel>().navigationState ==
                      NavigationState.closed
                  ? const Icon(Icons.menu_rounded)
                  : context.watch<NavigationViewModel>().navigationState ==
                          NavigationState.menu
                      ? const Icon(Icons.close)
                      : const Icon(Icons.arrow_back_ios_new_rounded),
              color: Colors.black,
              style: IconButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: Colors.white,
                shadowColor: Colors.black,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
