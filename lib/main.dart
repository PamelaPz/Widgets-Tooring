import 'package:flutter/material.dart';
import 'package:tooring/categories.dart';
import 'package:tooring/detailsOrder.dart';
import 'package:tooring/widgets/Home/searchBar.dart';
import 'package:tooring/widgets/appBar_icon_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tooring',
      debugShowCheckedModeBanner: false,
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Categories(),
    );
  }
}
