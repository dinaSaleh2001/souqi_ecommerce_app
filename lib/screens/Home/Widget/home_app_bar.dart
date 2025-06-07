import 'package:ecommerceapp/widgets/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final buttonPadding = screenWidth * 0.045; // تقريباً 16-20 حسب الجهاز

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: kcontentColor,
            padding: EdgeInsets.all(buttonPadding),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onPressed: () {},
          icon: Icon(Icons.apps, size: screenWidth * 0.065), // حجم الأيقونة
        ),
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: kcontentColor,
            padding: EdgeInsets.all(buttonPadding),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onPressed: () {},
          iconSize: screenWidth * 0.07,
          icon: const Icon(Icons.notifications_outlined),
        ),
      ],
    );
  }
}