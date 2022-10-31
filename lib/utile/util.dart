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
    Nav("Mood On", Icons.headset, route.Music)
  ];
  List<Widget> College = [MyCOllegePage(), Statistics(), Personal()];
  List<_mycollegehomepagetile> Mycollegepagetile = [
    _mycollegehomepagetile('assets/BTEUP.png', "BTEUP", "https://bteup.ac.in/webapp/defaultnew.aspx"),
    _mycollegehomepagetile('assets/urise.png', "URISE", "https://urise.up.gov.in/"),
    _mycollegehomepagetile('assets/aicte.jpeg', "AICTE", "https://www.aicte-india.org/"),
    _mycollegehomepagetile('assets/swayam.jpeg', "Swayam", "https://swayam.gov.in/")
  ];
}

class _mycollegehomepagetile {
  final String imgsrc;
  final String title;
  final String url;

  _mycollegehomepagetile(this.imgsrc, this.title, this.url);
}
