import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          leading: Icon(Icons.arrow_back_ios_new_sharp),
          title: Text("TabBar"),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Container(
              height: 80,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBar(
                  isScrollable: true,
                  labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey,
                    indicator: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                  Tab(icon: Icon(Icons.home), text: "Home",),
                  Tab(icon: Icon(Icons.settings), text: "Settings",),
                  Tab(icon: Icon(Icons.person), text: "Profile",),
                  Tab(icon: Icon(Icons.home), text: "Home",),
                  Tab(icon: Icon(Icons.settings), text: "Settings",),
                  Tab(icon: Icon(Icons.person), text: "Profile",),
                  Tab(icon: Icon(Icons.home), text: "Home",),
                  Tab(icon: Icon(Icons.settings), text: "Settings",),
                  Tab(icon: Icon(Icons.person), text: "Profile",),
                ]),
              ),
            ),
          ),
        ),
        body: TabBarView(children: [
          Center(child: Column(
            children: [
              Text("Home"),
              Icon(Icons.home)
            ],
          ),),
          Center(child: Image.asset("assets/images/first.jpg"),),
          Center(child: Icon(Icons.person, size: 40,),)
        ]),
      ),
    );
  }
}
