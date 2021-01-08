import 'package:flutter/material.dart';
import 'package:monoholy/widgets/just_button.dart';
import 'create_a_party.dart';
import 'join_to_party.dart';

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
                    'MonoHoly',
                    style: TextStyle(
                      color: Color(0xFFE089FF),
                      fontSize: 60,
                      fontFamily: 'FredokaOne',
                    ),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      JustButton(
                        title: "Create a Party",
                        color: Color(0xFF61D15F),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreatAParty()));
                        },
                      ),
                      SizedBox(height: 24),
                      JustButton(
                        title: "Join to Party",
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
                        title: "Rules",
                        color: Color(0xFFD93A73),
                      ),
                      SizedBox(height: 24),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
