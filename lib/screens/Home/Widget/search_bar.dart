
import 'package:ecommerceapp/screens/Home/Widget/search_page.dart';
import 'package:ecommerceapp/widgets/constants.dart';
import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const SearchPage()));
      },
      child: Container(
        height: screenHeight * 0.07, // حوالي 55 على شاشة متوسطة
        width: double.infinity,
        decoration: BoxDecoration(
          color: kcontentColor,
          borderRadius: BorderRadius.circular(screenWidth * 0.08),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.05, // تقريبا 20
          vertical: screenHeight * 0.01, // تقريبا 8
        ),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: Colors.grey,
              size: screenWidth * 0.07, // تقريبا 28
            ),
            SizedBox(width: screenWidth * 0.025), // تقريبا 10
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(
                    fontSize: screenWidth * 0.04, // تقريبا 16
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              height: screenHeight * 0.03,
              width: 1.2,
              color: Colors.grey,
            ),
            SizedBox(width: screenWidth * 0.015),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.tune,
                color: Colors.grey,
                size: screenWidth * 0.065, // تقريبا 26
              ),
            ),
          ],
        ),
      ),
    );
  }
}
