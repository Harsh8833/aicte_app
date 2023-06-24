import 'package:aicte_app/constants/globals.dart';
import 'package:flutter/material.dart';

class NavTile extends StatefulWidget {
  final String? title;
  final String? route;
  const NavTile({
    required this.title,
    this.route,
    super.key,
  });

  @override
  State<NavTile> createState() => _NavTileState();
}

class _NavTileState extends State<NavTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: const Color(0xFFD9D9D9).withOpacity(0.13),
        child: ListTile(
          onTap: () {
            Navigator.pushReplacementNamed(context, widget.route!);
            setState(() {
              Globals.navOpen = false;
            });
          },
          title: Center(
            child: Text(
              widget.title!,
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
