import 'package:ecommerceapp/models/product_model.dart';
import 'package:ecommerceapp/screens/Detail/widget/addto_cart.dart';
import 'package:ecommerceapp/screens/Detail/widget/description.dart';
import 'package:ecommerceapp/screens/Detail/widget/details_app_bar.dart';
import 'package:ecommerceapp/screens/Detail/widget/image_slider.dart';
import 'package:ecommerceapp/screens/Detail/widget/items_details.dart';
import 'package:ecommerceapp/widgets/constants.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int currentImage = 0;
  int currentColor = 1;

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final screenWidth = media.size.width;
    final screenHeight = media.size.height;

    return Scaffold(
      backgroundColor: kcontentColor,
      floatingActionButton: AddtoCart(product: widget.product),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailsAppBar(product: widget.product),

              // Image slider with height relative to screen height
              SizedBox(
                height: screenHeight * 0.35,
                child: MyImageSlider(
                  onChange: (index) {
                    setState(() {
                      currentImage = index;
                    });
                  },
                  image: widget.product.image,
                ),
              ),

              const SizedBox(height: 10),

              // Indicators with flexible sizing
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: currentImage == index ? 15 : 8,
                    height: 8,
                    margin: const EdgeInsets.only(right: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentImage == index ? Colors.black : Colors.transparent,
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Details container with rounded corners and responsive padding
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.06,
                  vertical: screenHeight * 0.03,
                ).copyWith(bottom: screenHeight * 0.12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ItemsDetails(product: widget.product),

                    SizedBox(height: screenHeight * 0.025),

                    const Text(
                      "Color",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),

                    SizedBox(height: screenHeight * 0.025),

                    Row(
                      children: List.generate(
                        widget.product.colors.length,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              currentColor = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            width: screenWidth * 0.12, // responsive width & height
                            height: screenWidth * 0.12,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentColor == index ? Colors.white : widget.product.colors[index],
                              border: currentColor == index
                                  ? Border.all(color: widget.product.colors[index])
                                  : null,
                            ),
                            padding: currentColor == index ? const EdgeInsets.all(2) : null,
                            margin: EdgeInsets.only(right: screenWidth * 0.03),
                            child: Container(
                              width: screenWidth * 0.1,
                              height: screenWidth * 0.1,
                              decoration: BoxDecoration(
                                color: widget.product.colors[index],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: screenHeight * 0.03),

                    Description(description: widget.product.description),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}