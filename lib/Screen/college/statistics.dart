import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Statistics extends StatefulWidget {
  const Statistics({super.key});

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 200,
      child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: ListTile(
                  onTap: () => showBottomSheet(
                      context: context,
                      builder: (context) => _attedndence(context)),
                  shape: Border(
                      top: BorderSide(color: Color(0x97000000)),
                      bottom: BorderSide(color: Colors.black),
                      left: BorderSide(color: Color(0x96000000)),
                      right: BorderSide(color: Colors.black)),
                  tileColor: Colors.white,
                  leading: Icon(Icons.receipt_outlined),
                  title: Text("Subject ${index + 1}"),
                ),
              )),
    );
  }

  Widget _attedndence(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width - 20,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xFF525C57),
            offset: const Offset(
              5.0,
              5.0,
            ),
            blurRadius: 10.0,
            spreadRadius: 1.0,
          ),
          BoxShadow(
            color: Colors.white,
            offset: const Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ), 
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Title(
              color: Colors.black,
              child: Text(
                "Subject Name",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SfCalendar(
            view: CalendarView.month,
          )
        ],
      ),
    );
  }
}
