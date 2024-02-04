import 'package:flutter/material.dart';
import 'package:todo_app/models/product.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
    // product 1
    Product(
      name: "Product 1",
      price: 99.99,
      description:
          "Iteam description.. more description to describe the product more info",
      imagePath: 'assets/hoodie.png',
    ),
    // product 2
    Product(
      name: "Product 2",
      price: 99.99,
      description: "Iteam description..",
      imagePath: 'assets/glasses.png',
    ),
    // product 3
    Product(
      name: "Product 3",
      price: 99.99,
      description: "Iteam description..",
      imagePath: 'assets/shoes.png',
    ),
    // product 4
    Product(
      name: "Product 4",
      price: 99.99,
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
