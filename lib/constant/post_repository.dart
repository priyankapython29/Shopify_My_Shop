
import 'package:dio/dio.dart';
import '../model/my_product.dart';
import 'dio_shopify.dart';

class PostRepository{

  /// Get List of all products from server.
  /// @author Priyanka
  Future<List<Products>?> fetchProducts() async {
    try {
      Response response = await DioShopify.dioShopify!.get('products.json');
      final modelProduct = MyProduct.fromJson(response.data);
      return modelProduct.products;
    } catch (e) {
      throw Exception('Failed to load products: $e');
    }
  }
}