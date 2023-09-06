import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          height: constraints.maxHeight,
          child: Placeholder(),
          // child: Column(
          //   children: [
          //     Container(
          //       padding: const EdgeInsets.only(top: 20),
          //       width: constraints.maxWidth,
          //       height: 80,
          //       child: const Text(
          //         'Price',
          //         style: TextStyle(
          //           fontWeight: FontWeight.bold,
          //           fontSize: 30,
          //         ),
          //       ),
          //     ),
          //     const SizedBox(
          //       height: 60,
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         children: [
          //           Expanded(
          //             child: DropdownWidget(
          //               hint: 'Min',
          //             ),
          //           ),
          //           SizedBox(
          //             width: 10,
          //           ),
          //           Expanded(
          //             child: DropdownWidget(
          //               hint: 'Max',
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
        );
      },
    );
  }
}

class DropdownWidget extends StatelessWidget {
  const DropdownWidget({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        elevation: 5,
        borderOnForeground: false,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 5),
          child: DropdownButtonFormField(
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
            hint: Text(hint),
            icon: const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black,
            ),
            items: [],
            onChanged: (value) {},
          ),
        ),
      ),
    );
  }
}
