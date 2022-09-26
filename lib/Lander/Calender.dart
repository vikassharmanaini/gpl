import 'package:calendar_builder/calendar_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Widgets/Drawer.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xEFB3B2B2),
      ),
      drawer: SafeArea(child: MyDrawer()),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xFF002B41),
          Color(0xFF494949),
          Color(0x6F4B2200)
        ], begin: Alignment.topLeft)),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: CbMonthBuilder(
                  cbConfig: CbConfig(
                    startDate: DateTime(2015),
                    endDate: DateTime(2026),
                    selectedDate: DateTime.now(),
                    selectedYear: DateTime(DateTime.now().year),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
