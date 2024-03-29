import 'package:flutter/material.dart';
import 'package:list_view/grid_view.dart';
import 'package:list_view/list_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyGridView(),
    );
  }
}
