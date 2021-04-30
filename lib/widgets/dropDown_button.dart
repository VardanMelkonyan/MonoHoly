import 'package:flutter/material.dart';
import 'package:monoholy/model/property_model.dart';

class DropButton extends StatefulWidget {
  PropertyModel value;
  List<PropertyModel> items;
  Function onChanged;

  DropButton({this.value, this.items, this.onChanged});

  @override
  _DropButtonState createState() => _DropButtonState();
}

class _DropButtonState extends State<DropButton> {
  List<PropertyModel> propertyNames;

  @override
  void initState() {
    propertyNames = widget.items;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<PropertyModel>(
      value: widget.value,
      icon: Icon(
        Icons.arrow_downward,
        color: Colors.white,
      ),
      iconSize: 25,
      style: TextStyle(fontSize: 18, color: Colors.white),
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      onChanged: widget.onChanged,
      items: propertyNames.map<DropdownMenuItem<PropertyModel>>(
        (PropertyModel value) {
          return DropdownMenuItem<PropertyModel>(
            value: value,
            child: Text(
              value.title,
            ),
          );
        },
      ).toList(),
    );
  }
}
