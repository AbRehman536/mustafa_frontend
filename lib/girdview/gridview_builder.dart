import 'package:flutter/material.dart';

class GridviewBuilderDemo extends StatelessWidget {
  const GridviewBuilderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                crossAxisSpacing: 20,mainAxisSpacing: 20,
            mainAxisExtent: 200, maxCrossAxisExtent: 100
            ),
          itemCount: 40,
          itemBuilder: (BuildContext context, int index) {
              return Container(color: Colors.red,);
          },)
      ),
    );
  }
}
