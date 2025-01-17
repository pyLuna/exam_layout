import 'package:flutter/material.dart';

const List<Widget> options = <Widget>[
  Text('Rating'),
  Text('Experience'),
];

class TextButtons extends StatefulWidget {
  const TextButtons({super.key, required this.constraints});
  final double constraints;
  @override
  State<TextButtons> createState() => _TextButtonsState();
}

class _TextButtonsState extends State<TextButtons> {
  int _selectedFruitIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        shadowColor: Colors.black26,
        elevation: 5,
        child: ToggleButtons(
          onPressed: (int index) {
            setState(() {
              _selectedFruitIndex = index;
            });
          },
          borderRadius: BorderRadius.circular(8),
          selectedColor: Theme.of(context).colorScheme.onBackground,
          fillColor: Theme.of(context).colorScheme.primaryContainer,
          disabledColor: Colors.green,
          color: Colors.grey,
          textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          constraints: BoxConstraints(
            minHeight: 40,
            minWidth: widget.constraints / 2.34,
          ),
          isSelected: List.generate(
              options.length, (index) => index == _selectedFruitIndex),
          children: options,
        ),
      ),
    );
  }
}
