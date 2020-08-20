import 'package:flutter/material.dart';

class ButtonsAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.08,
      color: Colors.red,
    );
  }
}
