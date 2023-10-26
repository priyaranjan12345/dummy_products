import 'package:dummy_products/app/feature/products/model/products_response_model.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              Text(
                "Price: ₹ ${product.price}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 18,
                ),
              ),
              FilledButton(
                onPressed: () {},
                child: const Text("Add to cart"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
