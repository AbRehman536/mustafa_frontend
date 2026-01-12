import 'package:flutter/material.dart';

class SelectionDemo extends StatefulWidget {
  const SelectionDemo({super.key});

  @override
  State<SelectionDemo> createState() => _SelectionDemoState();
}

class _SelectionDemoState extends State<SelectionDemo> {
  String selectedGender = "Male";
  List<String> selectedSkills = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Selections"),
      ),
      body: Column(children: [
        RadioListTile(
            title: Text("Male"),
            value: "Male",
          groupValue: selectedGender,
          onChanged: (value){
              setState(() {
                selectedGender = value!;
              });
          },
        ),
        RadioListTile(
            title: Text("Female"),
            value: "Female",
          groupValue: selectedGender,
          onChanged: (value){
              setState(() {
                selectedGender = value!;
              });
          },
        ),
        CheckboxListTile(
          title: Text("Flutter"),
            value: selectedSkills.contains("Flutter"),
            onChanged: (value){
            setState(() {
              if(value!){
                selectedSkills.add("Flutter");
              }else {
                selectedSkills.remove("Flutter");
              }
            });
            }),
        CheckboxListTile(
          title: Text("Web"),
            value: selectedSkills.contains("Web"),
            onChanged: (value){
            setState(() {
              if(value!){
                selectedSkills.add("Web");
              }else {
                selectedSkills.remove("Web");
              }
            });
            }),
        CheckboxListTile(
          title: Text("UI/UX"),
            value: selectedSkills.contains("UI/UX"),
            onChanged: (value){
            setState(() {
              if(value!){
                selectedSkills.add("UI/UX");
              }else {
                selectedSkills.remove("UI/UX");
              }
            });
            }),
        Text("$selectedSkills")
      ],),
    );
  }
}
