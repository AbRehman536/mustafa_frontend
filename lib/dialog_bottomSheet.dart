import 'package:flutter/material.dart';

class DialogBottomsheet extends StatelessWidget {
  const DialogBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post"),
      ),
      body: Column(children: [
        ElevatedButton(onPressed: (){
          showDialog(
            barrierDismissible: false,
              context: context,
            builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Thank You!"),
                  content: Text("Login Succesfully"),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("NO")),
                    TextButton(onPressed: (){}, child: Text("Yes")),
                  ],
                );
            }, );
        }, child: Text("Show Dialog Box")),
        ElevatedButton(onPressed: (){
          showModalBottomSheet(
            isDismissible: false,
              context: context,
            builder: (BuildContext context) {
                return Column(children: [
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Profile"),
                  )
                ],);
            }, );
        }, child: Text("Show Bottom Sheet"))
      ],),
    );
  }
}
