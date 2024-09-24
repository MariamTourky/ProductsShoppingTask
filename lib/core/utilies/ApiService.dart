import 'package:dio/dio.dart';

import '../../features/Home/data/models/ProductModel.dart';

class ApiService {
  final Dio _dio = Dio();
  final String _baseUrl = 'https://fakestoreapi.com/products';

  Future<List<ProductModel>> fetchProducts() async {
    try {
      final response = await _dio.get(_baseUrl);
      if (response.statusCode == 200) {
        return (response.data as List)
            .map((item) => ProductModel.fromJson(item))
            .toList();
      } else {
        throw Exception('Failed to load products');
      }
    } catch (e) {
      throw Exception('Error occurred: $e');
    }
  }
}