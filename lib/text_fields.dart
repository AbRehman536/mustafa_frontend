import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(children: [
        Text("Login Page"),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: emailController,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey,
              label: Text("Email"),
              hint: Text("abdullah@gmail.com"),
              prefixIcon: Icon(Icons.email),
              suffixIcon: Icon(Icons.account_balance),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none
              )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: passwordController,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey,
              label: Text("Password"),
              hint: Text("123456578"),
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.visibility),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none
                )
            ),
          ),
        ),
        ElevatedButton(onPressed: (){
          if(emailController.text.isEmpty){
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("Email is Empty")));
            return;
          }
          if(passwordController.text.isEmpty){
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("Password is Empty")));
            return;
          }
          if(passwordController.text.length < 8){
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("Password must be more than 8 digits")));
            return;
          }
        }, child: Text("Login")),
        Text("Don't have Account ? "),
        TextButton(onPressed: (){}, child: Text("Sign Up"))
      ],),
    );
  }
}
