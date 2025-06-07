import 'package:ecommerceapp/provider/cart_provider.dart';
import 'package:ecommerceapp/screens/Cart/check_out.dart';
import 'package:ecommerceapp/widgets/constants.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    final cartItems = provider.cart;

    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    // استخدم أبعاد نسبية بدلاً من أرقام ثابتة
    double horizontalPadding = screenWidth * 0.04; // 4% من عرض الشاشة
    double verticalPadding = screenHeight * 0.01; // 1% من ارتفاع الشاشة
    double imageWidth = screenWidth * 0.25; // 25% من عرض الشاشة
    double imageHeight = imageWidth * 1.2; // تناسب الصورة
    double iconSize = screenWidth * 0.06; // 6% من عرض الشاشة

    Widget productQuantity(IconData icon, int index) {
      bool isRemove = icon == Icons.remove;
      final item = cartItems[index];
      return GestureDetector(
        onTap: () {
          if (isRemove && item.quantity == 1)
            return; // عدم السماح بالتقليل تحت 1
          setState(() {
            if (icon == Icons.add) {
              provider.incrementQtn(index);
            } else {
              provider.decrementQtn(index);
            }
          });
        },
        child: Container(
          padding: EdgeInsets.all(iconSize * 0.3),
          decoration: BoxDecoration(
            color: isRemove && item.quantity == 1
                ? Colors.grey[300]
                : kcontentColor,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Icon(
            icon,
            size: iconSize,
            color: isRemove && item.quantity == 1 ? Colors.grey : Colors.black,
          ),
        ),
      );
    }

    Future<void> _confirmRemove(int index) async {
      bool? confirmed = await showDialog<bool>(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text(
            "Confirmation deletion",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: const Text(
            "Are you sure you want to remove this product from the cart?",
            style: TextStyle(fontSize: 20),
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(ctx, false),
                child: const Text('cancel')),
            ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: kprimarytColor),
                onPressed: () => Navigator.pop(ctx, true),
                child: const Text(
                  'delete',
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      );

      if (confirmed == true) {
        setState(() {
          provider.removeItem(index);
        });
      }
    }

    return Scaffold(
      appBar: AppBar(
        
        title: const Text(
          'Cart',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: kprimarytColor,
        centerTitle: true,
      ),
      bottomSheet: CheckOutBox(),
      backgroundColor: kcontentColor,
      body: SafeArea(
        child: Column(
          children: [
            
            // List of Cart Items
            Expanded(
              child: cartItems.isEmpty
                  ? const Center(
                      child: Text(
                        "The cart is empty.",
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    )
                  : ListView.builder(
                      itemCount: cartItems.length,
                      itemBuilder: (context, index) {
                        final item = cartItems[index];
                        final totalPrice = item.price * item.quantity;
                        return Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: horizontalPadding,
                            vertical: verticalPadding,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            padding: EdgeInsets.all(horizontalPadding * 0.6),
                            child: Row(
                              children: [
                                // Image
                                Container(
                                  height: imageHeight,
                                  width: imageWidth,
                                  decoration: BoxDecoration(
                                    color: kcontentColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: EdgeInsets.all(imageWidth * 0.1),
                                  child: Image.asset(item.image),
                                ),
                                SizedBox(width: screenWidth * 0.03),

                                // Details
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item.title,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: screenWidth * 0.045,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(height: screenHeight * 0.005),
                                      Text(
                                        item.category,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: screenWidth * 0.04,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(height: screenHeight * 0.008),
                                      Text(
                                        "\$${item.price.toStringAsFixed(2)}",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: screenWidth * 0.04,
                                        ),
                                      ),
                                      SizedBox(height: screenHeight * 0.005),
                                      Text(
                                        "Total: \$${totalPrice.toStringAsFixed(2)}",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: screenWidth * 0.04,
                                          color: kprimarytColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                // Delete & Quantity controls
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      onPressed: () => _confirmRemove(index),
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                        size: iconSize,
                                      ),
                                    ),
                                    SizedBox(height: screenHeight * 0.015),
                                    Container(
                                      height: screenHeight * 0.055,
                                      decoration: BoxDecoration(
                                        color: kcontentColor,
                                        border: Border.all(
                                          color: Colors.green.shade200,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(width: screenWidth * 0.02),
                                          productQuantity(Icons.add, index),
                                          SizedBox(width: screenWidth * 0.02),
                                          Text(
                                            item.quantity.toString(),
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: screenWidth * 0.045,
                                            ),
                                          ),
                                          SizedBox(width: screenWidth * 0.02),
                                          productQuantity(Icons.remove, index),
                                          SizedBox(width: screenWidth * 0.02),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
