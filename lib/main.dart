import 'package:flutter/material.dart';
import 'package:tooring/home.dart';
import 'package:tooring/widgets/appBar_img_text.dart';

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
      appBar: AppBarImgText(title: "Pedidos en cola", image: "assets/images/avatar.png",),
      body: Home(),
    );
  }
}
