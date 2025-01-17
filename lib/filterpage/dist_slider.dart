import 'package:flutter/material.dart';

class DistanceSlider extends StatefulWidget {
  const DistanceSlider({super.key});

  @override
  State<DistanceSlider> createState() => _DistanceSliderState();
}

class _DistanceSliderState extends State<DistanceSlider> {
  int _value = 15;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: Theme.of(context).colorScheme.onBackground,
        thumbColor: Theme.of(context).colorScheme.primary,
        overlayColor: Colors.white,
        overlayShape: SliderComponentShape.noOverlay,
        // overlayShape: const RoundSliderOverlayShape(
        //   overlayRadius: 15.0,
        // ),
        trackHeight: 2,
      ),
      child: Column(
        children: [
          Slider(
            min: 0,
            max: 30,
            label: '$_value miles',
            value: _value.toDouble(),
            onChanged: (double value) {
              setState(() {
                _value = value.round();
              });
            },
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            '$_value meters',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
