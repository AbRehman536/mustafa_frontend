import 'package:flutter/material.dart';

class MenuDemo extends StatelessWidget {
  const MenuDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) { 
              return [
                PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Home"))),
                PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Settings"))),
                PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Profile"))),
                PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Chats"))),
                PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Logout"))),
              ];
            },)
        ],
      ),
      drawer: Drawer(
        child: ListView(children: [
          Container(
            height: 200, width: 500,
              color: Colors.yellow,
              child: DrawerHeader(child: Text("My APP Drawer"))),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),),
          ListTile(
            leading: Icon(Icons.chat_sharp),
            title: Text("Chats"),),
          ListTile(
            onTap: (){
              Navigator.pop(context);
            },
            leading: Icon(Icons.logout),
            title: Text("Logout"),),

        ],),
      ),
      body: Center(child: Text("Click on 3 dots"),),
    );
  }
}
