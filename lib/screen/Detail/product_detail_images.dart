import 'package:flutter/material.dart';
import 'package:project3_day5/screen/Detail/curve_image_side.dart';

class ProductDetailImages extends StatelessWidget {
  const ProductDetailImages({super.key, required this.imageURL});
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipPath(
      clipper: CurveImageSide(),
      child: Align(
        alignment: Alignment.topCenter,
        child: Center(
            child: Hero(
          tag: imageURL,
          child: Image(
            height: size.height * 0.6,
            width: size.width,
            image: AssetImage(imageURL),
            fit: BoxFit.cover,
          ),
        )),
      ),
    );
  }
}
