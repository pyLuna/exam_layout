import 'package:flutter/material.dart';

// class PriceWidget extends StatelessWidget {
//   const PriceWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         return Container(
//           padding: const EdgeInsets.only(left: 20, right: 20),
//           height: constraints.maxHeight,
//           child: Placeholder(),
//         );
//       },
//     );
//   }
// }

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
            items: const [],
            onChanged: (value) {},
          ),
        ),
      ),
    );
  }
}
