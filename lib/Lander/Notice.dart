import 'package:flutter/material.dart';


import '../Widgets/Drawer.dart';

class Notice extends StatefulWidget {
  const Notice({super.key});

  @override
  State<Notice> createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(),
      drawer: SafeArea(child: MyDrawer()),
      body: Center(child: Text("I am Notice"),),
    );
  }
}