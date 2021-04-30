import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:monoholy/model/utility.dart';
import 'package:monoholy/pages/name.dart';

class JoinToParty extends StatefulWidget {
  JoinToParty({Key key}) : super(key: key);

  @override
  _JoinToPartyState createState() => _JoinToPartyState();
}

class _JoinToPartyState extends State<JoinToParty> {
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
                  SizedBox(
                    width: 256,
                    child: Image.asset("images/door_1.png"),
                  ),
                  Text("Enter The Game Code",
                      style: TextStyle(
                          color: Color(0xaaffffff),
                          fontSize: 24,
                          fontFamily: 'FredokaOne')),
                  SizedBox(
                    width: 256,
                    child: TextField(
                      textInputAction: TextInputAction.go,
                      onSubmitted: (code) {
                        //TODO: Send request to server in order to connect
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Name()));
                      },
                      keyboardType: TextInputType.number,
                      maxLength: 4,
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontFamily: 'FredokaOne',
                        fontSize: 36,
                      ),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintText: "1234",
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
                  Spacer(
                    flex: 2,
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
