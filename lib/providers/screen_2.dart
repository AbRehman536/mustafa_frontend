import 'package:flutter/material.dart';
import 'package:mustafa_frontend/providers/user_provider.dart';
import 'package:provider/provider.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
      ),
      body: Column(
        children: [
          Text(userProvider.getName().toString()),
          Text(userProvider.getEmail().toString()),
          ElevatedButton(onPressed: (){}, child: Text("Go Back"))
        ],
      ),
    );
  }
}
