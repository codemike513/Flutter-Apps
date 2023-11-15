import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyCarousel()));

class MyCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
              height: 400.0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 2),
              enlargeCenterPage: true),
          items: _images.map((imagepath) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Image.asset(imagepath),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }

  final List _images = [
    "assets/Book.jpg",
    "assets/Camera.jpg",
    "assets/Cat.jpg",
    "assets/Ferrari.jpg",
    "assets/Hat.jpg",
    "assets/Table.jpg",
  ];
}
