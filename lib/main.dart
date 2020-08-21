import 'package:flutter/material.dart';
import 'package:tooring/widgets/appBar_icon_text.dart';
import 'package:tooring/widgets/appBar_img_text.dart';
// import 'package:tooring/body.dart';

import 'order.dart';

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
      appBar: AppBarImgText(title: "Pedidos en cola", image: "assets/images/avatar.png",),
      body: Order(),
    );
  }
}
