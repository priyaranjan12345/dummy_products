import 'package:dummy_products/app/feature/products/view/widget/product_loading_tile.dart';
import 'package:flutter/material.dart';

class OnProductsLoading extends StatelessWidget {
  const OnProductsLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      children: [
        ...List.generate(
          10,
          (index) => const ProductLoadingTile(),
        ),
      ],
    );
  }
}
