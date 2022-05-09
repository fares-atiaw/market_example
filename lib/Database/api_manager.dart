import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:market_example/models/categories_response.dart';

import '../models/products_response.dart';

class API_Manager {
//https://sae-marketing.com/NOON/api/LoadProductsTypeCategoriesPage.php
  static String baseURL = 'sae-marketing.com';

  Future<CategoriesResponse> getCategories() async {
    try {
      Uri url =
          Uri.https(baseURL, 'NOON/api/LoadProductsTypeCategoriesPage.php');
      var response = await http.get(url);
      return CategoriesResponse.fromJson(jsonDecode(response.body));
    } on Exception catch (e) {
      print('api error');
      throw e;
    }
  }

  Future<ProductsResponse> getProducts(String categoryID) async {
    try {
      Uri url =
          Uri.https(baseURL, 'NOON/api/LoadAllProductsOfSpecificProductsType.php');
      var response = await http.post(url, body: {
        "ProductsTypeID" : categoryID
      });
      return ProductsResponse.fromJson(jsonDecode(response.body));
    } on Exception catch (e) {
      print('api error');
      throw e;
    }
  }
}
