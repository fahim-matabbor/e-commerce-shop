import 'package:flutter/material.dart';
import 'package:todo_app/models/product.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
    // product 1
    Product(
      name: "REALME BUDS AIR",
      price: 3.80,
      description:
          "Iteam description.. more description to describe the product more info",
      imagePath: 'assets/realme2.png',
    ),
    // product 2
    Product(
      name: "M10 TWS",
      price: 3.90,
      description: "Iteam description..",
      imagePath: 'assets/m103.png',
    ),
    // product 3
    Product(
      name: "M90 PRO",
      price: 4.50,
      description: "Iteam description..",
      imagePath: 'assets/m90.png',
    ),
    // product 4
    Product(
      name: "WATCH",
      price: 3,
      description: "Iteam description..",
      imagePath: 'assets/watch.png',
    ),
  ];

  // user card
  List<Product> _cart = [];

  // get product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product iteam) {
    _cart.add(iteam);
    notifyListeners();
  }

  // remove iteam to the cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
