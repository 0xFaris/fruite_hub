import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruite_hub/Features/onboarding/presentation/view/widgets/onboarding_page_view.dart';
import 'package:fruite_hub/constants.dart';
import 'package:fruite_hub/core/utils/app_colors.dart';
import 'package:fruite_hub/core/widgets/custom_button.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnboardingPageView()),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.kPrimaryColor,
            color: AppColors.kPrimaryColor.withValues(alpha: 0.5),
          ),
        ),
        SizedBox(height: 29),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: CustomButton(title: 'ابدأ الان'),
        ),
        SizedBox(height: 43),
      ],
    );
  }
}
