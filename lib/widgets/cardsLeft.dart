import 'package:flutter/material.dart';

class CardsLeft extends StatelessWidget {
  const CardsLeft({
    Key key, this.name, this.description, this.stars, this.price, this.image, this.press,
  }): super(key: key);

  final String name;
  final String description;
  final double stars;
  final String image;
  final double price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            child: GestureDetector(
              onTap: press,
              child: Container(
                margin: EdgeInsets.only(top: 15),
                width: size.width / 1.2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 6,
                      offset: Offset(2, 8), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(90, 10, 15, 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          name, 
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          height: 35,
                          child: Text(
                            description,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.yellow.shade700, size: 16,),
                                SizedBox(width: 5),
                                Text(
                                  stars.toString(),
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.yellow.shade700,
                                  ),
                                )
                              ],
                            ),
                            Text(
                              '\$ ' +  price.toString() + ' MX',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.green.shade800,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 220),
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(image),
            ),
          ),
        ],
      ),
    );
  }
}