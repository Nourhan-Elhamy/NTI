import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nti_task/core/utls/app_images.dart';

import '../core/utls/app_colors.dart';
class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color color;
  final String? image;
  const CustomButton({super.key,  this.onPressed, required this.color,  this.image, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [

          SizedBox(width: 5),
          Text(text, style: TextStyle(color: AppColors.white)),
        ],
      ),
    );
  }
}
