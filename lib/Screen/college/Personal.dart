import 'package:flutter/material.dart';
import 'package:gpl/Widgets/profileeditor.dart';

class Personal extends StatefulWidget {
  const Personal({super.key});

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFFFFFFF),
                  offset: const Offset(
                    5.0,
                    5.0,
                  ),
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                ),
                BoxShadow(
                  color: Color.fromARGB(52, 5, 5, 5),
                  offset: const Offset(0.0, 0.0),
                  blurRadius: 5.0,
                  spreadRadius: 0.0,
                ),
                BoxShadow(
                  color: Color(0x751B1D1C),
                  offset: const Offset(
                    5.0,
                    5.0,
                  ),
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                ),
              ],
            ),
          ),
          Expanded(
              child: Stack(
            children: [
              Expanded(
                  child: ListView.builder(
                      itemBuilder: ((context, index) => ListTile(
                            title: Text("$index"),
                          )),
                      itemCount: 10)),
              Positioned(
                  right: 10,
                  bottom: 50,
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileEditor()));
                    },
                    child: Icon(Icons.edit_outlined),
                  ))
            ],
          ))
        ],
      ),
    );
  }
}
