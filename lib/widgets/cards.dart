import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({
    Key key,
    this.name,
    this.description,
    this.stars,
    this.price,
    this.image,
    this.press,
  }) : super(key: key);

  final String name;
  final String description;
  final double stars;
  final String image;
  final double price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        // margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        height: size.height * 0.16,
        width: size.width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                left: 0,
                child: GestureDetector(
                  onTap: press,
                  child: Container(
                    margin: EdgeInsets.only(top: 6),
                    width: size.width / 1.2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 6,
                          offset: Offset(2, 6),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(15, 10, 90, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
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
                              Text(
                                '\$ ' + price.toString() + ' MX',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.green.shade800,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow.shade700,
                                    size: 16,
                                  ),
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
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            Positioned(
              right: 0,
              child: Container(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(image),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
