import 'package:flutter/material.dart';
import 'package:fruite_hub/Features/Auth/presentation/view/login_view.dart';
import 'package:fruite_hub/Features/auth/presentation/view/widget/dont_have_account.dart';
import 'package:fruite_hub/Features/auth/presentation/view/widget/terms_and_conditions.dart';
import 'package:fruite_hub/constants.dart';
import 'package:fruite_hub/core/widgets/custom_button.dart';
import 'package:fruite_hub/core/widgets/custom_text_form_field.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFormField(
              label: 'الاسم كامل',
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              label: 'البريد الاكتروني',
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              label: 'كلمة المرور',
              suffixIcon: Icon(Icons.remove_red_eye),
              keyboardType: TextInputType.visiblePassword,
            ),
            SizedBox(height: 16),
            TermsAndConditionsWidget(),
            SizedBox(height: 30),
            CustomButton(title: 'إنشاء حساب جديد', onPressed: () {}),
            SizedBox(height: 20),
            DontHaveAccountWidget(
              title: 'تمتلك حساب بالفعل؟',
              title2: 'تسجيل دخول',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
