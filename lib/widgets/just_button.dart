import 'package:flutter/material.dart';

class JustButton extends StatelessWidget {
  final String title;
  final Color color;
  final Function onPressed;

  const JustButton({this.title, this.color, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      width: 200,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        color: color,
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        onPressed: onPressed ??
            () {
              print(title);
            },
      ),
    );
  }
}
