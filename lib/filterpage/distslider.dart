import 'package:flutter/material.dart';

class DistanceSlider extends StatefulWidget {
  const DistanceSlider({super.key});

  @override
  State<DistanceSlider> createState() => _DistanceSliderState();
}

class _DistanceSliderState extends State<DistanceSlider> {
  @override
  Widget build(BuildContext context) {
    int _value = 150;
    return Slider(
      min: 0,
      max: 200,
      activeColor: Colors.orange,
      inactiveColor: Colors.black12,
      // overlayColor: Colors.whi,
      // divisions: 10,
      value: _value.toDouble(),
      onChanged: (double value) {
        setState(() {
          _value = value.round();
        });
      },
      semanticFormatterCallback: (double value) {
        return '$value meters';
      },
    );
  }
}
