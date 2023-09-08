import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class OnlineNow extends StatefulWidget {
  const OnlineNow({super.key});

  @override
  State<OnlineNow> createState() => _OnlineNowState();
}

class _OnlineNowState extends State<OnlineNow> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Card(
        shadowColor: Colors.black26,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Online now',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              FlutterSwitch(
                height: 28,
                width: 55,
                onToggle: (value) {
                  setState(() {
                    isOn = value;
                  });
                },
                activeColor: Theme.of(context).colorScheme.primary,
                value: isOn,
              )
            ],
          ),
        ),
      ),
    );
  }
}
