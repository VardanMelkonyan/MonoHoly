import 'package:flutter/material.dart';
import 'package:monoholy/model/player.dart';
import 'package:monoholy/model/property_model.dart';
import 'package:monoholy/model/utility.dart';
import 'package:monoholy/widgets/dropDown_button.dart';
import 'package:monoholy/widgets/just_button.dart';
import 'package:monoholy/widgets/money_slider.dart';

class TradeScreen extends StatefulWidget {
  final Player player;

  TradeScreen(this.player);
  @override
  _TradeScreenState createState() => _TradeScreenState();
}

class _TradeScreenState extends State<TradeScreen> {
  List<PropertyModel> myItems = [
    PropertyModel(title: "No Property", id: 0),
    PropertyModel(title: "Mediterranian Avenue", id: 1),
    PropertyModel(title: "Baltic Avenue", id: 3)
  ];

  List<PropertyModel> otherProperties;
  PropertyModel myProperty;
  PropertyModel otherPlayerProperty;
  double _howMuchIWant = 0;
  double _myMoneyOffer = 0;

  @override
  void initState() {
    super.initState();
    myProperty = myItems[0];
    otherProperties = widget.player.properties.map((e) => e).toList();
    otherProperties.insert(0, PropertyModel(title: "No Property", id: 0));
    otherPlayerProperty = widget.player.properties[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: merColor,
      appBar: AppBar(
        title: Text("To ${widget.player.name}"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(flex: 1),
            SizedBox(height: 30),
            Text(
              "Make your offer",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Property",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(width: 50),
                DropButton<PropertyModel>(
                  value: myProperty,
                  items: myItems,
                  onChanged: (PropertyModel newValue) {
                    setState(() {
                      myProperty = newValue;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Money",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  // textAlign: TextAlign.end,
                ),
                SizedBox(
                  width: 50,
                  child: Text(
                    "${_myMoneyOffer.round()}",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    textAlign: TextAlign.end,
                  ),
                ),
                SizedBox(
                  width: 240,
                  child: MoneySlider(
                    value: _myMoneyOffer,
                    min: 0,
                    max: 1500,
                    onChanged: (double newValue) {
                      setState(() {
                        _myMoneyOffer = newValue;
                      });
                    },
                  ),
                )
              ],
            ),
            SizedBox(height: 40),
            Text(
              "What You Want",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Property",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(width: 50),
                DropButton<PropertyModel>(
                  value: otherPlayerProperty,
                  items: otherProperties,
                  onChanged: (PropertyModel newValue) {
                    setState(() {
                      otherPlayerProperty = newValue;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Money",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  // textAlign: TextAlign.end,
                ),
                SizedBox(
                  width: 50,
                  child: Text(
                    "${_howMuchIWant.round()}",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    textAlign: TextAlign.end,
                  ),
                ),
                SizedBox(
                  width: 240,
                  child: MoneySlider(
                    value: _howMuchIWant,
                    min: 0,
                    max: widget.player.money.toDouble(),
                    onChanged: (double newValue) {
                      setState(() {
                        _howMuchIWant = newValue;
                      });
                    },
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            JustButton(
              title: "Send",
              color: Colors.green,
              onPressed: () {},
            ),
            Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
