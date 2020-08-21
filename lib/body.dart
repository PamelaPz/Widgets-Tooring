import 'package:flutter/material.dart';
import 'widgets/Product_Details/inputIncrement.dart';
import 'widgets/Product_Details/buttonAdd.dart';
import 'widgets/Product_Details/imageFull.dart';
import 'widgets/Product_Details/comments.dart';

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
    );
  }
}
