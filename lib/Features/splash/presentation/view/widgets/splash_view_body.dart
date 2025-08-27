import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruite_hub/core/utils/app_images.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [SvgPicture.asset(Assets.assetsImagesPlant)],
        ),
        SvgPicture.asset(Assets.assetsImagesLogo),

        SvgPicture.asset(Assets.assetsImagesSplashfotter, fit: BoxFit.fill),
      ],
    );
  }
}
