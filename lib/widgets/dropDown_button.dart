import 'package:flutter/material.dart';
import 'package:monoholy/model/property_model.dart';

class DropButton<T> extends StatefulWidget {
  T value;
  List<T> items;
  Function onChanged;

  DropButton({this.value, this.items, this.onChanged});

  @override
  _DropButtonState createState() => _DropButtonState<T>();
}

class _DropButtonState<T> extends State<DropButton> {
  List<T> propertyNames;

  @override
  void initState() {
    propertyNames = widget.items;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<T>(
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
      items: propertyNames.map<DropdownMenuItem<T>>(
        (T v) {
          return DropdownMenuItem<T>(
            value: v,
            child: Text(
              v.toString(),
            ),
          );
        },
      ).toList(),
    );
  }
}
