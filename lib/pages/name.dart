import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:monoholy/model/utility.dart';
import 'package:monoholy/pages/loby.dart';

class Name extends StatefulWidget {
  Name({Key key}) : super(key: key);

  @override
  _NameState createState() => _NameState();
}

class _NameState extends State<Name> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: merColor,
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    FeatherIcons.arrowLeft,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
              Center(
                  child: Column(
                children: [
                  Spacer(),
                  Text(
                    "Type your name:",
                    style: TextStyle(
                        color: Color(0xaaffffff),
                        fontSize: 24,
                        fontFamily: 'FredokaOne'),
                  ),
                  SizedBox(
                    width: 256,
                    child: TextField(
                      textInputAction: TextInputAction.done,
                      onSubmitted: (name) => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    LobyScreen(name, Figure.dog)))
                      },
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontFamily: 'FredokaOne',
                        fontSize: 36,
                      ),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "name",
                        hintStyle: TextStyle(
                            color: Color(0x99ffffff), fontFamily: 'FredokaOne'),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 3)),
                        border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 3)),
                        disabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 3)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 3),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
