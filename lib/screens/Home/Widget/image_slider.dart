import 'dart:async';
import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  final PageController _pageController = PageController();
  int currentSlide = 0;
  late Timer _timer;

  final List<String> images = [
    'assets/images/Group 5.png',
    'assets/images/Group 5.png',
    'assets/images/Group 5.png',
  ];

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (currentSlide < images.length - 1) {
        currentSlide++;
      } else {
        currentSlide = 0;
      }
      _pageController.animateToPage(
        currentSlide,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
      setState(() {});
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        SizedBox(
          height: screenHeight * 0.25, // حوالي 200-220 حسب الشاشة
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(screenWidth * 0.035), // تقريبا 15
            child: PageView.builder(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  currentSlide = index;
                });
              },
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
        ),
        Positioned.fill(
          bottom: screenHeight * 0.015, // المسافة من الأسفل
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                images.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: currentSlide == index
                      ? screenWidth * 0.04
                      : screenWidth * 0.02,
                  height: screenHeight * 0.01,
                  margin: EdgeInsets.only(right: screenWidth * 0.015),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: currentSlide == index
                        ? Colors.black
                        : Colors.transparent,
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}