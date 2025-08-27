import 'package:flutter/material.dart';
import 'package:fruite_hub/Features/onboarding/presentation/view/widgets/pageview_item.dart';
import 'package:fruite_hub/core/utils/app_images.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('مرحبًا بك في ', style: TextStyle(fontSize: 23)),
              Text('HUB', style: TextStyle(fontSize: 23)),
              Text('Fruit', style: TextStyle(fontSize: 23)),
            ],
          ),
          image: Assets.assetsImagesPageView1Logo,
          backgroundImage: Assets.assetsImagesPageView1Background,
          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
        ),
        PageViewItem(
          title: Text('ابحث وتسوق', style: TextStyle(fontSize: 23)),
          image: Assets.assetsImagesPageView2LogoSvg,
          backgroundImage: Assets.assetsImagesPageView2BackgroundSvg,
          subTitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
        ),
      ],
    );
  }
}
