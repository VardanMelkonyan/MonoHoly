import 'package:flutter/material.dart';
import 'package:monoholy/model/utility.dart';
import 'pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Monopoly',
      theme: ThemeData(
        appBarTheme: AppBarTheme(brightness: Brightness.dark),
        primaryColor: merColor,
        canvasColor: merColor,
        fontFamily: 'FredokaOne',
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
