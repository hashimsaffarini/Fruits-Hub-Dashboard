import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/utils/app_colors.dart';
import 'package:fruits_hub_dashboard/core/utils/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
  });
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        backgroundColor: AppColors.primaryColor,
        minimumSize: const Size(double.infinity, 54),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyles.bold16.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
