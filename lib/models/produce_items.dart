import 'package:flutter/material.dart';
import 'package:project3_day5/models/data_model.dart';
import 'package:project3_day5/screen/Detail/detail_screen.dart';

class ProductaItem extends StatelessWidget {
  const ProductaItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 0.65),
          itemCount: productItems.length,
          itemBuilder: (context, index) {
            Size size = MediaQuery.of(context).size;
            final product = productItems[index];
            return Transform.translate(
              offset: Offset(0, index.isOdd ? 28 : 0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetilScreen(product: product,)));
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    right: 10,
                    left: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Hero(tag: product.imageURL,
                          child: Image(
                            image: AssetImage(
                              product.imageURL,
                            ),
                            height: size.height * 0.20,
                            width: size.width * 0.45,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Text(
                        product.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        product.madelIn,
                        style: const TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
