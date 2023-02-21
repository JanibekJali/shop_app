import 'package:flutter/material.dart';
import 'package:shop_app/app/constants/colors/app_colors.dart';

class LogSignWidget extends StatelessWidget {
  const LogSignWidget({
    super.key,
    required this.title,
    required this.onTap,
  });
  final String title;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.yellowShade600,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 9),
          child: Text(
            title,
            style: TextStyle(
                color: AppColors.black,
                fontSize: 15,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
