import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gpl/Widgets/navlist.dart';
import 'package:gpl/utile/Detail.dart';
import 'package:gpl/utile/util.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blueAccent, Color(0xFF00378A)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: UserAccountsDrawerHeader(
                accountName: Text(
                  Data.name,
                  style: TextStyle(
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.w800,
                      fontSize: 16),
                ),
                accountEmail:
                    Text(Data.email, style: TextStyle(color: Colors.orange)),
                currentAccountPicture: CircleAvatar(),
                decoration: BoxDecoration(color: Color(0x00FFC107)),
              ),
            ),
            Divider(
              color: Colors.indigoAccent,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: util().navlist.length,
                itemBuilder: (context, index) {
                  return NavList(
                      Title: util().navlist.elementAt(index).name,
                      icon: util().navlist.elementAt(index).ic,
                      pushScreen: util().navlist.elementAt(index).push);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 50, top: 10),
              child: FloatingActionButton.extended(
                  onPressed: () {},
                  label: Text(
                    "Log out",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
