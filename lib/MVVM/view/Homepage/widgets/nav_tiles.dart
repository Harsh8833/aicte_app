import 'package:flutter/material.dart';


class NavTile extends StatelessWidget {
  final String? title;
  final String? route;
  const NavTile({
    required this.title,
    this.route,
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
            Navigator.pushReplacementNamed(context, route!);
          },
          title: Center(
            child: Text(
              title!,
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
