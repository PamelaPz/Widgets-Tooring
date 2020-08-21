import 'package:flutter/material.dart';
import 'widgets/Home/cardsLeft.dart';
import 'widgets/Home/tagsBar.dart';
import 'widgets/Home/cards.dart';
import 'widgets/Home/searchBar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          TagsBar(),
          SearchBar(),
          Expanded(
            child: SingleChildScrollView(
                child: Column(
              children: [
                Cards(
                  description:
                      "Lorem ipsum dolor sit amet. Quisque mollis maximus interdum.",
                  image: "assets/images/pizza.jpg",
                  name: "Pizza",
                  price: 120,
                  press: () {
                    print("1");
                  },
                  stars: 5.5,
                ),
                CardsLeft(
                  description:
                      "Lorem ipsum dolor sit amet. Quisque mollis maximus interdum.",
                  image: "assets/images/pizza.jpg",
                  name: "Pizza",
                  price: 120,
                  press: () {
                    print("1");
                  },
                  stars: 5.5,
                ),
                Cards(
                  description:
                      "Lorem ipsum dolor sit amet. Quisque mollis maximus interdum.",
                  image: "assets/images/pizza.jpg",
                  name: "Pizza",
                  price: 120,
                  press: () {
                    print("1");
                  },
                  stars: 5.5,
                ),
                CardsLeft(
                  description:
                      "Lorem ipsum dolor sit amet. Quisque mollis maximus interdum.",
                  image: "assets/images/pizza.jpg",
                  name: "Pizza",
                  price: 120,
                  press: () {
                    print("1");
                  },
                  stars: 5.5,
                ),
                Cards(
                  description:
                      "Lorem ipsum dolor sit amet. Quisque mollis maximus interdum.",
                  image: "assets/images/pizza.jpg",
                  name: "Pizza",
                  price: 120,
                  press: () {
                    print("1");
                  },
                  stars: 5.5,
                ),
                CardsLeft(
                  description:
                      "Lorem ipsum dolor sit amet. Quisque mollis maximus interdum.",
                  image: "assets/images/pizza.jpg",
                  name: "Pizza",
                  price: 120,
                  press: () {
                    print("1");
                  },
                  stars: 5.5,
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
