import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/shop.dart';
import 'package:todo_app/pages/cart_page.dart';
import 'package:todo_app/pages/shop_page.dart';
import 'package:todo_app/themes/light_mode.dart';
import 'pages/second_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SecondPage(),
      theme: lightMode,
      routes: {
        '/second_page': (context) => const SecondPage(),
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': (context) => const CartPage(),
      },
    );
  }
}
