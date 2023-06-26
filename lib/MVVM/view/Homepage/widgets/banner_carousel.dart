import 'package:aicte_app/constants/assets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerCarousel extends StatelessWidget {
  const BannerCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List bannerImage = [
      Assets.cor1,
      Assets.cor2,
      Assets.cor3,
      Assets.cor4,
    ];
    return CarouselSlider.builder(
      itemCount: bannerImage.length,
      options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 1,
        aspectRatio: 1.55,
      ),
      itemBuilder: (context, index, realIndex) {
        return Image.asset(
          bannerImage[index],
          fit: BoxFit.fill,
        );
      },
    );
  }
}
