import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.title,
    required this.image,
    required this.subTitle,
    required this.backgroundImage,
    required this.isVisible,
  });
  final Widget title;
  final String image;
  final String subTitle;
  final String backgroundImage;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(backgroundImage, fit: BoxFit.fill),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(image, fit: BoxFit.contain),
              ),
              Visibility(
                visible: isVisible,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'تخط',
                    style: TextStyle(
                      color: Color(0xFF949D9E),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 64),

        title,
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37.0),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Color(0xFF4E5556),
            ),
          ),
        ),
      ],
    );
  }
}
