import 'package:flutter/material.dart';
import 'package:mustafa_frontend/provider/screen_b.dart';
import 'package:provider/provider.dart';

import '../providers/user_provider.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});


  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen A"),
      ),
      body: Center(child: ElevatedButton(onPressed: (){
        userProvider.setName("Mohib");
        userProvider.setEmail("mohib@gmail.com");
        Navigator.push(context, MaterialPageRoute(builder: (context)=> ScreenB()));
      }, child: Text("Show next screen")),),
    );
  }
}
