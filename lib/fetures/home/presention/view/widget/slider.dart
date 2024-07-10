import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:task_mul/fetures/home/presention/view/widget/iteamsilderone.dart';
import 'package:task_mul/fetures/home/presention/view/widget/promotiteamtwo.dart';
import 'package:task_mul/main.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        enlargeCenterPage: true,
        aspectRatio: 30 / 10,
        viewportFraction: 0.8,
      ),
      items: [Promoted(), Promotedwo()].map((widget) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(color: Colors.transparent),
              child: widget,
            );
          },
        );
      }).toList(),
    );
  }
}
