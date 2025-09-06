import 'package:flutter/material.dart';
import 'package:fruite_hub/core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.label,
    this.suffixIcon,
    required this.keyboardType,
  });
  final String label;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        fillColor: Color(0xFFf9fafa),
        filled: true,
        labelText: label,
        labelStyle: TextStyles.bold13.copyWith(color: Color(0xFF949D9E)),
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: BorderSide(color: Color(0xFF949D9E), width: 1.0),
    );
  }
}
