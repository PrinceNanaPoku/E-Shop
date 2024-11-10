import 'package:eshop/components/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/drawer.dart';
import '../models/shop.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    //access products in shop
    final products = context.watch<Shop>().shop;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Shop Page'),
      ),
      drawer: const MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            //get each individual product from shop
            final product = products[index];
            //return as a product tile UI
            return MyProductTile(product: product);
          }),
    );
  }
}
