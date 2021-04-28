import 'package:flutter/material.dart';
import 'package:monoholy/pages/rules.dart';
import 'package:monoholy/widgets/just_button.dart';
import 'name.dart';
import 'enter_the_game.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        color: Color(0xff3B296D),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Spacer(),
              Image.asset('images/MainPageMAn.png'),
            ],
          ),
          SafeArea(
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Monopoly',
                    style: TextStyle(
                      color: Color(0xFFE089FF),
                      fontSize: 60,
                      fontFamily: 'FredokaOne',
                    ),
                  ),
                  Spacer(flex: 1),
                  Column(
                    children: [
                      SizedBox(height: 24),
                      JustButton(
                        title: "Join",
                        color: Color(0xFF1C73E0),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => JoinToParty()));
                        },
                      ),
                      SizedBox(height: 24),
                      JustButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RulesScreen()));
                        },
                        title: "Rules",
                        color: Color(0xFFD93A73),
                      ),
                      SizedBox(height: 24),
                    ],
                  ),
                  Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
