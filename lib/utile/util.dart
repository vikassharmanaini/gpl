import 'package:flutter/material.dart';
import 'package:gpl/Screen/college/Personal.dart';
import 'package:gpl/Screen/college/Sylllabus.dart';
import 'package:gpl/Screen/college/Mycollegepage.dart';
import 'package:gpl/Screen/college/statistics.dart';
import 'package:gpl/utile/router.dart';

class Nav {
  final String name;
  final IconData ic;
  final String push;
  Nav(this.name, this.ic, this.push);
}

class util {
  List<Nav> navlist = [
    Nav("My College", Icons.backpack, route.College),
    Nav("My E-library", Icons.local_library_rounded, route.Library),
    Nav("Quick Connect", Icons.telegram_outlined, route.Connect),
    Nav("Notice", Icons.notifications_on_rounded, route.Notice),
    Nav("News Papper", Icons.newspaper, route.NewsPaper),
    Nav("E-Calender", Icons.calendar_month, route.Calender),
    Nav("College Location", Icons.location_pin, route.Location),
    Nav("College Website", Icons.web, route.Website),
    Nav("Mood On", Icons.music_note_rounded, route.Music)
  ];
  List<Widget> wd = [
    MyCOllegePage(),Syllabus(),Statistics(),Personal()
  ];
}
