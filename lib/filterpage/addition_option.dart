import 'package:flutter/material.dart';

class Options extends StatefulWidget {
  const Options({
    super.key,
    required this.text,
  });
  final String text;

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: Row(
        children: [
          Checkbox(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            value: value,
            onChanged: ((value) {
              setState(() {
                this.value = value!;
              });
            }),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            widget.text,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
