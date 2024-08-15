import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildText("Home"),
          buildText("Profile"),
          buildText("Settings"),
        ],
      ),
    );
  }

  buildText(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 30,
      ),
    );
  }
}
