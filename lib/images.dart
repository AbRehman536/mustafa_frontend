import 'package:flutter/material.dart';

class ImagesDemo extends StatelessWidget {
  const ImagesDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images"),
        backgroundColor: Colors.blue,
      ),
      body: Column(children: [
        CircleAvatar(
          radius: 70,
          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFB5xe4Iy7gVXfERcCJ_T_fefCpoiQunvkng&s"),
        ),
        ClipOval(
            child: Image.asset("assets/images/first.jpg")),
        ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset("assets/images/first.jpg"))
      ],),
    );
  }
}
