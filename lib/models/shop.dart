import 'package:flutter/material.dart';

import 'product.dart';

class Shop extends ChangeNotifier {
  //list of products
  final List<Product> _shop = [
    Product(
      name: 'Nike SB Blazer',
      price: 110,
      description:
          'Skateboard legacy meets street style. Elevate your skate game and street cred with the iconic Blazer',
      imagePath: 'images/blazer.jpg',
    ),
    Product(
      name: 'Cap',
      price: 25,
      description:
          'The Big Apple on your Head: Authentic New York Cap. Rep the city that never sleeps with style and pride',
      imagePath: 'images/cap.webp',
    ),
    Product(
      name: 'Denim Jeans',
      price: 100,
      description:
          'Elevate your style with premium denim jeans. Experience the perfect blend of comfort, style and durability with denim jeans',
      imagePath: 'images/denim_jeans.jpg',
    ),
    Product(
      name: 'Jacket',
      price: 65,
      description:
          'Sleek design, breathable, moisture-wicking fabric for optimal performance',
      imagePath: 'images/jacket.jpg',
    ),
    Product(
      name: 'Jacket 2',
      price: 50,
      description:
          'Warmth, Comfort and Unrivaled Style for the Urban Adventurer',
      imagePath: 'images/jacket2.avif',
    ),
    Product(
      name: 'Jordan 4',
      price: 125,
      description:
          "Classic colorways and fresh collaborations, premium material and construction. Available in men's, women's and kid's sizes",
      imagePath: 'images/jordan4.webp',
    ),
    Product(
      name: 'Mancera Red Tobacco',
      price: 105,
      description:
          'Mancera Red Tobacco embodies confidence, sophistication, and unbridled passion. Perfect for evening wear, this long-lasting fragrance leaves a lasting impression',
      imagePath: 'images/mancera_red_tobacco.webp',
    ),
    Product(
      name: 'Spicebomb Extreme',
      price: 200,
      description:
          'Ignite the senses with Spicebomb Extreme, a daring and seductive fragrance for the fearless',
      imagePath: 'images/spicebomb_extreme.jpg',
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
