import 'package:flutter/material.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Text(
        'See All',
        style: TextStyle(
          fontSize: 15,
          color: Colors.black38,
        ),
      ),
    );
  }
}
