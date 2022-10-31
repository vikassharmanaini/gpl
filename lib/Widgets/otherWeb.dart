import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'Drawer.dart';

class Otherweb extends StatefulWidget {
  const Otherweb({super.key, required this.link});
  final String link;
  @override
  State<Otherweb> createState() => _OtherwebState(link);
}

class _OtherwebState extends State<Otherweb> {
  final String _link;

  _OtherwebState(this._link);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: SafeArea(child: MyDrawer()),
        body: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl:_link,
        ));
  }
}
