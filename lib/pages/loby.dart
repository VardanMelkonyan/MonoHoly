import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class LobyScreen extends StatefulWidget {
  LobyScreen({Key key}) : super(key: key);

  @override
  _LobyScreenState createState() => _LobyScreenState();
}

class _LobyScreenState extends State<LobyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff3B296D),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(children: [
                  IconButton(
                    icon: Icon(FeatherIcons.repeat),
                    onPressed: () {},
                  ), 
                  Text("Belissimo")
                ])
              ],
            ),
          ),
        ));
  }
}
