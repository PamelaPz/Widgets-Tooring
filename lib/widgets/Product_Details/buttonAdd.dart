import 'package:flutter/material.dart';

class ButtonAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 2.8,
      child: RaisedButton(
        padding: EdgeInsets.symmetric(vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.red.shade300,
        child: Text(
          "Agregar",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
