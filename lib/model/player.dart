import 'package:flutter/material.dart';
import 'package:monoholy/model/property_model.dart';
import 'package:monoholy/model/utility.dart';

class Player {
  final String name;
  final Figure figure;
  int money;
  List<PropertyModel> properties;

  Player(
      {@required this.name,
      @required this.figure,
      @required this.money,
      this.properties});

  @override
  String toString() {
    return name;
  }

  void printProperties() {
    print(properties);
  }
}
