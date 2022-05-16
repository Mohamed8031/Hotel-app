import 'package:flutter/material.dart';
import 'package:hotel_screen/reusable_components.dart';
import 'package:hotel_screen/reusable_components.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Explore',
          style: TextStyle(
            color: Colors.purple,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: Colors.purple, //change your color here
        ),
        actions: const [
          Icon(Icons.ac_unit),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 53,
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    filled: true,
                    hintStyle:
                        const TextStyle(fontSize: 18, color: Colors.black54),
                    hintText: "Search",
                    fillColor: Colors.purple[50],
                    prefixIcon: const Icon(Icons.search),
                  ),
                ),
              ),
              // Row(
              //   mainAxisSize: MainAxisSize.max,
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Container(
              //       decoration: BoxDecoration(
              //         color: Colors.purple[50],
              //         borderRadius: BorderRadius.circular(20),
              //       ),
              //       child: const Padding(
              //         padding:
              //             EdgeInsets.symmetric(horizontal: 18.0, vertical: 11),
              //         child: Text(
              //           'Search',
              //           style: TextStyle(fontSize: 18, color: Colors.black54),
              //         ),
              //       ),
              //     ),
              //     ElevatedButton(
              //         onPressed: () {},
              //         child: const Icon(Icons.search),
              //         style: ButtonStyle(
              //             shape: MaterialStateProperty.all<
              //                     RoundedRectangleBorder>(
              //                 RoundedRectangleBorder(
              //                     borderRadius: BorderRadius.circular(18.0),
              //                     side: const BorderSide(color: Colors.red))))),
              //   ],
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            SizedBox(height: 10),
                            Text('Choose Date',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black54)),
                            SizedBox(height: 7),
                            Text('12 Dec - 20 Dec',
                                style: TextStyle(fontSize: 20)),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.black45,
                            height: 60,
                            width: 2,
                          ),
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 10),
                            Text('Number of rooms',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black54)),
                            SizedBox(height: 7),
                            Text('1 Room - 2 Adults',
                                style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.home, color: Colors.purple),
                            SizedBox(width: 6),
                            Text('530 Hotels Found',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.purple)),
                          ],
                        ),
                        Row(
                          children: const [
                            Text('Filters',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.purple)),
                            SizedBox(width: 6),
                            Icon(Icons.filter_alt, color: Colors.purple),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  defaultCard(),
                  defaultCard(),
                  defaultCard(),
                  defaultCard(),
                  defaultCard(),
                  defaultCard(),
                  defaultCard(),
                  defaultCard(),
                  defaultCard(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
