import 'package:flutter/material.dart';
import 'package:monoholy/model/utility.dart';
import 'package:monoholy/widgets/just_button.dart';

AlertDialog openDialog(
    BuildContext context, int pId, Function forYes, Function forNo) {
  return AlertDialog(
    backgroundColor: Color(0x00000000),
    content: Container(
      color: Color(0x00000000),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: merColor, borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Do you want to buy this property?",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 20),
            Image.asset('assets/properties/$pId.jpg'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                JustButton(
                  title: "Yes",
                  color: Colors.lightGreen,
                  onPressed: () {
                    forYes();
                    Navigator.pop(context);
                  },
                  width: 100,
                ),
                SizedBox(width: 10),
                JustButton(
                  title: "No",
                  color: Colors.redAccent,
                  onPressed: forNo,
                  width: 100,
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
