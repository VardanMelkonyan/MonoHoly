import 'package:flutter/material.dart';
import 'package:monoholy/widgets/action_button.dart';

class Property extends StatelessWidget {
  final int imageID;

  AlertDialog _openDialog(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0x00000000),
      content: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/properties/$imageID.jpg'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ActionButton(
                  title: Text(
                    "Upgrade",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  imagePath: 'assets/icons/houseUpgrade.png',
                  onPressed: () {},
                  iconSize: 40,
                  boxSize: 75,
                  paddingSize: 5,
                ),
                ActionButton(
                  title: Text(
                    "Degrade",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  imagePath: 'assets/icons/downGrade.png',
                  onPressed: () {},
                  iconSize: 40,
                  boxSize: 75,
                  paddingSize: 5,
                ),
                ActionButton(
                  title: Text(
                    "Pledge",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  imagePath: 'assets/icons/bankDoungrade.png',
                  onPressed: () {},
                  iconSize: 40,
                  boxSize: 75,
                  paddingSize: 5,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Property(this.imageID);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showDialog(context: context, builder: _openDialog);
      },
      child: Container(
        width: 160,
        child: Image.asset('assets/properties/$imageID.jpg'),
      ),
    );
  }
}
