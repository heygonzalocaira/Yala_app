import 'package:flutter/material.dart';

class ImageCircleShape extends StatelessWidget {
  const ImageCircleShape({
    Key key,
    @required this.img,
    @required this.size,
  }) : super(key: key);
  final String img;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        image: new DecorationImage(
          fit: BoxFit.fitHeight,
          image: NetworkImage(img),
        ),
      ),
    );
  }
}
