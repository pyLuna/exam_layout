import 'package:flutter/material.dart';

class FindButton extends StatelessWidget {
  const FindButton({
    super.key,
    required this.width,
  });
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {},
        child: const Text(
          'Find a nanny!',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
