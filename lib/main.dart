import 'package:flutter/material.dart';
import 'package:fruite_hub/Features/splash/presentation/view/splash_view.dart';
import 'package:fruite_hub/core/helper/on_generate_route.dart';

void main() {
  runApp(const FruitsHUB());
}

class FruitsHUB extends StatelessWidget {
  const FruitsHUB({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      title: 'Fruits HUB',
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
