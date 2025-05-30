import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nti_task/core/utls/app_images.dart';

import '../core/utls/app_colors.dart';
class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color color;
  final String? image;
  const CustomButton({super.key,  this.onPressed, required this.color,  this.image});

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
          Image.asset(image!,height: 20,),
          SizedBox(width: 5),
          Text('Place Bid', style: TextStyle(color: AppColors.white)),
        ],
      ),
    );
  }
}
