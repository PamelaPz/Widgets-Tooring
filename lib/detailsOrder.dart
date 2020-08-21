import 'package:flutter/material.dart';
import 'widgets/Orders/cardFood.dart';
import 'widgets/Orders/cardFoodLeft.dart';
import 'widgets/Orders/total.dart';
import 'widgets/Orders/userDataHeader.dart';

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
                    Divider(color: Colors.grey, height: 2,),
                    CardFoodLeft(
                      name: "Nombre del platillo",
                      comments:
                          "Lorem ipsum dolor sit amet. Quisque mollis maximus interdum.",
                      image: "assets/images/pizza.jpg",
                      price: 200,
                    ),
                    Divider(color: Colors.grey, height: 2,),
                    CardFood(
                      name: "Nombre del platillo",
                      comments:
                          "Lorem ipsum dolor sit amet. Quisque mollis maximus interdum.",
                      image: "assets/images/pizza.jpg",
                      price: 200,
                    ),
                    Divider(color: Colors.grey, height: 2,),
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
            Total(total: 799.99,),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Text("Forma de Pago"),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Tarjeta de débito / crédito"),
                              Icon(Icons.check_circle),
                            ],
                          ),
                        ),
                        Divider(height: 2, color: Colors.grey,),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Efectivo"),
                              Icon(Icons.check_circle),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
