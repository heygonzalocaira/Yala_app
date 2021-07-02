import 'package:flutter/material.dart';

class TextWhite extends StatelessWidget {
  const TextWhite({
    Key key,
    @required this.text,
    @required this.size,
    @required this.padding,
  }) : super(key: key);
  final String text;
  final double size;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Text(
        text,
        style: TextStyle(
          fontSize: size,
          color: Colors.white,
        ),
      ),
    );
  }
}
