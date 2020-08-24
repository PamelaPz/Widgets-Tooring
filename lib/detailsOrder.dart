import 'package:flutter/material.dart';
import 'widgets/Orders/cardFood.dart';
import 'widgets/Orders/cardFoodLeft.dart';
import 'widgets/Orders/total.dart';
import 'widgets/Orders/userDataHeader.dart';
import 'widgets/Product_Details/groupRadio.dart';

class DetailsOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            UserDataHeader(
              nameUser: "Nombre de Usuario",
              numOrder: "No. de pedido",
              address:
                  "Lorem ipsum dolor sit amet. Quisque mollis maximus interdum.",
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                width: size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: Offset(2, 4),
                      )
                    ]),
                child: Column(
                  children: [
                    CardFood(
                      name: "Nombre del platillo",
                      comments: "Sin lechuga, sin cebolla, extra queso.",
                      image: "assets/images/pizza.jpg",
                      price: 200,
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 2,
                    ),
                    CardFoodLeft(
                      name: "Nombre del platillo",
                      comments:
                          "Lorem ipsum dolor sit amet. Quisque mollis maximus interdum.",
                      image: "assets/images/pizza.jpg",
                      price: 200,
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 2,
                    ),
                    CardFood(
                      name: "Nombre del platillo",
                      comments:
                          "Lorem ipsum dolor sit amet. Quisque mollis maximus interdum.",
                      image: "assets/images/pizza.jpg",
                      price: 200,
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 2,
                    ),
                    CardFoodLeft(
                      name: "Nombre del platillo",
                      comments:
                          "Lorem ipsum dolor sit amet. Quisque mollis maximus interdum.",
                      image: "assets/images/pizza.jpg",
                      price: 200,
                    ),
                  ],
                ),
              ),
            ),
            Total(
              total: 799.99,
            ),
            GroupRadio(),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: size.width / 2.5,
                    child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.green.shade800)
                    ),
                    color: Colors.green.shade800,
                    child: Text(
                      'Iniciar', 
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),
                    )),
                  ),
                  Container(
                    width: size.width / 2.5,
                    child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)
                    ),
                    color: Colors.red,
                    child: Text(
                      'Finalizar', 
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),
                    )),
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}