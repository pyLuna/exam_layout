import 'package:flutter/material.dart';
import 'package:layout_exam/home.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        title: Row(
          children: [
            Stack(
              alignment: const Alignment(0.8, 0.8),
              children: [
                const CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
                Stack(
                  alignment: const Alignment(0.5, 0.5),
                  children: [
                    ClipOval(
                      child: Container(
                        color: Colors.white,
                        width: 16,
                        height: 16,
                      ),
                    ),
                    ClipOval(
                      child: Container(
                        color: Colors.green,
                        width: 13,
                        height: 13,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Hello, Jenny!',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const HomePage(),
    );
  }
}
