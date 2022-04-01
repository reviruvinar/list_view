import 'dart:html';
import 'dart:math';
import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  final List<Container> myList = List.generate(60, (index) {
    return Container(
      height: 50,
      width: 100,
      color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256),
          Random().nextInt(256)),
    );
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
        centerTitle: true,
      ),
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 10,
        ),
        children: myList,
      ),
    );
  }
}
