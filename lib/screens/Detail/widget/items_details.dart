import 'package:ecommerceapp/models/product_model.dart';
import 'package:ecommerceapp/widgets/constants.dart';
import 'package:flutter/material.dart';

class ItemsDetails extends StatelessWidget {
  final Product product;
  const ItemsDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final screenWidth = media.size.width;

    // ضبط حجم الخط بشكل نسبي بناءً على عرض الشاشة
    double titleFontSize = screenWidth * 0.065; // تقريباً 25 على شاشة 380
    double priceFontSize = screenWidth * 0.065;
    double rateFontSize = screenWidth * 0.035; // تقريباً 14
    double reviewFontSize = screenWidth * 0.038; // تقريباً 15
    double sellerFontSize = screenWidth * 0.04; // تقريباً 16

    // الحد الأدنى والحد الأقصى للحجم
    titleFontSize = titleFontSize.clamp(18, 28);
    priceFontSize = priceFontSize.clamp(18, 28);
    rateFontSize = rateFontSize.clamp(12, 18);
    reviewFontSize = reviewFontSize.clamp(12, 18);
    sellerFontSize = sellerFontSize.clamp(12, 18);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.title,
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: titleFontSize,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\$${product.price}",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: priceFontSize,
                  ),
                ),
                SizedBox(height: screenWidth * 0.025),
                // for rating
                Row(
                  children: [
                    Container(
                      width: screenWidth * 0.14,  // ~55 px on 380 width screen
                      height: screenWidth * 0.065, // ~25 px
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: kprimarytColor,
                      ),
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.013),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: rateFontSize,
                            color: Colors.white,
                          ),
                          SizedBox(width: screenWidth * 0.008),
                          Text(
                            product.rate.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: rateFontSize,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.013),
                    Text(
                      product.review,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: reviewFontSize,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Text.rich(
              TextSpan(children: [
                TextSpan(
                  text: "Seller: ",
                  style: TextStyle(fontSize: sellerFontSize),
                ),
                TextSpan(
                  text: product.seller,
                  style: TextStyle(
                    fontSize: sellerFontSize,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ]),
            ),
          ],
        ),
      ],
    );
  }
}
