import 'package:apexology/screens/landing/landing_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingCarousel extends StatelessWidget {
  const LandingCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LandingController());
    final double height = MediaQuery.of(context).size.height;

    return CarouselSlider(
      options: CarouselOptions(
          height: height,
          viewportFraction: 1.0,
          enlargeCenterPage: false,
          autoPlay: true,
          autoPlayInterval: const Duration(milliseconds: 5000)),
      items: controller.landingCarouselList
          .map((item) => Image.asset(
                item,
                height: height,
                fit: BoxFit.cover,
              ))
          .toList(),
    );
  }
}
