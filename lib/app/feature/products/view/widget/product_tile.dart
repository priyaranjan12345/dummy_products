import 'package:dummy_products/app/feature/products/model/products_response_model.dart';
import 'package:dummy_products/app/feature/products/view/product_details.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Card(
        child: Row(
          children: [
            Flexible(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    constraints: const BoxConstraints(
                      maxHeight: 100,
                      maxWidth: 140,
                    ),
                    child: Image.network(
                      product.thumbnail,
                      width: 140,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.only(right: 10, top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      product.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "${product.description} \n",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ButtonBar(
                        alignment: MainAxisAlignment.spaceBetween,
                        buttonPadding: EdgeInsets.zero,
                        children: [
                          Text(
                            "₹ ${product.price}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 18,
                            ),
                          ),
                          FilledButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ProductDetailsScreen(
                                    product: product,
                                  ),
                                ),
                              );
                            },
                            child: const Text("Details"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
