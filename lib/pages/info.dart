import 'package:flutter/material.dart';
import 'package:monoholy/model/utility.dart';
import 'package:monoholy/pages/properties.dart';
import 'package:monoholy/pages/rules.dart';
import 'package:monoholy/pages/trade.dart';
import 'package:monoholy/widgets/action_button.dart';
import 'package:monoholy/widgets/auction_dialog.dart';
import 'package:monoholy/widgets/buy_or_not_alert.dart';

class InfoScreen extends StatefulWidget {
  final String name;
  final Figure figure;

  InfoScreen({this.name, this.figure});

  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  bool isPlayersTurn = true;
  List<int> pIds = [1, 3, 8, 11, 27, 25];

  AlertDialog _buyOrNotBuilder(BuildContext context) {
    return openDialog(context, 1, () {
      print("yes");
    }, () {
      print("no");
    });
  }

  AlertDialog _auction(BuildContext context) {
    return auctionDialog(context, 27, () {
      print("Hello mazafaka");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: merColor,
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
                    icon: Image.asset('assets/icons/book.png'),
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
                                  "${pIds.length}",
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
                                  imagePath: 'assets/icons/dice.png',
                                  title: Text(
                                    "Roll",
                                    style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 24,
                                    ),
                                  ),
                                  onPressed: isPlayersTurn
                                      ? () {
                                          showDialog(
                                              context: context,
                                              builder: _buyOrNotBuilder);
                                        }
                                      : null,
                                ),
                                ActionButton(
                                  imagePath: 'assets/icons/documents.png',
                                  title: Text(
                                    "Properties",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 22,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PropertiesScreen(
                                          pIds: pIds,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ActionButton(
                                  imagePath: 'assets/icons/jail.png',
                                  title: Text(
                                    "Get out",
                                    style: TextStyle(
                                      color: Colors.blueGrey[800],
                                      fontSize: 24,
                                    ),
                                  ),
                                  onPressed: isPlayersTurn
                                      ? () {
                                          showDialog(
                                              context: context,
                                              builder: _auction);
                                        }
                                      : null,
                                ),
                                ActionButton(
                                  imagePath: 'assets/icons/transfer.png',
                                  title: Text(
                                    "Trade",
                                    style: TextStyle(
                                      color: Colors.purple[800],
                                      fontSize: 24,
                                    ),
                                  ),
                                  onPressed: isPlayersTurn
                                      ? () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      TradeScreen()));
                                        }
                                      : null,
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
