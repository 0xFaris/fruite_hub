import 'package:flutter/material.dart';
import 'package:fruite_hub/Features/auth/presentation/view/signup_view.dart';
import 'package:fruite_hub/Features/auth/presentation/view/widget/dont_have_account.dart';
import 'package:fruite_hub/Features/auth/presentation/view/widget/or_divider.dart';
import 'package:fruite_hub/Features/auth/presentation/view/widget/social_media_button.dart';
import 'package:fruite_hub/constants.dart';
import 'package:fruite_hub/core/utils/app_colors.dart';
import 'package:fruite_hub/core/utils/app_images.dart';
import 'package:fruite_hub/core/utils/app_text_styles.dart';
import 'package:fruite_hub/core/widgets/custom_button.dart';
import 'package:fruite_hub/core/widgets/custom_text_form_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمة المرور؟',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 33),
            CustomButton(title: 'تسجيل دخول', onPressed: () {}),
            SizedBox(height: 20),
            DontHaveAccountWidget(
              title: 'ليس لديك حساب؟',
              title2: 'قم بإنشاء حساب',
              onTap: () {
                Navigator.pushNamed(context, SignupView.routeName);
              },
            ),
            SizedBox(height: 33),
            OrDivider(),
            SizedBox(height: 16),
            SocialMediaButton(
              imagePath: Assets.assetsImagesGoogle,
              title: 'تسجيل بواسطة جوجل',
            ),
            SizedBox(height: 16),

            SocialMediaButton(
              imagePath: Assets.assetsImagesApple,
              title: 'تسجيل بواسطة أبل',
            ),
            SizedBox(height: 16),

            SocialMediaButton(
              imagePath: Assets.assetsImagesFacebook,
              title: 'تسجيل بواسطة فيسبوك',
            ),
          ],
        ),
      ),
    );
  }
}
