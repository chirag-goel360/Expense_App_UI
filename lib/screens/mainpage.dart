import 'package:expense_tracker_ui/color_setter.dart';
import 'package:expense_tracker_ui/main.dart';
import 'package:expense_tracker_ui/screens/slided_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/santa.jpg',
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              GradientText(
                'Holiday Gifts',
                gradient: LinearGradient(
                  colors: [
                    Colors.red,
                    Colors.pink,
                    Colors.purple,
                    Colors.deepPurple,
                    Colors.deepPurple,
                    Colors.indigo,
                    Colors.blue,
                    Colors.lightBlue,
                    Colors.cyan,
                    Colors.teal,
                    Colors.green,
                    Colors.lightGreen,
                    Colors.lime,
                    Colors.yellow,
                    Colors.amber,
                    Colors.orange,
                    Colors.deepOrange,
                  ],
                ),
                textfont: 45,
              ),
              SizedBox(
                height: 25,
              ),
              GradientText(
                'Get ready for Christmas and New Year Eve.\nMake gifts list.\nCalculate the budget accordingly.\nSend congratulations.\nPlan perfect Holiday.',
                textalign: TextAlign.center,
                textfont: 18,
                gradient: LinearGradient(
                  colors: [
                    Color(0xffDA44bb),
                    Color(0xff8921aa),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExpensePage(),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 18,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text(
                    'Let\'s Begin',
                    style: TextStyle(
                      fontSize: 16,
                      color: kPrimaryBlue,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
