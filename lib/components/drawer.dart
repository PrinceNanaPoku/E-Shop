import 'package:eshop/components/my_list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //logp
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Icon(
                  Icons.shopping_bag,
                  size: 72,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //shop tile
              MyListTile(
                text: 'Shop',
                icon: Icons.shopping_bag,
                onTap: () => Navigator.pop(context),
              ),

              //cart tile
              MyListTile(
                text: 'Cart',
                icon: Icons.shopping_cart,
                onTap: () => Navigator.pushNamed(context, '/cart'),
              ),
            ],
          ),
          //exit
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: MyListTile(
              text: 'Exit',
              icon: Icons.logout,
              onTap: () => Navigator.pushNamed(context, '/intro'),
            ),
          ),
        ],
      ),
    );
  }
}
