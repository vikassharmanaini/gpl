import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Widgets/Drawer.dart';

class Connect extends StatefulWidget {
  const Connect({super.key});

  @override
  State<Connect> createState() => _ConnectState();
}

class _ConnectState extends State<Connect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: SafeArea(child: MyDrawer()),
        body: Column(
          children: [
            Expanded(child: Center()),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(5),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30)))),
                  ),
                )),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.send_rounded),
                )
              ],
            ),
          ],
        )
        // bottomNavigationBar: Row(
        //   children: [
        //     Expanded(child: TextField()),
        //     FloatingActionButton(
        //       onPressed: () {},
        //       child: Icon(Icons.send_rounded),
        //     )
        //   ],
        // ),
        );
  }
}
