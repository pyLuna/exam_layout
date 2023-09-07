import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      // shape: const CircularNotchedRectangle(),
      child: SizedBox(
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.chat_bubble_outline),
            ),
            const SizedBox(
              width: 40,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_outline),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person_outline),
            ),
          ],
        ),
      ),
    );
  }
}

// return BottomNavigationBar(
//       selectedLabelStyle: const TextStyle(fontSize: 0),
//       unselectedLabelStyle: const TextStyle(fontSize: 0),
//       items: <BottomNavigationBarItem>[
//         const BottomNavigationBarItem(
//             icon: Icon(
//               Icons.house_outlined,
//               color: Colors.black,
//             ),
//             label: ''),
//         const BottomNavigationBarItem(
//             icon: Icon(
//               Icons.chat_outlined,
//               color: Colors.black,
//             ),
//             label: ''),
//         BottomNavigationBarItem(
//             icon: Icon(
//               Icons.add_circle,
//               color: Colors.blue[300],
//             ),
//             label: ''),
//         const BottomNavigationBarItem(
//             icon: Icon(
//               Icons.favorite_outline,
//               color: Colors.black,
//             ),
//             label: ''),
//         const BottomNavigationBarItem(
//             icon: Icon(
//               Icons.person_outline,
//               color: Colors.black,
//             ),
//             label: ''),
//       ],
//     );