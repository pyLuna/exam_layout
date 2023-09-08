import 'package:flutter/material.dart';
import 'package:layout_exam/homepage/baby_sitters.dart';
import 'package:layout_exam/homepage/cards.dart';
import 'package:layout_exam/homepage/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SearchArea(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 10, right: 15),
            child: Row(
              children: [
                HorizontalCard(
                    text: 'How to find a Nanny',
                    color: Theme.of(context).colorScheme.tertiaryContainer),
                HorizontalCard(
                    text: "Let's play together",
                    color: Theme.of(context).colorScheme.primaryContainer),
                HorizontalCard(
                    text: '3rd card text',
                    color: Theme.of(context).colorScheme.secondaryContainer),
              ],
            ),
          ),
        ),
        const HeaderTitle(title: 'Top Babysitters'),
        const SizedBox(
          height: 500,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Babysitters(
                  name: 'Anny White',
                  experience: '5 years',
                  rate: '5.0',
                  pic: AssetImage('assets/profile1.jpeg'),
                  isonline: true,
                ),
                Babysitters(
                  name: 'Marina Oakley',
                  experience: '7 years',
                  rate: '4.8',
                  pic: AssetImage('assets/profile2.jpg'),
                  isonline: false,
                ),
                Babysitters(
                  name: 'Jane Grant',
                  experience: '5 years',
                  rate: '3.8',
                  pic: AssetImage('assets/profile.jpg'),
                  isonline: false,
                ),
                Babysitters(
                  name: 'Jane Doe',
                  experience: '10 years',
                  rate: '5.0',
                  pic: AssetImage('assets/profile2.jpg'),
                  isonline: true,
                ),
                Babysitters(
                  name: 'John Doe',
                  experience: '22 years',
                  rate: '5.0',
                  pic: AssetImage('assets/profile2.jpg'),
                  isonline: true,
                ),
                Babysitters(
                  name: 'John Doe Jr',
                  experience: '3 years',
                  rate: '5.0',
                  pic: AssetImage('assets/profile2.jpg'),
                  isonline: true,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SizedBox(
        width: constraints.maxWidth,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 25,
            bottom: 10,
          ),
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      );
    });
  }
}
