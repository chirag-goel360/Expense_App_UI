import 'package:expense_tracker_ui/main.dart';
import 'package:expense_tracker_ui/screens/bottom_bar.dart';
import 'package:expense_tracker_ui/screens/header.dart';
import 'package:expense_tracker_ui/screens/list_group.dart';
import 'package:flutter/material.dart';

class ExpensePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: ListView(
            children: <Widget>[
              Header(),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  25,
                  25,
                  25,
                  15,
                ),
                child: Text(
                  'Lists',
                  style: TextStyle(
                    color: kPrimaryBlue,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ),
              ListGroup(
                name: 'Family',
                img: AssetImage(
                  'assets/bear.png',
                ),
                member: ["Dad", "Mom", "Sister", "GrandMa"],
                amount: [34, 56, 21, 44],
              ),
              SizedBox(
                height: 15,
              ),
              ListGroup(
                name: 'Friends',
                img: AssetImage(
                  'assets/penguin.png',
                ),
                member: ["Friend 1", "Friend 2"],
                amount: [60, 76],
              ),
              SizedBox(
                height: 15,
              ),
              ListGroup(
                name: 'Relative',
                img: AssetImage(
                  'assets/bear.png',
                ),
                member: ["Nana", "Aunty", "Brother-In-Law", "Chacha"],
                amount: [34, 56, 21, 44],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
