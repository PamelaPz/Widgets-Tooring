import 'package:flutter/material.dart';
import 'package:tooring/widgets/Orders/cardOrderLeft.dart';

import 'widgets/Orders/cardOrder.dart';

class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CardOrderLeft(
              codeOrder: 12499,
              address:
                  "Lorem ipsum dolor sit amet. Quisque mollis maximus interdum.",
              image: "assets/images/avatar.png",
              nameUser: "Nombre de Usuario",
            ),
            CardOrder(
              codeOrder: 12498,
              address:
                  "Lorem ipsum dolor sit amet. Quisque mollis maximus interdum.",
              image: "assets/images/avatar.png",
              nameUser: "Jessica Pamela Pérez Pérez",
            ),
            CardOrderLeft(
              codeOrder: 12499,
              address:
                  "Lorem ipsum dolor sit amet. Quisque mollis maximus interdum.",
              image: "assets/images/avatar.png",
              nameUser: "Nombre de Usuario",
            ),
            CardOrder(
              codeOrder: 12500,
              address:
                  "Lorem ipsum dolor sit amet. Quisque mollis maximus interdum.",
              image: "assets/images/avatar.png",
              nameUser: "Nombre de Usuario",
            ),
          ],
        ),
      ),
    );
  }
}
