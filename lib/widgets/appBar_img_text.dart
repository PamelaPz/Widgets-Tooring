import 'package:flutter/material.dart';

class AppBarImgText extends StatelessWidget implements PreferredSizeWidget {
  const AppBarImgText({
    Key key,
    this.title,
    this.image,
  }) : super(key: key);

  final String image;
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
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 40,
                minHeight: 40,
                maxWidth: 40,
                maxHeight: 40,
              ),
              child: Image.asset(image),
            ),
          ),
          Text(
            title.toUpperCase(),
          ),
        ],
      ),
    );
  }
}
