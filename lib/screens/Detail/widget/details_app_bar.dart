
import 'package:ecommerceapp/models/product_model.dart';
import 'package:ecommerceapp/provider/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';  // استيراد المكتبة

class DetailsAppBar extends StatelessWidget {
  final Product product;
  const DetailsAppBar({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    final screenWidth = MediaQuery.of(context).size.width;

    // نحدد padding بناءً على حجم الشاشة (مثلاً 3% من عرض الشاشة)
    final paddingValue = screenWidth * 0.03;

    return Padding(
      padding: EdgeInsets.all(paddingValue.clamp(8, 16)), // بين 8 و 16 بكسل
      child: Row(
        children: [
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(paddingValue.clamp(10, 16)),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: screenWidth * 0.06, // حجم الأيقونة نسبي
            ),
          ),
          const Spacer(),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(paddingValue.clamp(10, 16)),
            ),
            onPressed: () {
              final shareText = 'شوف المنتج ده: ${product.title}\n${product.description}\nرابط الصورة: ${product.image}';
              Share.share(shareText);
            },
            icon: Icon(
              Icons.share_outlined,
              size: screenWidth * 0.06,
            ),
          ),
          SizedBox(
            width: screenWidth * 0.02,
          ),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(paddingValue.clamp(10, 16)),
            ),
            onPressed: () {
              provider.toggleFavorite(product);
            },
            icon: Icon(
              provider.isExist(product)
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: Colors.black,
              size: screenWidth * 0.065,
            ),
          ),
        ],
      ),
    );
  }
}