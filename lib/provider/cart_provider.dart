import 'package:ecommerceapp/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartProvider extends ChangeNotifier {
  final List<Product> _cart = [];
  List<Product> get cart => _cart;
  void toggleFavorite(Product product) {
    if (_cart.contains(product)) {
      for (Product element in _cart) {
        element.quantity++;
      }
    } else {
      _cart.add(product);
    }
    notifyListeners();
  }

 
  void incrementQtn(int index) {
    if (index >= 0 && index < cart.length) {
      cart[index].quantity++;
      notifyListeners();
    }
  }

  void decrementQtn(int index) {
    if (index >= 0 && index < cart.length) {
      if (cart[index].quantity > 1) {
        cart[index].quantity--;
        notifyListeners();
      }
    }
  }

  void removeItem(int index) {
    if (index >= 0 && index < cart.length) {
      cart.removeAt(index);
      notifyListeners();
    }
  }
 void clearCart() {
  _cart.clear();
  notifyListeners();
}
  totalPrice() {
    double total1 = 0.0;
    for (Product element in _cart) {
      total1 += element.price * element.quantity;
    }
    return total1;
  }

  static CartProvider of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<CartProvider>(
      context,
      listen: listen,
    );
  }
}
