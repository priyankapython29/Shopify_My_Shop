
import 'package:dio/dio.dart';

///This is a api constant file where using dio package to connect with network to connect backend and front end
/// It assign base url of api
/// assign header to that api for authentication
///@author Priyanka

class DioShopify{
  static Dio? dioShopify;
  static Future init() async {
     Map<String, dynamic>? headers = {
      'Content-Type': 'application/json',
      'X-Shopify-Access-Token':'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'
    };

     dioShopify ??= Dio(BaseOptions(
      baseUrl: 'https://4dbb5d-d5.myshopify.com/admin/api/2024-07/',
      headers: headers,
    ));
  }
}