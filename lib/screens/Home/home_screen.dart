import 'package:ecommerceapp/models/category.dart';
import 'package:ecommerceapp/models/product_model.dart';
import 'package:ecommerceapp/screens/Home/Widget/home_app_bar.dart';
import 'package:ecommerceapp/screens/Home/Widget/image_slider.dart';
import 'package:ecommerceapp/screens/Home/Widget/product_card.dart';
import 'package:ecommerceapp/screens/Home/Widget/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlider = 0;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    List<List<Product>> selectedCategories = [
      all,
      shoes,
      beauty,
      Woman,
      jewelry,
      man,
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.04),
              const CustomAppBar(),
              SizedBox(height: screenHeight * 0.025),
              const MySearchBar(),
              SizedBox(height: screenHeight * 0.025),
              const ImageSlider(),
              SizedBox(height: screenHeight * 0.03),

              /// Categories
              SizedBox(
                height: screenHeight * 0.20,
                child: ListView.builder(
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final isSelected = selectedIndex == index;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: screenWidth * 0.03),
                        padding: EdgeInsets.all(screenWidth * 0.025),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color:
                              isSelected ? Colors.orange[200] : Colors.white,
                          boxShadow: [
                            if (isSelected)
                              const BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5,
                                offset: Offset(0, 2),
                              ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: screenWidth * 0.18,
                              width: screenWidth * 0.18,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(categories[index].image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            Text(
                              categories[index].title,
                              style: TextStyle(
                                fontSize: screenWidth * 0.035,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: screenHeight * 0.02),

              /// Title Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Special For You",
                    style: TextStyle(
                      fontSize: screenWidth * 0.06,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),

              /// Products Grid
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: selectedCategories[selectedIndex].length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: screenWidth > 600 ? 3 : 2, // responsive count
                  childAspectRatio: 0.75,
                  crossAxisSpacing: screenWidth * 0.04,
                  mainAxisSpacing: screenHeight * 0.02,
                ),
                itemBuilder: (context, index) {
                  return ProductCard(
                    product: selectedCategories[selectedIndex][index],
                  );
                },
              ),
              SizedBox(height: screenHeight * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}