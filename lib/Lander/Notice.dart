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
      body: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.all(10),
          child: ListTile(
              leading: Icon(Icons.notifications_active),
              title: Text("data : ${index + 1}"),
              trailing: Text(DateTime.now().toString().split(" ").first),
              onTap: () => showDialog(
                  context: context,
                  builder: (context) => _makedialog(index.toString()))),
        ),
        itemCount: 7,
      ),
    );
  }

  Widget _makedialog(String id) {
    return Dialog(
      elevation: 1,
      child: Container(
        height: 100,
        child: ListView(
          children: [
            Title(color: Colors.brown, child: Text("titlle | $id")),
            Text("hj")
          ],
        ),
      ),
    );
  }
}
