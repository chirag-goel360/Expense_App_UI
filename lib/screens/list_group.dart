import 'package:expense_tracker_ui/screens/list_divider.dart';
import 'package:expense_tracker_ui/screens/tiles_data_display.dart';
import 'package:flutter/material.dart';

class ListGroup extends StatefulWidget {
  final String name;
  final ImageProvider img;
  final List<String> member;
  final List<int> amount;
  const ListGroup({
    this.name,
    this.img,
    this.member,
    this.amount,
  });

  @override
  _ListGroupState createState() => _ListGroupState();
}

class _ListGroupState extends State<ListGroup> {
  bool vis = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              vis = !vis;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.indigo.shade600,
              borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.member.length.toString() + ' people',
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: widget.img,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Visibility(
          visible: vis,
          child: Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.symmetric(
              horizontal: 25,
            ),
            decoration: BoxDecoration(
              color: Color(0xfff3faff),
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: widget.member.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    TileData(
                      status: true,
                      name: widget.member[index],
                      amount: widget.amount[index],
                    ),
                    ListDivider(),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
