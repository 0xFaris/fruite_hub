import 'package:flutter/material.dart';
import 'package:fruite_hub/Features/onboarding/presentation/view/onboarding_view.dart';
import 'package:fruite_hub/Features/splash/presentation/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => SplashView());
    case Onboarding.routeName:
      return MaterialPageRoute(builder: (_) => Onboarding());
    default:
      return MaterialPageRoute(builder: (_) => Scaffold());
  }
}
