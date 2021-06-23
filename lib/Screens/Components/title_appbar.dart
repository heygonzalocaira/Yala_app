import 'package:flutter/material.dart';

class TitleAppBar extends StatelessWidget {
  const TitleAppBar({
    Key key,
    @required this.text,
    @required this.size,
  }) : super(key: key);
  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, color: Colors.black),
    );
  }
}
