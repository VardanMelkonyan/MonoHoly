import 'package:flutter/material.dart';
import 'package:monoholy/model/utility.dart';
import 'package:monoholy/widgets/property.dart';

class PropertiesScreen extends StatefulWidget {
  final List<int> pIds;
  PropertiesScreen({@required this.pIds});
  @override
  _PropertiesScreenState createState() => _PropertiesScreenState();
}

class _PropertiesScreenState extends State<PropertiesScreen> {
  List<Widget> properties = [];

  @override
  void initState() {
    super.initState();
    setState(
      () {
        widget.pIds.forEach((i) {
          properties.add(Property(i));
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: merColor,
      appBar: AppBar(title: Text("Propeties")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Wrap(children: properties),
          ),
        ),
      ),
    );
  }
}
