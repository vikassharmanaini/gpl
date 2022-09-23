import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NavList extends StatelessWidget {
  const NavList(
      {super.key,
      required this.Title,
      required this.icon,
      required this.pushScreen});

  final String Title;
  final IconData icon;
  final String pushScreen;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      iconColor: Color(0xFFFFFFFF),
      textColor: Color(0xFFFFFFFF),
      title: Text(Title),
      leading: Icon(icon),
      onTap: (() {
        Navigator.pop(context);
        Navigator.pop(context);
        Navigator.pushNamed(context, pushScreen);
      }),
    );
  }
}
