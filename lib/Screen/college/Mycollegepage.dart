import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyCOllegePage extends StatefulWidget {
  const MyCOllegePage({super.key});

  @override
  State<MyCOllegePage> createState() => _MyCOllegePageState();
}

class _MyCOllegePageState extends State<MyCOllegePage> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("data"),);
  }
}