
import 'variants.dart';

class Products {
  Products({
      required this.id,
      required this.title,
      required this.vendor,
      required this.productType,
      required this.handle,
      required this.publishedScope,
      required this.status,
      required this.adminGraphqlApiId,
      required this.variants,});

  Products.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    vendor = json['vendor'];
    productType = json['product_type'];
    handle = json['handle'];
    publishedScope = json['published_scope'];
    status = json['status'];
    adminGraphqlApiId = json['admin_graphql_api_id'];
    if (json['variants'] != null) {
      variants = [];
      json['variants'].forEach((v) {
        variants!.add(Variants.fromJson(v));
      });
    }
  }
  int? id;
  String? title;
  String? vendor;
  String? productType;
  String? handle;
  String? publishedScope;
  String? status;
  String? adminGraphqlApiId;
  List<Variants>? variants;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['vendor'] = vendor;
    map['product_type'] = productType;
    map['handle'] = handle;
    map['published_scope'] = publishedScope;
    map['status'] = status;
    map['admin_graphql_api_id'] = adminGraphqlApiId;
    if (variants != null) {
      map['variants'] = variants!.map((v) => v.toJson()).toList();
    }
    return map;
  }

}