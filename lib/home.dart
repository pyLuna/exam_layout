import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.search),
                          hintText: 'Search',
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              Container(
                  decoration: const BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.settings),
                  )),
            ],
          ),
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              children: [
                HorizontalCard(text: 'How to find a Nanny', color: Colors.blue),
                HorizontalCard(text: "Let's play together", color: Colors.pink),
                HorizontalCard(text: '3rd card text', color: Colors.green),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class HorizontalCard extends StatelessWidget {
  const HorizontalCard({super.key, required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Container(
        height: 140,
        width: 200,
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            boxShadow: const <BoxShadow>[
              BoxShadow(
                color: Colors.black54,
                blurRadius: 15.0,
                offset: Offset(3.0, 0),
              )
            ]),
        child: Text(
          text,
          softWrap: true,
        ),
      ),
    );
  }
}
