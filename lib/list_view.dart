import 'package:flutter/material.dart';
import 'package:list_view/circle.dart';
import 'package:list_view/square.dart';

class MyListView extends StatelessWidget {
  MyListView({Key? key}) : super(key: key);

  final List _posts = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
    'post 5',
  ];

  final List _stories = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
    'post 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _posts.length,
              itemBuilder: (context, index) {
                return MyCirle(
                  child: _stories[index],
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (context, index) {
                return MySquare(
                  child: _posts[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}// TODO Implement this library.