import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String imagePath;
  final Text title;
  final Function onPressed;
  final double boxSize;
  final double iconSize;
  final double paddingSize;

  ActionButton(
      {this.title,
      this.imagePath,
      this.onPressed,
      this.boxSize,
      this.iconSize,
      this.paddingSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(paddingSize ?? 11.0),
      child: SizedBox(
        width: boxSize ?? 151,
        height: boxSize ?? 151,
        child: RaisedButton(
          padding: EdgeInsets.zero,
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
                  SizedBox(
                      height: iconSize ?? 80, child: Image.asset(imagePath)),
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
