import 'package:flutter/material.dart';
import 'package:shop_app/app/widgets/app_bar/search_widget.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: SearchWidget(),
        backgroundColor: Colors.grey.shade200,
      ),
    );
  }
}
