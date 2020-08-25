import 'package:flutter/material.dart';

class CategoriesFull extends StatelessWidget {
  const CategoriesFull({
    Key key,
    this.image,
    this.press,
    this.name,
  }) : super(key: key);

  final String name;
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 4.25,
      width: size.width,
      margin: EdgeInsets.only(bottom: 10),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              // padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
              width: size.width / 1.3,
              height: size.height * 0.04,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(2, 4),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: 15
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: GestureDetector(
              onTap: press,
              child: Container(
                width: size.width,
                height: size.height * 0.19,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image(
                    image: AssetImage(image),
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
