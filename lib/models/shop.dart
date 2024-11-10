import 'package:flutter/material.dart';

import 'product.dart';

class Shop extends ChangeNotifier {
  //list of products
  final List<Product> _shop = [
    Product(
      name: 'Product 1',
      price: 8.99,
      description: 'description',
    ),
    Product(
      name: 'Product 2',
      price: 8.99,
      description: 'description',
    ),
    Product(
      name: 'Product 3',
      price: 8.99,
      description: 'description',
    ),
    Product(
      name: 'Product 4',
      price: 8.99,
      description: 'description',
    ),
  ];

  //user cart
  final List<Product> _userCart = [];

  //get product list
  List<Product> get shop => _shop;

  //get user cart
  List<Product> get userCart => _userCart;

  //add item to cart
  void addToCart(Product item) {
    _userCart.add(item);
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(Product item) {
    _userCart.remove(item);
    notifyListeners();
  }
}
