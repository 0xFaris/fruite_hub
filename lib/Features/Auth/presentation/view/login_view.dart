import 'package:flutter/material.dart';
import 'package:fruite_hub/Features/auth/presentation/view/widget/login_view_body.dart';
import 'package:fruite_hub/core/widgets/custom_appbar.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routeName = 'LoginView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'تسجيل دخول'),
      body: LoginViewBody(),
    );
  }
}
