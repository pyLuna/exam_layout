import 'package:flutter/material.dart';

import '../main.dart';
import 'addition_option.dart';
import 'dist_slider.dart';
import 'online.dart';
import 'price.dart';
import 'see_all.dart';
import 'text_button.dart';

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
        toolbarHeight: 100,
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
            padding: const EdgeInsets.all(20),
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
                HeaderTitle(
                  title: 'Price',
                  constraints: constraints.maxWidth,
                ),
                const Row(
                  children: [
                    DropdownWidget(hint: 'Min'),
                    SizedBox(width: 10),
                    DropdownWidget(hint: 'Max'),
                  ],
                ),
                HeaderTitle(
                  title: 'Distance',
                  constraints: constraints.maxWidth,
                ),
                SizedBox(
                  width: constraints.maxWidth,
                  child: const DistanceSlider(),
                ),
                const SizedBox(height: 20),
                const OnlineNow(),
                HeaderTitle(
                    title: 'Sorting by', constraints: constraints.maxWidth),
                TextButtons(
                  constraints: constraints.maxWidth,
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HeaderTitle(
                          title: 'Additions',
                          constraints: constraints.maxWidth / 2,
                        ),
                        const SeeAll(),
                      ],
                    ),
                    SizedBox(
                      height: 280,
                      width: constraints.maxWidth,
                      child: const Column(
                        children: [
                          Options(
                            text: 'Without bad habits',
                          ),
                          Options(
                            text: 'Knows how to give first aid',
                          ),
                          Options(
                            text: 'Multitasking and stress resistant',
                          ),
                          Options(
                            text: 'Has own baby monitor',
                          ),
                          Options(
                            text: 'Super ability to swaddle in the air',
                          ),
                          Options(
                            text: 'Can take out the trash',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: FindButton(
                    width: constraints.maxWidth,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class FindButton extends StatelessWidget {
  const FindButton({
    super.key,
    required this.width,
  });
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {},
        child: const Text(
          'Find a nanny!',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({
    super.key,
    required this.title,
    required this.constraints,
  });
  final String title;
  final double constraints;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      width: constraints,
      height: 50,
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
