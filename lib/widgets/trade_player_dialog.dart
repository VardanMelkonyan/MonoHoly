import 'package:flutter/material.dart';
import 'package:monoholy/model/player.dart';
import 'package:monoholy/model/utility.dart';
import 'package:monoholy/widgets/just_button.dart';

AlertDialog tradePlayer(
    BuildContext context, Function onSubmit, List<Player> players) {
  Player player;

  void _onPressed(Player pl) {
    player = pl;
    Navigator.pop(context);
    onSubmit(player);
  }

  List<Widget> buttons = players
      .map(
        (Player p) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: JustButton(
            title: p.name,
            color: Colors.teal,
            onPressed: () {
              _onPressed(p);
            },
          ),
        ),
      )
      .toList();

  return AlertDialog(
    backgroundColor: Color(0x00000000),
    content: SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            color: merColor, borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            child: Column(
              children: buttons,
            ),
          ),
        ),
      ),
    ),
  );
}
