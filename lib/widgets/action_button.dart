import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String imagePath;
  final Text title;
  final Function onPressed;

  ActionButton({this.title, this.imagePath, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11),
      child: SizedBox(
        width: 151,
        height: 151,
        child: RaisedButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          color: Colors.white,
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 9.0),
            child: Center(
              child: Column(
                children: [
                  Spacer(),
                  SizedBox(height: 80, child: Image.asset(imagePath)),
                  Spacer(),
                  title,
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
