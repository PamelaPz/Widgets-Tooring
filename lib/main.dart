import 'package:flutter/material.dart';
import 'package:tooring/body.dart';
// import 'package:tooring/widgets/cards.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medi Time',
      // debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tooring'),),
      body: Body(),
    );
  }
}