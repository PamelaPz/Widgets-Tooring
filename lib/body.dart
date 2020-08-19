import 'package:flutter/material.dart';
import 'widgets/tagsBar.dart';
import 'widgets/cards.dart';
import 'widgets/cardsLeft.dart';
import 'widgets/searchBar.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(children: <Widget>[
        TagsBar(),
        SearchBar(),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Cards(
                  name: 'Pizza de Peperoni',
                  description:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed pharetra ante. Morbi eget augue nunc.',
                  image: "assets/images/pizza.jpg",
                  price: 200.00,
                  stars: 5.5,
                  press: () {
                    print("Card 1");
                  },
                ),
                CardsLeft(
                  name: 'Torta de Jamón',
                  description:
                      'Lorem insup Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed pharetra ante. Morbi eget augue nunc. ',
                  image: "assets/images/torta_jamon.jpg",
                  price: 200.00,
                  stars: 5.5,
                  press: () {
                    print("Card 2");
                  },
                ),
                Cards(
                  name: 'Pizza de Peperoni',
                  description:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed pharetra ante. Morbi eget augue nunc.',
                  image: "assets/images/pizza.jpg",
                  price: 200.00,
                  stars: 5.5,
                  press: () {
                    print("Card 3");
                  },
                ),
                CardsLeft(
                  name: 'Torta de Jamón',
                  description:
                      'Lorem insup Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed pharetra ante. Morbi eget augue nunc. ',
                  image: "assets/images/torta_jamon.jpg",
                  price: 200.00,
                  stars: 5.5,
                  press: () {
                    print("Card 4");
                  },
                ),
                Cards(
                  name: 'Pizza de Peperoni',
                  description:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed pharetra ante. Morbi eget augue nunc.',
                  image: "assets/images/pizza.jpg",
                  price: 200.00,
                  stars: 5.5,
                  press: () {
                    print("Card 5");
                  },
                ),
                CardsLeft(
                  name: 'Torta de Jamón',
                  description:
                      'Lorem insup Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed pharetra ante. Morbi eget augue nunc. ',
                  image: "assets/images/torta_jamon.jpg",
                  price: 200.00,
                  stars: 5.5,
                  press: () {
                    print("Card 6");
                  },
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
