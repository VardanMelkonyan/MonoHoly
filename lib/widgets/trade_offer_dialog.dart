import 'package:flutter/material.dart';
import 'package:monoholy/model/offer.dart';
import 'package:monoholy/model/utility.dart';
import 'package:monoholy/widgets/just_button.dart';

AlertDialog tradeOfferDialog(
    BuildContext context, Offer offer, Function onApprove) {
  return AlertDialog(
    backgroundColor: Color(0x00000000),
    content: SingleChildScrollView(
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: merColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "${offer.giver.name} offeres...",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              SizedBox(height: 30),
              Text(
                  "You will recieve ${offer.offeredProperty} and \$${offer.offeredMoney}",
                  style: TextStyle(fontSize: 18, color: Colors.white)),
              SizedBox(height: 15),
              Text(
                "What is wanted...",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              SizedBox(height: 30),
              Text(
                  "You will give ${offer.wantedProperty} and \$${offer.wantedMoney}",
                  style: TextStyle(fontSize: 18, color: Colors.white)),
              SizedBox(height: 30),
              Row(
                children: [
                  JustButton(
                    width: 110,
                    height: 50,
                    title: "Approve",
                    color: Colors.green,
                    onPressed: onApprove,
                  ),
                  SizedBox(width: 12),
                  JustButton(
                    width: 110,
                    height: 50,
                    title: "Reject",
                    color: Colors.red,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}
