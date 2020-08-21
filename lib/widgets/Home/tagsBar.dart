import 'package:flutter/material.dart';

class TagsBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: size.width,
      height: size.height * 0.04,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          TagBar(
            text: "Mas vendidos",
          ),
          TagBar(
            text: "Últimos pedidos",
          ),
          TagBar(
            text: "Mejores Valorados",
          ),
        ],
      )
    );
  }
}

class TagBar extends StatelessWidget {
  const TagBar({
    Key key, this.text,
  }): super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 2.8,
      height: size.height,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text, 
        style: TextStyle(
          fontSize: 12
        ),
      ),
    );
  }
}
