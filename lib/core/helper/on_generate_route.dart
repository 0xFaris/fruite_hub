import 'package:flutter/material.dart';
import 'package:fruite_hub/Features/Auth/presentation/view/login_view.dart';
import 'package:fruite_hub/Features/onboarding/presentation/view/onboarding_view.dart';
import 'package:fruite_hub/Features/splash/presentation/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  print('Navigating to: ${settings.name}');

  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => SplashView());
    case Onboarding.routeName:
      return MaterialPageRoute(builder: (_) => Onboarding());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (_) => LoginView());
    default:
      return MaterialPageRoute(builder: (_) => Scaffold());
  }
}
