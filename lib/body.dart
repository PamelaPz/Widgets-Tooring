import 'package:flutter/material.dart';
import 'package:tooring/widgets/Product_Details/inputIncrement.dart';
import 'widgets/Product_Details/buttonAdd.dart';
import 'widgets/Product_Details/imageFull.dart';
import 'widgets/Product_Details/comments.dart';
// import 'widgets/tagsBar.dart';
// import 'widgets/cards.dart';
// import 'widgets/cardsLeft.dart';
// import 'widgets/searchBar.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ImageFull( image: 'https://article.images.consumerreports.org/f_auto/prod/content/dam/CRO-Images-2020/Magazine/05May/CR-Health-Inlinehero-HealthyFastFood-3-20-v2', ),
            SizedBox(
              height: 20,
            ),
            Comments(),
            SizedBox(height: 100),
            Container(
              width: size.width,
              height: size.height * 0.08,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                InputIncrement(),
                SizedBox(width: 20),
                ButtonAdd(),
                ],
              ),
            ),
          ],
        ),
      ),
      // child: Column(children: <Widget>[
      // TagsBar(),
      // SearchBar(),
      // Expanded(
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         Cards(
      //           name: 'Pizza de Peperoni',
      //           description:
      //               'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed pharetra ante. Morbi eget augue nunc.',
      //           image: "assets/images/pizza.jpg",
      //           price: 200.00,
      //           stars: 5.5,
      //           press: () {
      //             print("Card 1");
      //           },
      //         ),
      //         CardsLeft(
      //           name: 'Torta de Jamón',
      //           description:
      //               'Lorem insup Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed pharetra ante. Morbi eget augue nunc. ',
      //           image: "assets/images/torta_jamon.jpg",
      //           price: 200.00,
      //           stars: 5.5,
      //           press: () {
      //             print("Card 2");
      //           },
      //         ),
      //         Cards(
      //           name: 'Pizza de Peperoni',
      //           description:
      //               'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed pharetra ante. Morbi eget augue nunc.',
      //           image: "assets/images/pizza.jpg",
      //           price: 200.00,
      //           stars: 5.5,
      //           press: () {
      //             print("Card 3");
      //           },
      //         ),
      //         CardsLeft(
      //           name: 'Torta de Jamón',
      //           description:
      //               'Lorem insup Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed pharetra ante. Morbi eget augue nunc. ',
      //           image: "assets/images/torta_jamon.jpg",
      //           price: 200.00,
      //           stars: 5.5,
      //           press: () {
      //             print("Card 4");
      //           },
      //         ),
      //         Cards(
      //           name: 'Pizza de Peperoni',
      //           description:
      //               'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed pharetra ante. Morbi eget augue nunc.',
      //           image: "assets/images/pizza.jpg",
      //           price: 200.00,
      //           stars: 5.5,
      //           press: () {
      //             print("Card 5");
      //           },
      //         ),
      //         CardsLeft(
      //           name: 'Torta de Jamón',
      //           description:
      //               'Lorem insup Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed pharetra ante. Morbi eget augue nunc. ',
      //           image: "assets/images/torta_jamon.jpg",
      //           price: 200.00,
      //           stars: 5.5,
      //           press: () {
      //             print("Card 6");
      //           },
      //         ),
      //       ],
      //     ),
      //   ),
      // )
      // ]),
    );
  }
}
