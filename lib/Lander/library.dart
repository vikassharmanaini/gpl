import 'package:flutter/material.dart';
import '../Widgets/Drawer.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: SafeArea(child: MyDrawer()),
      body: Center(child: Text("I am library"),),
    );
  }
}