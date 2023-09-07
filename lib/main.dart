import 'package:flutter/material.dart';

import 'homepage/bottom_nav.dart';
import 'homepage/home.dart';
import 'homepage/profile.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

ThemeData homeTheme = ThemeData(
  // useMaterial3: true,
  primaryColor: Colors.blue,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.purple,
  ),
);

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: homeTheme,
      title: 'Layout Exam',
      home: const ScaffoldApp(),
    );
  }
}

class ScaffoldApp extends StatelessWidget {
  const ScaffoldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: const Row(
          children: [
            ProfilePic(
              pic: AssetImage('assets/profile.jpg'),
              isonline: true,
              isbabysitter: false,
            ),
            Padding(
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          child: const Icon(Icons.add),
          onPressed: () {}),
      body: const HomePage(),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
