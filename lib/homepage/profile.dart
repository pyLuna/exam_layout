import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
    required this.pic,
    required this.isonline,
    required this.isbabysitter,
  });
  final AssetImage pic;
  final bool isonline;
  final bool isbabysitter;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0.8, 0.8),
      children: [
        CircleAvatar(
          radius: isbabysitter == true ? 35 : 25,
          backgroundImage: pic,
        ),
        Stack(
          alignment: const Alignment(0.2, 0.2),
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
                color: isonline == true ? Colors.green : Colors.orange,
                width: 13,
                height: 13,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
