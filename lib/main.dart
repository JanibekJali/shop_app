import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/shop/presentation/pages/main_pages/home_page.dart';
import 'package:shop_app/shop/presentation/pages/register_page/sign_up_page.dart';

import 'shop/presentation/pages/welcome_page/welcome_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ShopApp());
}

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        '/signup_page': (context) => SignUpPage(),
        '/home_page': (context) => HomePage(),
      },
    );
  }
}
