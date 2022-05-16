import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Widget defaultCard({
  String? text,
}) =>
    Column(
      children: [
        Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: SizedBox(
              width: double.infinity,
              height: 230,
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 100,
                    color: Colors.white.withOpacity(0.6),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Grand Royal Hotel',
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.deepPurple)),
                              const Text('Pyramid st, Giza',
                                  style: TextStyle(fontSize: 18)),
                              const SizedBox(height: 10),
                              RatingBar.builder(
                                itemSize: 25,
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print('');
                                },
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: const [
                                  Text('2500',
                                      style: TextStyle(
                                          color: Colors.deepPurple, fontSize: 25)),
                                  Text(' EGP',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20)),
                                ],
                              ),
                              const Text('/ Per night', style: TextStyle(fontSize: 18)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )),
        const SizedBox(height: 8),
      ],
    );
