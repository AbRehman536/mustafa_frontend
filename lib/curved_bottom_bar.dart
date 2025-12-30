import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mustafa_frontend/girdview/gridview_staggered.dart';
import 'package:mustafa_frontend/listTile.dart';
import 'package:mustafa_frontend/text_fields.dart';

class CurvedBottomBarDemo extends StatefulWidget {
  const CurvedBottomBarDemo({super.key});

  @override
  State<CurvedBottomBarDemo> createState() => _CurvedBottomBarDemoState();
}

class _CurvedBottomBarDemoState extends State<CurvedBottomBarDemo> {
  int selectedIndex = 0;
  List<Widget> screenList = [ListTileDemo(), GridviewStaggeredDemo(), Login()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blue,
        buttonBackgroundColor: Colors.white,
        color: Colors.yellow,
        onTap: (value){
          setState(() {
            selectedIndex = value;
          });
        },
          items: [
            Icon(Icons.home),
            Icon(Icons.settings),
            Icon(Icons.person),
            ]),
    );
  }
}
