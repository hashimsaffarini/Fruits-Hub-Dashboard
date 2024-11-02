import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/utils/app_colors.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox(
      {super.key, required this.isChecked, required this.onChanged});
  final bool isChecked;
  final ValueChanged<bool> onChanged;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!isChecked);
      },
      child: AnimatedContainer(
        width: 24,
        height: 24,
        duration: const Duration(milliseconds: 150),
        decoration: BoxDecoration(
          color: isChecked ? AppColors.primaryColor : Colors.white,
          border: Border.all(
            color: isChecked ? Colors.transparent : const Color(0xFFDCDEDE),
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: isChecked
            ? const Icon(
                Icons.check,
                size: 20,
                color: Colors.white,
              )
            : null,
      ),
    );
  }
}
