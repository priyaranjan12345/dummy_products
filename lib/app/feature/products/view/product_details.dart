import 'package:flutter/material.dart';

import '../model/products_response_model.dart';
import 'widget/bottom_bar.dart';
import 'widget/carousel_slide_indicator.dart';
import 'widget/image_carousel_slide.dart';
import 'widget/product_details.dart';

class ProductDetailsScreen extends StatelessWidget {
  ProductDetailsScreen({super.key, required this.product});

  final Product product;
  final currentIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 250,
            width: double.infinity,
            child: ImageCarouselSlide(
              product: product,
              currentIndex: currentIndex,
            ),
          ),
          const SizedBox(height: 10),
          CarouselSlideIndicator(
            product: product,
            currentIndex: currentIndex,
          ),
          ProductDetails(product: product),
        ],
      ),
      bottomNavigationBar: BottomBar(product: product),
    );
  }
}
