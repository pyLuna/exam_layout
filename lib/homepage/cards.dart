import 'package:flutter/material.dart';

class HorizontalCard extends StatelessWidget {
  const HorizontalCard({super.key, required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      // child: Container(
      //   height: 140,
      //   width: 170,
      //   decoration: BoxDecoration(
      //     color: color,
      //     borderRadius: const BorderRadius.all(
      //       Radius.circular(10),
      //     ),
      //     boxShadow: const <BoxShadow>[
      //       BoxShadow(
      //         color: Colors.black54,
      //         blurRadius: 7.0,
      //         offset: Offset(0, 3.0),
      //       ),
      //     ],
      //   ),
      // ),
      child: Card(
        shadowColor: Colors.black26,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          height: 140,
          width: 160,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 50),
            child: Text(
              text,
              softWrap: true,
            ),
          ),
        ),
      ),
    );
  }
}
