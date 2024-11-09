import 'package:eshop/theme/light_mode.dart';
import 'package:flutter/material.dart';

import 'pages/intro_page.dart';
import 'pages/shop_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: lightMode,
      routes: {
        '/intro': (context) => const IntroPage(),
        '/shop': (context) => const ShopPage()
      },
    );
  }
}
