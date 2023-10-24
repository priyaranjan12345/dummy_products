import 'package:dummy_products/app/feature/products/model/products_response_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../global/api_client/dio_client_pod.dart';

final allProductsPod = FutureProvider.autoDispose<ProductsResponseModel>(
  (ref) async {
    final response = await ref.watch(dioProvider).get("products");

    if (response.statusCode == 200) {
      try {
        return ProductsResponseModel.fromMap(response.data);
      } catch (e) {
        throw Exception(e.toString());
      }
    } else if (response.statusCode == 401) {
      throw Exception(response.data.toString());
    } else {
      final details = response.data['detail'];
      if (details == 'No Internet') {
        throw Exception("No Internet");
      } else {
        throw Exception(details.toString());
      }
    }
  },
);
