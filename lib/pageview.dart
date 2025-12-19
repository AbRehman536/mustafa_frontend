import 'package:flutter/material.dart';
import 'package:mustafa_frontend/models/onBoarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageviewDemo extends StatefulWidget {
  const PageviewDemo({super.key});

  @override
  State<PageviewDemo> createState() => _PageviewDemoState();
}

class _PageviewDemoState extends State<PageviewDemo> {
  PageController pageController = PageController();
  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(image: "assets/images/first.jpg", title: "First Page"),
    OnBoardingModel(image: "assets/images/sec.png", title: "Second Page"),
    OnBoardingModel(image: "assets/images/third.png", title: "Third Page"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              itemCount: onBoardingList.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(children: [
                  Image.asset(onBoardingList[index].image.toString()),
                  Text(onBoardingList[index].title.toString(),style: TextStyle(fontSize: 30),),
                ],);
              },),
          ),
          SmoothPageIndicator(
              controller: pageController,  // PageController
              count:  onBoardingList.length,
              effect:  WormEffect(),  // your preferred effect
              onDotClicked: (index){
              }
          ),
          TextButton(onPressed: (){}, child: Text("Skip"))
        ],
      ),
    );
  }
}
