import 'package:flutter/material.dart';
import 'package:mustafa_frontend/models/listtileModels.dart';

class ListTileDemo extends StatefulWidget {
  const ListTileDemo({super.key});

  @override
  State<ListTileDemo> createState() => _ListTileDemoState();
}

class _ListTileDemoState extends State<ListTileDemo> {
  List<ListTileModel> screenList = [
    ListTileModel(name: "Mustafa", message: "How are You?"),
    ListTileModel(name: "Abdullah", message: "Hello"),
    ListTileModel(name: "Ahmed", message: "Hello, How are You?"),
    ListTileModel(name: "ALi", message: "How are You?"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        backgroundColor: Colors.lightGreenAccent,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: screenList.length,
        itemBuilder: (BuildContext context, int index) {
          return
          Card(
            color: Colors.white70,
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text(screenList[index].name.toString()),
              subtitle: Text(screenList[index].message.toString()),
              trailing: Text("12/17/2025"),
            ),
          );
        },
      ),
    );
  }
}
