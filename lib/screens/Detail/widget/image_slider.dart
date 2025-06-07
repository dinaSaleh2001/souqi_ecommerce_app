import 'package:flutter/material.dart';

class MyImageSlider extends StatelessWidget {
  final Function(int) onChange;
  final String image;
  const MyImageSlider({super.key, required this.onChange, required this.image});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final sliderHeight = screenHeight * 0.35; // 35% من ارتفاع الشاشة

    return SizedBox(
      height: sliderHeight.clamp(200, 350), // بين 200 و 350 بكسل
      child: PageView.builder(
        onPageChanged: onChange,
        itemBuilder: (context, index) {
          return Hero(
            tag: image,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          );
        },
        // لو عندك مجموعة صور، لازم تضيف itemCount هنا
      ),
    );
  }
}