import 'package:flutter/material.dart';
import 'package:fruite_hub/Features/onboarding/presentation/view/widgets/onboarding_view_body.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});
  static const routeName = 'onboarding_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OnboardingViewBody());
  }
}
