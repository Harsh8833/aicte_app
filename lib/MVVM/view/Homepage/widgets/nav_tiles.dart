import 'package:aicte_app/MVVM/view%20model/navigation%20viewmodel/navigation_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class NavTile extends StatelessWidget {
  final int index;
  const NavTile({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: const Color(0xFFD9D9D9).withOpacity(0.13),
        child: ListTile(
          onTap: () {
            Navigator.pushReplacementNamed(context, context.read<NavigationViewModel>().navLinks[index]['route'].toString());
          },
          title: Center(
            child: Text(
              context.read<NavigationViewModel>().navLinks[index]['title'].toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
