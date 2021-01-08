import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class CreatAParty extends StatefulWidget {
  CreatAParty({Key key}) : super(key: key);

  @override
  _CreatAPartyState createState() => _CreatAPartyState();
}

class _CreatAPartyState extends State<CreatAParty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xff3B296D),
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
                  Text("Type your name:",
                      style: TextStyle(
                          color: Color(0xaaffffff),
                          fontSize: 24,
                          fontFamily: 'FredokaOne')),
                  SizedBox(
                    width: 256,
                    child: TextField(
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontFamily: 'FredokaOne',
                        fontSize: 36,
                      ),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintText: "name",
                          hintStyle: TextStyle(
                              color: Color(0x99ffffff),
                              fontFamily: 'FredokaOne'),
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
                            borderSide:
                                BorderSide(color: Colors.white, width: 3),
                          )),
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
