import 'package:flutter/material.dart';
import 'package:fruite_hub/Features/auth/presentation/view/widget/custom_checkbox.dart';
import 'package:fruite_hub/core/utils/app_colors.dart';
import 'package:fruite_hub/core/utils/app_text_styles.dart';

class TermsAndConditionsWidget extends StatefulWidget {
  const TermsAndConditionsWidget({super.key});

  @override
  State<TermsAndConditionsWidget> createState() =>
      _TermsAndConditionsWidgetState();
}

class _TermsAndConditionsWidgetState extends State<TermsAndConditionsWidget> {
  bool isTermAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          isChecked: isTermAccepted,
          onChanged: (bool value) {
            isTermAccepted = value;
            setState(() {});
          },
        ),
        SizedBox(width: 10),
        Expanded(
          child: Wrap(
            children: [
              Text(
                'من خلال إنشاء حساب ، فإنك توافق على',
                style: TextStyles.semiBold13.copyWith(color: Color(0XFF949D9E)),
              ),
              Text(
                'الشروط والأحكام الخاصة بنا',
                style: TextStyles.semiBold13.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
