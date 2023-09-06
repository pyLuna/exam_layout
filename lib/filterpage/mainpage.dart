import 'package:flutter/material.dart';
import 'package:layout_exam/filterpage/price.dart';
import 'package:layout_exam/main.dart';

void main() {
  runApp(const FilterMain());
}

class FilterMain extends StatelessWidget {
  const FilterMain({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FilterAppBar(),
    );
  }
}

class FilterAppBar extends StatelessWidget {
  const FilterAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          children: [
            ClipOval(
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.blue[300],
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyWidget()));
                  },
                  icon: const Icon(Icons.chevron_left),
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 5),
              child: Text(
                'Filter by',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 8),
            child: Card(
              elevation: 5,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.cleaning_services,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  width: constraints.maxWidth,
                  height: 80,
                  child: const Text(
                    'Price',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                const Row(
                  children: [
                    DropdownWidget(hint: 'Min'),
                    SizedBox(
                      width: 10,
                    ),
                    DropdownWidget(hint: 'Max'),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
