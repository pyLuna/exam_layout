import 'package:flutter/material.dart';
import 'package:layout_exam/bottomnav.dart';
import 'package:layout_exam/homepage/profile.dart';
import 'package:layout_exam/homepage/home.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout Exam',
      home: Scaffold(
        body: MyAppBar(),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

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
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      body: const HomePage(),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
