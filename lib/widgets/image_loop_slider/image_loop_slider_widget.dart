import 'package:carousel_slider/carousel_slider.dart';
import 'package:dana_app_clone/utils/utils.dart';
import 'package:flutter/material.dart';

class ImageLoopSliderWidget extends StatefulWidget {
  const ImageLoopSliderWidget({super.key});

  @override
  State<ImageLoopSliderWidget> createState() => _ImageLoopSliderWidgetState();
}

class _ImageLoopSliderWidgetState extends State<ImageLoopSliderWidget> {
  List<String> imageName = [
    'bayar_tagihan',
    'beli_voucher',
    'cobain_semua',
    'danamon',
    'emas',
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imageName.length,
      itemBuilder: (context, index, realIndex) {
        final name = imageName[index];
        return Card(
          margin: const EdgeInsets.only(top: 12, left: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetLocations.imageLocation(name),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      options: CarouselOptions(
          autoPlayCurve: Curves.easeInOutCirc,
          autoPlayInterval: const Duration(seconds: 3),
          height: 162,
          viewportFraction: 0.81,
          enableInfiniteScroll: true,
          autoPlay: true,
          initialPage: 2),
    );
  }
}
