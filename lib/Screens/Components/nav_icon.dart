import 'package:flutter/material.dart';

class NavIcon extends StatelessWidget {
  const NavIcon({
    Key key,
    @required this.iconNav,
    @required this.tap,
  }) : super(key: key);
  final IconData iconNav;
  final GestureTapCallback tap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Icon(
        iconNav,
        color: Colors.black87,
        size: 35.0,
      ),
    );
  }
}
