import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruite_hub/Features/Auth/presentation/view/login_view.dart';
import 'package:fruite_hub/Features/onboarding/presentation/view/widgets/onboarding_page_view.dart';
import 'package:fruite_hub/constants.dart';
import 'package:fruite_hub/core/services/shared_preferences_singleton.dart';
import 'package:fruite_hub/core/utils/app_colors.dart';
import 'package:fruite_hub/core/widgets/custom_button.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController pageController;
  int currentIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentIndex = pageController.page!.round();
    });
    print(currentIndex);
    setState(() {});
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnboardingPageView(pageController: pageController)),
        DotsIndicator(
          position: currentIndex.toDouble(),
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.kPrimaryColor,
            color: AppColors.kPrimaryColor.withValues(alpha: 0.5),
          ),
        ),
        SizedBox(height: 29),
        Visibility(
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          visible: currentIndex == 1 ? true : false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: CustomButton(
              onPressed: () {
                Prefss.setBool(kIsonboardingSeen, true);
                print(Prefss.getBool(kIsonboardingSeen));
                Navigator.of(context).pushReplacementNamed(LoginView.routeName);
              },
              title: 'ابدأ الان',
            ),
          ),
        ),
        SizedBox(height: 43),
      ],
    );
  }
}
