import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project3_day5/models/data_model.dart';
import 'package:project3_day5/screen/Detail/product_detail_images.dart';

import 'product_item_detail.dart';

class DetilScreen extends StatelessWidget {
  const DetilScreen({
    super.key,
    required this.product,
  });
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // for productdetail images.
            ProductDetailImages(imageURL: product.imageURL),
            // for product item more detail
            ProductItemsDetail(product: product),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  const Icon(
                    Icons.drag_indicator_sharp,
                    size: 25,
                    color: Colors.white,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
