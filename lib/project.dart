import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 125.0, left: 21),
              child: Text("Karyana", style: GoogleFonts.kronaOne(
                  fontSize: 28.4, fontWeight: FontWeight.w400
                  ,color: Color(0xffFF5934)
              ),),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 73.0, left: 83),
              child: Text("Retailer App", style: GoogleFonts.inter(
                  fontSize: 11.11, fontWeight: FontWeight.w500
                  ,color: Color(0xff121212)
              ),),
            ),
          ),
          Container(
            color: Colors.white,
            child:
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
              child: Column(
                children: [
                  Text("Welcome to Karyana!", style: GoogleFonts.inter(
                      fontSize: 28, fontWeight: FontWeight.w600
                      ,color: Color(0xff121212)
                  ),),
                  ListTile(
                    leading: Image.asset("assets/images/shopping-cart.png", width: 28,height: 28,),
                    title: Text("We make shopping for your business easier than ever before"),
                  ),
                  ListTile(
                    leading: Image.asset("assets/images/shopping-cart.png"),
                    title: Text("We make shopping for your business easier than ever before"),
                  ),
                  ListTile(
                    leading: Image.asset("assets/images/shopping-cart.png"),
                    title: Text("We make shopping for your business easier than ever before"),
                  ),
                  ListTile(
                    leading: Image.asset("assets/images/shopping-cart.png"),
                    title: Text("We make shopping for your business easier than ever before"),
                  ),
                  ListTile(
                    leading: Image.asset("assets/images/shopping-cart.png"),
                    title: Text("We make shopping for your business easier than ever before"),
                  ),
                  SizedBox(
                    width: 335, height: 56,
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffFF5934),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        )
                        , child: Text("Create Account")),
                  ),
                  SizedBox(
                    width: 335, height: 56,
                    child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffFFFFFF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ), child: Column(children: [
                      Text("Have an account?"),
                      Text("Login")
                    ],)),
                  ),
                ],
              ),
            ),)

        ],
      ),
    );
  }
}
