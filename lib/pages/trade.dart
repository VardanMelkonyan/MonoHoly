import 'package:flutter/material.dart';
import 'package:monoholy/model/property_model.dart';
import 'package:monoholy/model/utility.dart';
import 'package:monoholy/widgets/dropDown_button.dart';
import 'package:monoholy/widgets/property.dart';

class TradeScreen extends StatefulWidget {
  @override
  _TradeScreenState createState() => _TradeScreenState();
}

class _TradeScreenState extends State<TradeScreen> {
  List<PropertyModel> myItems = [
    PropertyModel(title: "Mediterranian Avenue", id: 1),
    PropertyModel(title: "Baltic Avenue", id: 3)
  ];
  PropertyModel myProperty;
  @override
  void initState() {
    super.initState();
    myProperty = myItems[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: merColor,
      appBar: AppBar(
        title: Text("Trade"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          Text(
            "Make your offer",
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Property",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(width: 20),
              DropButton(
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
        ],
      ),
    );
  }
}
