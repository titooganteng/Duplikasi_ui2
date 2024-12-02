import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Item Product Coffee"),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.only(top: 5),
                width: 220,
                decoration: BoxDecoration(
                  color: Colors.brown[50],
                  // borderRadius: const BorderRadius.only(
                  //   topRight: Radius.circular(120),
                  // ),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                        bottomLeft: Radius.circular(100),
                        bottomRight: Radius.circular(100),
                      ),
                      child: Image.network(
                        'https://images.pexels.com/photos/7362647/pexels-photo-7362647.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        width: 250,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text(
                            "Cappucino Coffee",
                            style: TextStyle(
                              color: Colors.brown[700],
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Row( //row agar harga bisa bersandingan
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Rp. 30.000",
                                style: TextStyle(
                                  color: Colors.deepOrange,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Rp. 45.000",
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough, //untuk mencoret harga
                                  color: Colors.brown,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RatingBar.builder(
                                initialRating: 3.5, //jumlah rating awal
                                minRating: 1, //minimal rating
                                direction: Axis.horizontal,
                                allowHalfRating: true, //untuk rating setengah
                                itemCount: 5,
                                itemSize: 18,
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                                ignoreGestures: true, //tidak bisa diganti-ganti
                              ),
                            ],
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            "3.2k reviews",
                            style: TextStyle(
                              color: Colors.brown,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(height: 25),
                          TextButton(
                            onPressed: () {
                              print("shop now");
                            },
                            style: ButtonStyle(padding:
                                WidgetStateProperty.resolveWith((states) {
                              return const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 15);
                            }), backgroundColor:
                                WidgetStateProperty.resolveWith((states) {
                              return Colors.brown[700];
                            }), foregroundColor:
                                WidgetStateProperty.resolveWith((states) {
                              return Colors.white;
                            }), shape:
                                WidgetStateProperty.resolveWith((states) {
                              return RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              );
                            })),
                            child: const Text("Shop Now"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
