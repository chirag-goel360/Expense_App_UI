import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.teal.shade200,
      ),
      child: BottomNavigationBar(
        currentIndex: 0,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
              color: Colors.red,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_giftcard,
              color: Colors.purple,
            ),
            label: 'Gifts',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.green.shade700,
            ),
            label: 'Heart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mail_outline,
              color: Colors.pink,
            ),
            label: 'Notification',
          ),
        ],
      ),
    );
  }
}
