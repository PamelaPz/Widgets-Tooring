import 'package:flutter/material.dart';

class CardOrderLeft extends StatelessWidget {
  const CardOrderLeft({
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
              right: 0,
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
                        offset: Offset(2, 6), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(90, 10, 16, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          nameUser,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                            height: 38.5,
                            child: RichText(
                              textAlign: TextAlign.right,
                              text: new TextSpan(
                                style: new TextStyle(
                                  fontSize: 11,
                                  color: Colors.grey,
                                ),
                                children: <TextSpan>[
                                  new TextSpan(
                                      text: 'Dirección',
                                      style: new TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  new TextSpan(text: address),
                                ],
                              ),
                            )),
                        SizedBox(height: 8),
                        Text(
                          codeOrder.toString(),
                          textAlign: TextAlign.right,
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
              left: 0,
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
