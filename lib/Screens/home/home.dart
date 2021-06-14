import 'package:flutter/material.dart';
import 'package:yala_app/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ButtonNavVar(),
      //appBar: ,
    );
  }
}

class ButtonNavVar extends StatelessWidget {
  const ButtonNavVar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 3.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavIcon(
            iconNav: Icons.assignment_outlined,
          ),
          NavIcon(
            iconNav: Icons.home_filled,
          ),
          NavIcon(
            iconNav: Icons.account_circle_sharp,
          ),
        ],
      ),
    );
  }
}

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
