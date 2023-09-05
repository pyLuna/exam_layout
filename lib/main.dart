import 'package:flutter/material.dart';
import 'package:layout_exam/profile.dart';

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
      home: SafeArea(
        child: MyAppBar(),
      ),
    );
  }
}
