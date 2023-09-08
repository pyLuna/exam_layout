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
    return SizedBox(
      width: isbabysitter == true ? 70 : 60,
      height: isbabysitter == true ? 70 : 60,
      child: Center(
        child: Stack(
          alignment: const Alignment(0.8, 0.8),
          children: [
            CircleAvatar(
              radius: isbabysitter == true ? 35 : 25,
              backgroundImage: pic,
            ),
            Align(
              alignment: FractionalOffset.bottomRight,
              child: Stack(
                alignment: const Alignment(0.2, 0.2),
                children: [
                  ClipOval(
                    child: Container(
                      color: Colors.white,
                      width: isbabysitter == true ? 24 : 19,
                      height: isbabysitter == true ? 24 : 19,
                    ),
                  ),
                  ClipOval(
                    child: Container(
                      color: isonline == true ? Colors.green : Colors.orange,
                      width: isbabysitter == true ? 19 : 16,
                      height: isbabysitter == true ? 19 : 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
