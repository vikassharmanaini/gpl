import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:gpl/Widgets/Drawer.dart';
import 'package:gpl/utile/util.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  int _ind = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
              icon: Icon(Icons.north_east_outlined))
        ],
        iconTheme: const IconThemeData(color: Color(0xFF1F1F1F)),
      ),
      drawer: SafeArea(child: MyDrawer()),
      body: util().wd[_ind],
      bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          buttonBackgroundColor: Colors.orange,
          color: Colors.blue,
          backgroundColor: Colors.blueGrey,
          items: <Widget>[
            Icon(
              Icons.school,
              size: 35,
              color: Colors.white,
              semanticLabel: "College",
            ),
            Icon(
              Icons.book,
              size: 35,
              color: Colors.white,
            ),
            Icon(
              Icons.stacked_bar_chart_sharp,
              size: 35,
              color: Colors.white,
            ),
            Icon(
              Icons.person,
              size: 35,
              color: Colors.white,
            ),
          ],
          onTap: (index) {
            setState(() {
              _ind = index;
            });
            //Handle button tap
          }),
    );
  }
}
