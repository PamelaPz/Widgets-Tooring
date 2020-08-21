import 'package:flutter/material.dart';

class InputIncrement extends StatefulWidget {
  InputIncrement({Key key}) : super(key: key);

  _InputIncrementState createState() => _InputIncrementState();
}

class _InputIncrementState extends State<InputIncrement> {
  int _counter = 0;

  incremet() {
    setState(() {
      _counter++;
    });
  }

  decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 4,
      height: 35,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 30,
            child: RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 8),
              elevation: 0,
              // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              color: Colors.transparent,
              child: Icon(
                Icons.remove,
                size: 16,
                color: Colors.red.shade300,
              ),
              onPressed: decrement,
            ),
          ),
          Text(
            " $_counter ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Container(
            width: 30,
            child: RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 8),
              elevation: 0,
              // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              color: Colors.transparent,
              child: Icon(
                Icons.add,
                size: 16,
                color: Colors.red.shade300,
              ),
              onPressed: incremet,
            ),
          ),
        ],
      ),
    );
  }
}
