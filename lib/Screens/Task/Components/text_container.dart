import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({
    Key key,
    @required this.text,
    @required this.sizePadding,
  }) : super(key: key);

  final String text;
  final double sizePadding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(sizePadding),
      child: Text(
        text,
        style: TextStyle(fontSize: 23.0),
      ),
    );
  }
}
