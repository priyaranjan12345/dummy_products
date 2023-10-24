import 'package:dummy_products/app/feature/products/model/products_response_model.dart';
import 'package:flutter/material.dart';

class CarouselSlideIndicator extends StatelessWidget {
  const CarouselSlideIndicator({
    super.key,
    required this.product,
    required this.currentIndex,
  });

  final Product product;
  final ValueNotifier<int> currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < product.images.length; i++)
          ValueListenableBuilder(
            valueListenable: currentIndex,
            builder: (context, value, _) {
              return Container(
                height: 13,
                width: 13,
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: value == i
                      ? Theme.of(context).primaryColor
                      : Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 3,
                    ),
                  ],
                ),
              );
            },
          )
      ],
    );
  }
}
