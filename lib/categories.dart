import 'package:flutter/material.dart';
import 'widgets/Categories/categoriesFull.dart';
import 'widgets/Home/searchBar.dart';

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
                "Categorías",
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
                    CategoriesFull(
                      name: "Ensaladas",
                      image: "assets/images/ensalada.jpg",
                    ),
                    CategoriesFull(
                      name: "Pastas",
                      image: "assets/images/pasta.jpeg",
                    ),
                    CategoriesFull(
                      name: "Hamburguesas",
                      image: "assets/images/hamburguesa.jpg",
                    ),
                    CategoriesFull(
                      name: "Pizas",
                      image: "assets/images/pizza.jpg",
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