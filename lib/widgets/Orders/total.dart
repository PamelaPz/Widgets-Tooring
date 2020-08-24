import 'package:flutter/material.dart';

class Total extends StatelessWidget {
  const Total({
    Key key, this.total,
  }) : super(key: key);

  final double total;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(2, 4),
          )
        ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Total",
            style: TextStyle(
              fontSize: 20,
              color: Colors.red.shade400,
              fontWeight: FontWeight.bold),
          ),
          Text(
            "\$" + total.toString(),
            style: TextStyle(
              fontSize: 18,
              color: Colors.green.shade700,
            ),
          ),
        ],
      ),
    );
  }
}
