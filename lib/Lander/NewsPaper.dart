import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Widgets/Drawer.dart';

class NewsPapper extends StatefulWidget {
  const NewsPapper({super.key});

  @override
  State<NewsPapper> createState() => _NewsPapperState();
}

class _NewsPapperState extends State<NewsPapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(),
      drawer: SafeArea(child: MyDrawer()),
      body: Center(child: Text("I am News"),),
    );
  }
}