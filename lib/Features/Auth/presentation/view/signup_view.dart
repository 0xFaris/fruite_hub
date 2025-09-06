import 'package:flutter/material.dart';
import 'package:fruite_hub/Features/auth/presentation/view/widget/signup_view_body.dart';
import 'package:fruite_hub/core/widgets/custom_appbar.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const String routeName = 'signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'حساب جديد'),
      body: SignupViewBody(),
    );
  }
}
