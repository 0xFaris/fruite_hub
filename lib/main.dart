import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruite_hub/Features/splash/presentation/view/splash_view.dart';
import 'package:fruite_hub/core/helper/on_generate_route.dart';
import 'package:fruite_hub/generated/l10n.dart';

void main() {
  runApp(const FruitsHUB());
}

class FruitsHUB extends StatelessWidget {
  const FruitsHUB({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('ar'),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      title: 'Fruits HUB',
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
