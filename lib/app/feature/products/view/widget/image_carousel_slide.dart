import 'package:carousel_slider/carousel_slider.dart';
import 'package:dummy_products/app/feature/products/model/products_response_model.dart';
import 'package:flutter/material.dart';

class ImageCarouselSlide extends StatelessWidget {
  const ImageCarouselSlide({
    super.key,
    required this.product,
    required this.currentIndex,
  });

  final Product product;
  final ValueNotifier<int> currentIndex;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        ...product.images.map(
          (e) => Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Image.network(
                  e,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
          ),
        ),
      ],
      options: CarouselOptions(
        onPageChanged: (index, reason) {
          currentIndex.value = index;
        },
        autoPlay: true,
      ),
    );
  }
}
