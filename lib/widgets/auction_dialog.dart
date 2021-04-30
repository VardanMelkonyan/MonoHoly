import 'package:flutter/material.dart';
import 'package:monoholy/model/utility.dart';
import 'package:monoholy/widgets/just_button.dart';

AlertDialog auctionDialog(BuildContext context, int pId, Function onSubmit) {
  int myBet = 0;

  void _submit() {
    print("Bet: $myBet");
    onSubmit();
    Navigator.pop(context);
  }

  return AlertDialog(
    backgroundColor: Color(0x00000000),
    content: SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            color: merColor, borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            height: 504,
            child: Column(
              children: [
                Image.asset('assets/properties/$pId.jpg'),
                SizedBox(height: 20),
                Text(
                  "Make your bet",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                TextField(
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.number,
                  onChanged: (bet) {
                    myBet = int.parse(bet);
                  },
                  onSubmitted: (bet) {
                    _submit();
                    myBet = int.parse(bet);
                  },
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontFamily: 'FredokaOne',
                    fontSize: 36,
                  ),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "100",
                    hintStyle: TextStyle(
                        color: Color(0x99ffffff), fontFamily: 'FredokaOne'),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 3)),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 3)),
                    disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 3)),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 3),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    JustButton(
                      title: "Yes",
                      color: Colors.lightGreen,
                      onPressed: _submit,
                      width: 100,
                    ),
                    SizedBox(width: 10),
                    JustButton(
                      title: "No",
                      color: Colors.redAccent,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      width: 100,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
