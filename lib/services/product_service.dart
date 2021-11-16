import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shamo_fix/models/product_models.dart';
// import 'product';

class ProductService {
  final String baseUrl = 'https://shamo-backend.buildwithangga.id/api';

  Future<List<ProductModel>> getProducts() async {
    var url = '$baseUrl/products';

    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(Uri.parse(url), headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<ProductModel> products = [];

      for (var item in data) {
        products.add(ProductModel.fromJson(item));
      }

      return products;
    } else {
      throw Exception('Gagal Get Products');
    }
  }
}