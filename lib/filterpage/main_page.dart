import 'package:flutter/material.dart';
import 'package:layout_exam/filterpage/header_title.dart';

import '../main.dart';
import 'addition_option.dart';
import 'dist_slider.dart';
import 'find_button.dart';
import 'online.dart';
import 'price.dart';
import 'see_all.dart';
import 'text_button.dart';

void main() {
  runApp(const FilterMain());
}

ThemeData filterTheme = ThemeData(
  // useMaterial3: true,
  primaryColor: Colors.blue,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.purple,
  ),
);

class FilterMain extends StatelessWidget {
  const FilterMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: filterTheme,
      home: const FilterAppBar(),
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
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              ClipOval(
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
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
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadowColor: Colors.black26,
              elevation: 5,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.cleaning_services_outlined,
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
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: ListView(
              children: [
                HeaderTitle(
                  title: 'Price',
                  constraints: constraints.maxWidth,
                ),
                SizedBox(
                  width: constraints.maxWidth,
                  child: const Row(
                    children: [
                      DropdownWidget(hint: 'Min'),
                      SizedBox(width: 10),
                      DropdownWidget(hint: 'Max'),
                    ],
                  ),
                ),
                HeaderTitle(
                  title: 'Distance',
                  constraints: constraints.maxWidth,
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 60,
                  width: constraints.maxWidth,
                  child: const DistanceSlider(),
                ),
                const OnlineNow(),
                HeaderTitle(
                    title: 'Sorting by', constraints: constraints.maxWidth),
                const SizedBox(height: 5),
                TextButtons(
                  constraints: constraints.maxWidth,
                ),
                const SizedBox(height: 5),
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
                      height: constraints.maxHeight / 3.3,
                      child: Card(
                        shadowColor: Colors.black26,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListView(
                          children: const [
                            SizedBox(
                              height: 10,
                            ),
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
                            SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: FindButton(
                    width: constraints.maxWidth,
                  ),
                ),
              ],
            ),
          );
        },
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: FloatingActionButton.extended(
      //   // shape: ,
      //   label: const Text('Find A Nanny!'),
      //   onPressed: () {},
      // ),
    );
  }
}
