import 'package:flutter/material.dart';
import 'package:monoholy/model/utility.dart';
import 'package:monoholy/pages/rules.dart';
import 'package:monoholy/widgets/action_button.dart';

class InfoScreen extends StatefulWidget {
  final String name;
  final Figure figure;

  InfoScreen({this.name, this.figure});

  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  bool isPlayersTurn = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff3B296D),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 20),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RulesScreen()));
                    },
                    icon: Image.asset('assets/book.png'),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      child: Row(children: [
                        Spacer(),
                        Container(
                          width: 5,
                          height: 95,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              widget.name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
                            Text(
                              "\$ 1500",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 24),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "12",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 24),
                                ),
                                Icon(
                                  Icons.flag,
                                  color: Colors.red,
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                            width: 85,
                            child: Image.asset('images/${widget.figure}.png'))
                      ]),
                    ),
                    Spacer(),
                    Center(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ActionButton(
                                  imagePath: 'assets/dice.png',
                                  title: Text(
                                    "Roll",
                                    style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 24,
                                    ),
                                  ),
                                  onPressed: isPlayersTurn
                                      ? () {
                                          print("jgkhvj");
                                        }
                                      : null,
                                ),
                                ActionButton(
                                  imagePath: 'assets/documents.png',
                                  title: Text(
                                    "Properties",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 22,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ActionButton(
                                  imagePath: 'assets/jail.png',
                                  title: Text(
                                    "Get out",
                                    style: TextStyle(
                                      color: Colors.blueGrey[800],
                                      fontSize: 24,
                                    ),
                                  ),
                                  onPressed: isPlayersTurn ? () {} : null,
                                ),
                                ActionButton(
                                  imagePath: 'assets/transfer.png',
                                  title: Text(
                                    "Trade",
                                    style: TextStyle(
                                      color: Colors.purple[800],
                                      fontSize: 24,
                                    ),
                                  ),
                                  onPressed: isPlayersTurn ? () {} : null,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
