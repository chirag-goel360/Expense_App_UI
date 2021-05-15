import 'package:expense_tracker_ui/main.dart';
import 'package:flutter/material.dart';

class TileData extends StatelessWidget {
  final String name;
  final bool status;
  final int amount;
  const TileData({
    this.name,
    this.status,
    this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          status ? Icons.check_circle_outline : Icons.highlight_off,
          color: status ? Colors.green.shade400 : Colors.red.shade300,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          name,
          style: TextStyle(
            color: Colors.pink,
            fontSize: 18,
          ),
        ),
        Spacer(),
        Text(
          '\₹$amount\ / ',
          style: TextStyle(
            color: kPrimaryBlue,
            fontSize: 18,
          ),
        ),
        Text(
          '\₹100',
          style: TextStyle(
            color: Colors.purple,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
