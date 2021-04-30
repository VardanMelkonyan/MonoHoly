import 'package:flutter/material.dart';

class MoneySlider extends StatefulWidget {
  final double min;
  final double max;
  final double value;
  final Function onChanged;

  MoneySlider({this.value, this.min, this.max, this.onChanged});

  @override
  _MoneySliderState createState() => _MoneySliderState();
}

class _MoneySliderState extends State<MoneySlider> {
  @override
  Widget build(BuildContext context) {
    return Slider(
      value: widget.value,
      activeColor: Colors.white,
      min: widget.min,
      max: widget.max,
      label: widget.value.round().toString(),
      onChanged: widget.onChanged,
    );
  }
}
