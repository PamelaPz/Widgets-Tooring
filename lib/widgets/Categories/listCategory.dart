import 'package:flutter/material.dart';

class ListCategory extends StatelessWidget {
  const ListCategory({
    Key key,
    this.address,
    this.image,
    this.press,
    this.nameUser,
    this.starts,
    this.price,
  }) : super(key: key);

  final String nameUser;
  final String address;
  final String image;
  final double starts;
  final double price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        height: size.height * 0.16,
        width: size.width,
        child: GestureDetector(
          onTap: press,
          child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              width: size.width,
              // height: size.height * 0.16,
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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: size.width / 3.5,
                    height: size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        image: AssetImage(image),
                        alignment: Alignment.center,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 1.75,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$ " + price.toString() + " MX",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.green.shade700,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Icon(Icons.star, color: Colors.amber, size: 17,),
                                  Text(
                                    starts.toString(),
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.amber,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
