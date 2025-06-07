import 'package:ecommerceapp/screens/Cart/check_out_screen.dart';
import 'package:ecommerceapp/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommerceapp/provider/cart_provider.dart';

class CheckOutBox extends StatelessWidget {
  const CheckOutBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    double totalPrice = 0;
    for (var item in cartProvider.cart) {
      totalPrice += item.price * item.quantity;
    }

    // نحصل على عرض الشاشة وارتفاعها
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      // نعطي الارتفاع نسبة من ارتفاع الشاشة عوضًا عن قيمة ثابتة
      height: screenHeight * 0.12,
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.05,
        vertical: screenHeight * 0.015,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 10,
            offset: const Offset(0, -2),
          )
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // نخلي العمود يأخذ أقل مساحة ممكنة لكنه مرن في عرض النص
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 5),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    '\$${totalPrice.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // زر الدفع يأخذ مساحة مناسبة بناءً على عرض الشاشة
          SizedBox(
            width: screenWidth * 0.4,
            height: double.infinity,
            child: ElevatedButton(
              onPressed: cartProvider.cart.isEmpty
                  ? null
                  : () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CheckOutScreen(),
                        ),
                      );
                    },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.05,
                  vertical: screenHeight * 0.02,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: kprimarytColor,
                disabledBackgroundColor: Colors.grey.shade400,
              ),
              child: const FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'Checkout',
                  style: TextStyle(
                    fontSize: 18,
                    color: kcontentColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}