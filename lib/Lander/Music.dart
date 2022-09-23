import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Widgets/Drawer.dart';

class Music extends StatefulWidget {
  const Music({super.key});

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(),
      drawer: SafeArea(child: MyDrawer()),
      body: Center(child: Text("I am Music"),),
    );
  }
}