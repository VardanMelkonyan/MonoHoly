import 'package:flutter/material.dart';
import 'package:monoholy/model/utility.dart';
import 'package:monoholy/pages/info.dart';
import 'package:monoholy/widgets/just_button.dart';

class LobyScreen extends StatefulWidget {
  final String username;
  final Figure figure;

  LobyScreen(this.username, this.figure);

  @override
  _LobyScreenState createState() => _LobyScreenState();
}

class _LobyScreenState extends State<LobyScreen> {
  bool _isPlayerReady = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: merColor,
      appBar: AppBar(
        title: Text(
          widget.username,
          style: TextStyle(fontSize: 24, fontFamily: 'FredokaOne'),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            SizedBox(
              height: 250,
              child: Image.asset('images/${widget.figure}.png'),
            ),
            SizedBox(height: 40),
            _isPlayerReady
                ? Text(
                    "Waiting for others...",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  )
                : JustButton(
                    text: Text(
                      "Ready",
                      style: TextStyle(color: Colors.green, fontSize: 24),
                    ),
                    color: Colors.white,
                    onPressed: () {
                      setState(() {
                        _isPlayerReady = true;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InfoScreen(
                            name: widget.username,
                            figure: widget.figure,
                          ),
                        ),
                      );
                    }, // TODO: add functionality
                  ),
            SizedBox(height: 25),
            JustButton(
              text: Text(
                "Leave",
                style: TextStyle(color: Colors.red, fontSize: 24),
              ),
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.pop(context);
              }, // TODO: add functionality
            )
          ],
        ),
      ),
    );
  }
}
