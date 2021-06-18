import 'package:flutter/material.dart';

class NavIcon extends StatelessWidget {
  const NavIcon({
    Key key,
    @required this.iconNav,
  }) : super(key: key);
  final IconData iconNav;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Icon(
        iconNav,
        color: Colors.black87,
        size: 35.0,
      ),
    );
  }
}
