import 'package:flutter/material.dart';
import 'widgets/Home/searchBar.dart';
import 'widgets/Categories/listCategory.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Ensaladas",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListCategory(
                      nameUser: "Nombre del platillo",
                      price: 200,
                      address:
                          "Lorem ipsum dolor sit amet. Quisque mollis maximus interdum.",
                      image: "assets/images/pizza.jpg",
                      starts: 4.7,
                    ),
                    ListCategory(
                      nameUser: "Nombre del platillo",
                      price: 200,
                      address:
                          "Lorem ipsum dolor sit amet. Quisque mollis maximus interdum.",
                      image: "assets/images/pizza.jpg",
                      starts: 4.7,
                    ),
                    ListCategory(
                      nameUser: "Nombre del platillo",
                      price: 200,
                      address:
                          "Lorem ipsum dolor sit amet. Quisque mollis maximus interdum.",
                      image: "assets/images/pizza.jpg",
                      starts: 4.7,
                    ),
                    ListCategory(
                      nameUser: "Nombre del platillo",
                      price: 200,
                      address:
                          "Lorem ipsum dolor sit amet. Quisque mollis maximus interdum.",
                      image: "assets/images/pizza.jpg",
                      starts: 4.7,
                    ),
                    ListCategory(
                      nameUser: "Nombre del platillo",
                      price: 200,
                      address:
                          "Lorem ipsum dolor sit amet. Quisque mollis maximus interdum.",
                      image: "assets/images/pizza.jpg",
                      starts: 4.7,
                    ),
                    ListCategory(
                      nameUser: "Nombre del platillo",
                      price: 200,
                      address:
                          "Lorem ipsum dolor sit amet. Quisque mollis maximus interdum.",
                      image: "assets/images/pizza.jpg",
                      starts: 4.7,
                    ),
                  ],
                ),
              ),
            )
           ],
         )
      )
    );
  }
}