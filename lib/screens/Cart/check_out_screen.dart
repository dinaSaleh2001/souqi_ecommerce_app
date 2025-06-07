import 'package:ecommerceapp/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommerceapp/provider/cart_provider.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _expiryDateController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _cardNumberController.dispose();
    _expiryDateController.dispose();
    _cvvController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    double totalPrice = 0;
    for (var item in cartProvider.cart) {
      totalPrice += item.price * item.quantity;
    }

    // حجم الشاشة
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    const padding = 16.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Checkout',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: kprimarytColor,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(padding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Order Summary',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: cartProvider.cart.length,
                itemBuilder: (context, index) {
                  final item = cartProvider.cart[index];
                  return ListTile(
                    leading: Image.asset(item.image,
                        width: width * 0.12,
                        height: width * 0.12,
                        fit: BoxFit.cover),
                    title: Text(item.title,
                        style: TextStyle(fontSize: width * 0.04)),
                    subtitle: Text('Quantity: ${item.quantity}',
                        style: TextStyle(fontSize: width * 0.035)),
                    trailing: Text(
                      '\$${(item.price * item.quantity).toStringAsFixed(2)}',
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                  );
                },
              ),
              Divider(height: height * 0.04, thickness: 1),
              Text(
                'Total: \$${totalPrice.toStringAsFixed(2)}',
                style: TextStyle(
                    fontSize: width * 0.05, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: height * 0.03),
              const Text(
                'Address',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: height * 0.015),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _addressController,
                      decoration: const InputDecoration(
                        labelText: 'Enter your address',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your address';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: height * 0.03),
                    const Text(
                      'Payment Information',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: height * 0.015),
                    TextFormField(
                      controller: _nameController,
                      decoration: const InputDecoration(
                        labelText: 'Cardholder Name',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the cardholder name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: height * 0.02),
                    TextFormField(
                      controller: _cardNumberController,
                      decoration: const InputDecoration(
                        labelText: 'Card Number',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      maxLength: 16,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the card number';
                        }
                        if (value.length != 16) {
                          return 'Card number must be 16 digits';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: height * 0.02),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: _expiryDateController,
                            decoration: const InputDecoration(
                              labelText: 'Expiry Date (MM/YY)',
                              border: OutlineInputBorder(),
                            ),
                            keyboardType: TextInputType.datetime,
                            maxLength: 5,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter the expiry date';
                              }
                              RegExp regExp =
                                  RegExp(r'^(0[1-9]|1[0-2])\/\d{2}$');
                              if (!regExp.hasMatch(value)) {
                                return 'Invalid format';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(width: width * 0.04),
                        Expanded(
                          child: TextFormField(
                            controller: _cvvController,
                            decoration: const InputDecoration(
                              labelText: 'CVV',
                              border: OutlineInputBorder(),
                            ),
                            keyboardType: TextInputType.number,
                            maxLength: 3,
                            obscureText: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter the CVV';
                              }
                              if (value.length != 3) {
                                return 'CVV must be 3 digits';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.03),
                    SizedBox(
                      width: double.infinity,
                      height: height * 0.07,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            cartProvider.clearCart();

                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text(
                                  'Order Confirmed',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: kprimarytColor,
                                  ),
                                ),
                                content: Text(
                                  'Thank you for your order!\n\n'
                                  'Delivery Address:\n${_addressController.text}\n\n'
                                  'Your order will be prepared soon.',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                actions: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: kprimarytColor),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .popUntil((route) => route.isFirst);
                                    },
                                    child: const Text(
                                      'OK',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kprimarytColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          'Confirm Order',
                          style: TextStyle(
                            fontSize: width * 0.05,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
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