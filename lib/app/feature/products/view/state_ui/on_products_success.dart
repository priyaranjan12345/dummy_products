import 'package:flutter/material.dart';

import '../../model/products_response_model.dart';
import '../widget/product_tile.dart';

class OnProductsSuccess extends StatelessWidget {
  const OnProductsSuccess({
    super.key,
    required this.products,
    required this.onRefresh,
  });

  final List<Product> products;
  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return ProductTile(product: product);
        },
      ),
    );
  }
}
