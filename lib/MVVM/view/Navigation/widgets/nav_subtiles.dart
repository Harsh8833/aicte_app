import 'dart:developer';

import 'package:aicte_app/MVVM/view%20model/navigation%20viewmodel/navigation_view_model.dart';
import 'package:aicte_app/MVVM/view/Homepage/homepage.dart';
import 'package:aicte_app/MVVM/view/Navigation/navigation_submenu.dart';
import 'package:aicte_app/utils/enums/navigation_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class NavSubTile extends StatelessWidget {
  final int index;
  const NavSubTile({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Theme.of(context).colorScheme.background,
        child: ListTile(
          onTap: () {
            context.read<NavigationViewModel>().setNavigationState = NavigationState.closed;
            Navigator.pushNamed(context, context.read<NavigationViewModel>().selectedMenu!.subMenu[index].route);
            
          },
          title: Center(
            child: Text(
              context.read<NavigationViewModel>().selectedMenu!.subMenu[index].title.toString(),
              style:  TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
