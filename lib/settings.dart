import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSwitchON = false;
  double selectedValue = 20;
  List<String> itemList = ["Flutter", "Web", "UI/UX"];
  String? selectedItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Column(children: [
        ListTile(
          leading: (isSwitchON ? Icon(Icons.notifications) : Icon(Icons.notifications_none)),
          title: Text("Notifications"),
          subtitle: Text(isSwitchON ? "ON" : "OFF"),
          trailing: CupertinoSwitch(
            activeColor: Colors.blue,
              inactiveTrackColor: Colors.red,
              thumbColor: Colors.black,
              value: isSwitchON,
              onChanged: (val){
                setState(() {
                  isSwitchON = val;
                });
              }),
        ),
        Slider(
            value: selectedValue,
            min: 0, max: 100,
            divisions: 100,
            label: selectedValue.round().toString(),
            onChanged: (value){
              setState(() {
                selectedValue = value;
              });
            }),
        Pinput(
          length: 6,
          showCursor: true,
          onCompleted: (value){
            print(value);
          },
          defaultPinTheme: PinTheme(
            width: 50, height: 50,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black)
            ),
            textStyle: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w900,
              color: Colors.red
            )
          ),
        ),
        DropdownButton<String>(
          hint: Text("Select Item"),
            value: selectedItem,
            items: itemList.map(( String item){
              return DropdownMenuItem(
                value: item,
                  child: Text(item.toString()));
            }).toList(),
            onChanged: (String? value){
            setState(() {
              selectedItem = value;
            });
            })
      ],),
    );
  }
}
