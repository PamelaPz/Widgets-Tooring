import 'package:flutter/material.dart';

class GroupRadio extends StatefulWidget {
  GroupRadio({Key key}) : super(key: key);

  @override
  _GroupRadioState createState() => _GroupRadioState();
}

class _GroupRadioState extends State<GroupRadio> {
  String selectedPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
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
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Forma de Pago",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tarjeta de débito / crédito",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Radio(
                  value: "Tarjeta de débito / crédito",
                  activeColor: Colors.green.shade700,
                  groupValue: selectedPage,
                  onChanged: (newValue) {
                    setState(() {
                      selectedPage = newValue;
                      print(newValue);
                    });
                  },
                ),
              ],
            ),
          ),
          Divider(
            height: 3,
            color: Colors.grey.shade500,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Efectivo",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Radio(
                  value: "Efectivo",
                  activeColor: Colors.green.shade700,
                  groupValue: selectedPage,
                  onChanged: (newValue) {
                    setState(() {
                      selectedPage = newValue;
                      print(newValue);
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
