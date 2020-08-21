import 'package:flutter/material.dart';

class AppBarIconText extends StatelessWidget implements PreferredSizeWidget {
  const AppBarIconText({
    Key key, this.title,
  }) : super(key: key);

  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back_ios),
            iconSize: 20.0,
            color: Colors.black,
            onPressed: () {
              print("Button back");
            },
          ),
          Text(
            title.toUpperCase(),
          ),
        ],
      ),
    );
  }
}
