import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarListView(),
    );
  }
}

class BelajarListView extends StatelessWidget {
  final List bulan = [
    "Backpack",
    "Waist Bag",
    "Envelope Bag",
    "Bucket Bag",
    "Cross Body Bacpack",
    "Messenger Bag",
    "Shoulder Bag",
    "Minaudiere Bag",
    "Drawstring Bag",
    "Saddle Bag",
    "Quilted Bag",
    "Mini Backpack",
    "Totebag",
    "Clutch",
    "Half Moon Bag",
    "Flap Bag",
    "Baguette Bag",
    "Sling Bag",
    "Shopper Bag",
    "Wristlet"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1DB9C3),
        title: Text("Jenis Tas"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(bulan[index], style: TextStyle(fontSize: 20)),
            ),
          );
        },
        itemCount: bulan.length,
      ),
    );
  }
}
