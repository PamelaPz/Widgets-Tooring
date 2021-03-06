import 'package:flutter/material.dart';

class CardOrder extends StatelessWidget {
  const CardOrder({
    Key key,
    this.address,
    this.image,
    this.press,
    this.codeOrder,
    this.nameUser,
  }) : super(key: key);

  final String nameUser;
  final String address;
  final String image;
  final int codeOrder;
  final Function press;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                  margin: EdgeInsets.only(top: 8),
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
                          nameUser,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          height: 38.5,
                          child: RichText(
                            text: new TextSpan(
                              style: new TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                              ),
                              children: <TextSpan>[
                                new TextSpan(
                                    text: 'Dirección: ',
                                    style: new TextStyle(
                                        fontWeight: FontWeight.bold)),
                                new TextSpan(text: address),
                              ],
                            ),
                        )),
                        SizedBox(height: 8),
                        Text(
                          codeOrder.toString(),
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.amber,
                              fontWeight: FontWeight.bold),
                        ),
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
