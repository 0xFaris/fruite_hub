import 'package:flutter/material.dart';
import 'package:fruite_hub/core/utils/app_colors.dart';
import 'package:fruite_hub/core/utils/app_text_styles.dart';

class DontHaveAccountWidget extends StatelessWidget {
  const DontHaveAccountWidget({
    super.key,
    required this.title,
    required this.title2,
    required this.onTap,
  });
  final String title;
  final String title2;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyles.semiBold16.copyWith(color: Color(0xff616A6B)),
        ),
        SizedBox(width: 5),
        GestureDetector(
          onTap: onTap,
          child: Text(
            title2,
            style: TextStyles.semiBold16.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
