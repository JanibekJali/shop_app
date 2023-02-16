import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/shop/presentation/pages/main_pages/customer_pages/customer_page.dart';
import 'package:shop_app/shop/presentation/pages/main_pages/customer_pages/profile_page/profile_page.dart';
import 'package:shop_app/shop/presentation/pages/main_pages/home_page.dart';
import 'package:shop_app/shop/presentation/pages/register_page/customers/customer_login_page.dart';
import 'package:shop_app/shop/presentation/pages/register_page/customers/customer_sign_up_page.dart';

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
      home: ProfilePage(),
      // initialRoute: '/welcome_page',
      routes: {
        '/welcome_page': (context) => WelcomePage(),
        '/home_page': (context) => HomePage(),
        '/customer_signup_page': (context) => CustomerSignUpPage(),
        '/customer_page': (context) => CustomerPage(),
        '/customer_login_page': (context) => CustomerLogInPage(),
      },
    );
  }
}
