import 'package:dummy_products/app/feature/products/view/state_ui/on_products_error.dart';
import 'package:dummy_products/app/feature/products/view/state_ui/on_products_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controller/product_pod.dart';
import 'state_ui/on_products_success.dart';

class ProductsScreen extends ConsumerWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allProductAsync = ref.watch(allProductsPod);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
        centerTitle: true,
      ),
      body: allProductAsync.when(
        data: (data) => OnProductsSuccess(
          onRefresh: () => ref.refresh(allProductsPod.future),
          products: data.products,
        ),
        error: (e, _) {
          if (allProductAsync.isLoading) {
            return const OnProductsLoading();
          }
          return OnProductsError(
            msg: e.toString(),
            onRety: () => ref.invalidate(allProductsPod),
          );
        },
        loading: () => const OnProductsLoading(),
      ),
    );
  }
}
