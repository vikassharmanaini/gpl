import 'package:flutter/material.dart';
import 'package:gpl/Lander/Calender.dart';
import 'package:gpl/Lander/Connect.dart';
import 'package:gpl/Lander/Location.dart';
import 'package:gpl/Lander/Music.dart';
import 'package:gpl/Lander/NewsPaper.dart';
import 'package:gpl/Lander/Notice.dart';
import 'package:gpl/Lander/college.dart';
import 'package:gpl/Lander/library.dart';
import 'package:gpl/Lander/web.dart';
import 'package:gpl/utile/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.orange,
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              elevation: 0.2,
              centerTitle: true,
              actionsIconTheme: IconThemeData(color: Colors.grey)),
          drawerTheme: DrawerThemeData(backgroundColor: Colors.orangeAccent)),
      debugShowCheckedModeBanner: false,
      initialRoute: route.College,
     routes: {
      route.College :(context) => Home(),
      route.Library:(context) => Library(),
      route.Connect:(context) => Connect(),
      route.Notice :(context) => Notice(),
      route.NewsPaper :(context) => NewsPapper(),
      route.Calender :(context) => Calender(),
      route.Location:(context) => Location(),
      route.Website :(context) => Web(),
      route.Music:(context) => Music(),
     },
    );
  }
}
