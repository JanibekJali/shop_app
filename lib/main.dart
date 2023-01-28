import 'package:flutter/material.dart';
import 'package:shop_app/shop/presentation/pages/welcome_page/welcome_page.dart';

void main() {
  runApp(const ShopApp());
}

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      home: WelcomePage(),
    );
  }
}
