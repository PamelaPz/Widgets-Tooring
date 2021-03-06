import 'package:flutter/material.dart';

class CardFood extends StatelessWidget {
  const CardFood({
    Key key,
    this.name,
    this.comments,
    this.price,
    this.image,
  }) : super(key: key);

  final String name;
  final String comments;
  final double price;
  final String image;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.only(bottom: 10, top: 10),
        width: size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: size.width / 1.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Comentarios: " + comments,
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "\$ " + price.toString() + " MX",
                    style:
                        TextStyle(color: Colors.green.shade700, fontSize: 14),
                  ),
                ],
              ),
            ),
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(image),
            ),
          ],
        ));
  }
}
