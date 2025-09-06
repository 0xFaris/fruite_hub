import 'package:flutter/material.dart';
import 'package:fruite_hub/Features/auth/presentation/view/login_view.dart';
import 'package:fruite_hub/Features/onboarding/presentation/view/onboarding_view.dart';
import 'package:fruite_hub/Features/splash/presentation/view/widgets/splash_view_body.dart';
import 'package:fruite_hub/constants.dart';
import 'package:fruite_hub/core/services/shared_preferences_singleton.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const routeName = 'splash_view';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    excuteNavagiation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: SplashViewBody()));
  }

  void excuteNavagiation() {
    bool isOnboardingSeen = Prefss.getBool(kIsonboardingSeen);
    Future.delayed(const Duration(seconds: 3), () {
      if (isOnboardingSeen) {
        Navigator.of(context).pushReplacementNamed(LoginView.routeName);
      } else {
        Navigator.of(context).pushReplacementNamed(Onboarding.routeName);
      }
    });
  }
}
