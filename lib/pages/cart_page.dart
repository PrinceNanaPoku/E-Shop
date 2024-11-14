import 'package:eshop/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';
import '../models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  //remove item from cart
  void removeItemFromCart(BuildContext context, Product product) {
    //show a dialog box to ask user to confirm to remove from cart
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Text('Remove from Cart'),
        actions: [
          //cancel button
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),

          //yes button
          MaterialButton(
            onPressed: () {
              //pop dialog box
              Navigator.pop(context);

              //remove from cart
              context.read<Shop>().removeFromCart(product);
            },
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }

  //user pressed pay now button
  void payNowButton(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        content: Text('User wants to pay now. Connect to your pay now backend'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //get access to cart
    final cart = context.watch<Shop>().userCart;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          'Cart Page',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: cart.isEmpty
                ? const Center(
                    child: Text(
                      'Cart is Empty',
                    ),
                  )
                : ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (context, index) {
                      //get individual item in cart
                      final cartItem = cart[index];
                      //return as cart tile UI
                      return ListTile(
                        title: Text(cartItem.name),
                        subtitle: Text(
                          cartItem.price.toStringAsFixed(2),
                        ),
                        trailing: IconButton(
                          onPressed: () =>
                              removeItemFromCart(context, cartItem),
                          icon: const Icon(Icons.delete),
                        ),
                      );
                    },
                  ),
          ),
          //pay button

          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: MyButton(
              onTap: () => payNowButton(context),
              child: const Text('Pay Now'),
            ),
          ),
        ],
      ),
    );
  }
}
