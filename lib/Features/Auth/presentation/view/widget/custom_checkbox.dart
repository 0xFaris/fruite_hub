import 'package:flutter/material.dart';
import 'package:fruite_hub/core/utils/app_colors.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required this.isChecked,
    required this.onChanged,
  });
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
        duration: Duration(milliseconds: 100),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: BorderSide(color: AppColors.primaryColor, width: 0.8),
          ),
          color: isChecked ? AppColors.primaryColor : Colors.white,
        ),
        child: isChecked
            ? Icon(Icons.check, size: 16, color: Colors.white)
            : null,
      ),
    );
  }
}
