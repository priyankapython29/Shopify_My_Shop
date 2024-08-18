import 'dart:convert';

/// products : [{"id":9429616099608,"title":"Water bottles","body_html":"","vendor":"My Store","product_type":"","created_at":"2024-08-15T19:06:18+05:30","handle":"water-bottles","updated_at":"2024-08-15T19:23:14+05:30","published_at":"2024-08-15T19:06:18+05:30","template_suffix":"","published_scope":"global","tags":"","status":"active","admin_graphql_api_id":"gid://shopify/Product/9429616099608","variants":[{"id":48954932953368,"product_id":9429616099608,"title":"Default Title","price":"1000.00","position":2,"inventory_policy":"deny","compare_at_price":"1200.00","option1":"Default Title","option2":null,"option3":null,"created_at":"2024-08-15T19:06:19+05:30","updated_at":"2024-08-15T19:06:19+05:30","taxable":true,"barcode":"","fulfillment_service":"manual","grams":0,"inventory_management":"shopify","requires_shipping":true,"sku":"","weight":0.0,"weight_unit":"kg","inventory_item_id":51004702884120,"inventory_quantity":5,"old_inventory_quantity":5,"admin_graphql_api_id":"gid://shopify/ProductVariant/48954932953368","image_id":null}],"options":[{"id":11825767022872,"product_id":9429616099608,"name":"Title","position":1,"values":["Default Title"]}],"images":[{"id":46360477729048,"alt":null,"position":1,"product_id":9429616099608,"created_at":"2024-08-15T19:14:27+05:30","updated_at":"2024-08-15T19:14:29+05:30","admin_graphql_api_id":"gid://shopify/ProductImage/46360477729048","width":1080,"height":1440,"src":"https://cdn.shopify.com/s/files/1/0888/1697/6152/files/gradiant-prints-plastic-water-bottle-1000ml-water-bottles-1-29133459226794.webp?v=1723729469","variant_ids":[]}],"image":{"id":46360477729048,"alt":null,"position":1,"product_id":9429616099608,"created_at":"2024-08-15T19:14:27+05:30","updated_at":"2024-08-15T19:14:29+05:30","admin_graphql_api_id":"gid://shopify/ProductImage/46360477729048","width":1080,"height":1440,"src":"https://cdn.shopify.com/s/files/1/0888/1697/6152/files/gradiant-prints-plastic-water-bottle-1000ml-water-bottles-1-29133459226794.webp?v=1723729469","variant_ids":[]}}]

MyProduct myProductFromJson(String str) => MyProduct.fromJson(json.decode(str));

String myProductToJson(MyProduct data) => json.encode(data.toJson());

class MyProduct {
  MyProduct({
    List<Products>? products,
  }) {
    _products = products;
  }

  MyProduct.fromJson(dynamic json) {
    if (json['products'] != null) {
      _products = [];
      json['products'].forEach((v) {
        _products?.add(Products.fromJson(v));
      });
    }
  }

  List<Products>? _products;

  MyProduct copyWith({
    List<Products>? products,
  }) =>
      MyProduct(
        products: products ?? _products,
      );

  List<Products>? get products => _products;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_products != null) {
      map['products'] = _products?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 9429616099608
/// title : "Water bottles"
/// body_html : ""
/// vendor : "My Store"
/// product_type : ""
/// created_at : "2024-08-15T19:06:18+05:30"
/// handle : "water-bottles"
/// updated_at : "2024-08-15T19:23:14+05:30"
/// published_at : "2024-08-15T19:06:18+05:30"
/// template_suffix : ""
/// published_scope : "global"
/// tags : ""
/// status : "active"
/// admin_graphql_api_id : "gid://shopify/Product/9429616099608"
/// variants : [{"id":48954932953368,"product_id":9429616099608,"title":"Default Title","price":"1000.00","position":2,"inventory_policy":"deny","compare_at_price":"1200.00","option1":"Default Title","option2":null,"option3":null,"created_at":"2024-08-15T19:06:19+05:30","updated_at":"2024-08-15T19:06:19+05:30","taxable":true,"barcode":"","fulfillment_service":"manual","grams":0,"inventory_management":"shopify","requires_shipping":true,"sku":"","weight":0.0,"weight_unit":"kg","inventory_item_id":51004702884120,"inventory_quantity":5,"old_inventory_quantity":5,"admin_graphql_api_id":"gid://shopify/ProductVariant/48954932953368","image_id":null}]
/// options : [{"id":11825767022872,"product_id":9429616099608,"name":"Title","position":1,"values":["Default Title"]}]
/// images : [{"id":46360477729048,"alt":null,"position":1,"product_id":9429616099608,"created_at":"2024-08-15T19:14:27+05:30","updated_at":"2024-08-15T19:14:29+05:30","admin_graphql_api_id":"gid://shopify/ProductImage/46360477729048","width":1080,"height":1440,"src":"https://cdn.shopify.com/s/files/1/0888/1697/6152/files/gradiant-prints-plastic-water-bottle-1000ml-water-bottles-1-29133459226794.webp?v=1723729469","variant_ids":[]}]
/// image : {"id":46360477729048,"alt":null,"position":1,"product_id":9429616099608,"created_at":"2024-08-15T19:14:27+05:30","updated_at":"2024-08-15T19:14:29+05:30","admin_graphql_api_id":"gid://shopify/ProductImage/46360477729048","width":1080,"height":1440,"src":"https://cdn.shopify.com/s/files/1/0888/1697/6152/files/gradiant-prints-plastic-water-bottle-1000ml-water-bottles-1-29133459226794.webp?v=1723729469","variant_ids":[]}

Products productsFromJson(String str) => Products.fromJson(json.decode(str));

String productsToJson(Products data) => json.encode(data.toJson());

class Products {
  Products({
    int? id,
    String? title,
    String? bodyHtml,
    String? vendor,
    String? productType,
    String? createdAt,
    String? handle,
    String? updatedAt,
    String? publishedAt,
    String? templateSuffix,
    String? publishedScope,
    String? tags,
    String? status,
    String? adminGraphqlApiId,
    List<Variants>? variants,
    List<Options>? options,
    List<Images>? images,
    ProductImage? image,
  }) {
    _id = id;
    _title = title;
    _bodyHtml = bodyHtml;
    _vendor = vendor;
    _productType = productType;
    _createdAt = createdAt;
    _handle = handle;
    _updatedAt = updatedAt;
    _publishedAt = publishedAt;
    _templateSuffix = templateSuffix;
    _publishedScope = publishedScope;
    _tags = tags;
    _status = status;
    _adminGraphqlApiId = adminGraphqlApiId;
    _variants = variants;
    _options = options;
    _images = images;
    _image = image;
  }

  Products.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _bodyHtml = json['body_html'];
    _vendor = json['vendor'];
    _productType = json['product_type'];
    _createdAt = json['created_at'];
    _handle = json['handle'];
    _updatedAt = json['updated_at'];
    _publishedAt = json['published_at'];
    _templateSuffix = json['template_suffix'];
    _publishedScope = json['published_scope'];
    _tags = json['tags'];
    _status = json['status'];
    _adminGraphqlApiId = json['admin_graphql_api_id'];
    if (json['variants'] != null) {
      _variants = [];
      json['variants'].forEach((v) {
        _variants?.add(Variants.fromJson(v));
      });
    }
    if (json['options'] != null) {
      _options = [];
      json['options'].forEach((v) {
        _options?.add(Options.fromJson(v));
      });
    }
    if (json['images'] != null) {
      _images = [];
      json['images'].forEach((v) {
        _images?.add(Images.fromJson(v));
      });
    }
    _image =
        json['image'] != null ? ProductImage.fromJson(json['image']) : null;
  }

  int? _id;
  String? _title;
  String? _bodyHtml;
  String? _vendor;
  String? _productType;
  String? _createdAt;
  String? _handle;
  String? _updatedAt;
  String? _publishedAt;
  String? _templateSuffix;
  String? _publishedScope;
  String? _tags;
  String? _status;
  String? _adminGraphqlApiId;
  List<Variants>? _variants;
  List<Options>? _options;
  List<Images>? _images;
  ProductImage? _image;

  Products copyWith({
    int? id,
    String? title,
    String? bodyHtml,
    String? vendor,
    String? productType,
    String? createdAt,
    String? handle,
    String? updatedAt,
    String? publishedAt,
    String? templateSuffix,
    String? publishedScope,
    String? tags,
    String? status,
    String? adminGraphqlApiId,
    List<Variants>? variants,
    List<Options>? options,
    List<Images>? images,
    ProductImage? image,
  }) =>
      Products(
        id: id ?? _id,
        title: title ?? _title,
        bodyHtml: bodyHtml ?? _bodyHtml,
        vendor: vendor ?? _vendor,
        productType: productType ?? _productType,
        createdAt: createdAt ?? _createdAt,
        handle: handle ?? _handle,
        updatedAt: updatedAt ?? _updatedAt,
        publishedAt: publishedAt ?? _publishedAt,
        templateSuffix: templateSuffix ?? _templateSuffix,
        publishedScope: publishedScope ?? _publishedScope,
        tags: tags ?? _tags,
        status: status ?? _status,
        adminGraphqlApiId: adminGraphqlApiId ?? _adminGraphqlApiId,
        variants: variants ?? _variants,
        options: options ?? _options,
        images: images ?? _images,
        image: image ?? _image,
      );

  int? get id => _id;

  String? get title => _title;

  String? get bodyHtml => _bodyHtml;

  String? get vendor => _vendor;

  String? get productType => _productType;

  String? get createdAt => _createdAt;

  String? get handle => _handle;

  String? get updatedAt => _updatedAt;

  String? get publishedAt => _publishedAt;

  String? get templateSuffix => _templateSuffix;

  String? get publishedScope => _publishedScope;

  String? get tags => _tags;

  String? get status => _status;

  String? get adminGraphqlApiId => _adminGraphqlApiId;

  List<Variants>? get variants => _variants;

  List<Options>? get options => _options;

  List<Images>? get images => _images;

  ProductImage? get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['body_html'] = _bodyHtml;
    map['vendor'] = _vendor;
    map['product_type'] = _productType;
    map['created_at'] = _createdAt;
    map['handle'] = _handle;
    map['updated_at'] = _updatedAt;
    map['published_at'] = _publishedAt;
    map['template_suffix'] = _templateSuffix;
    map['published_scope'] = _publishedScope;
    map['tags'] = _tags;
    map['status'] = _status;
    map['admin_graphql_api_id'] = _adminGraphqlApiId;
    if (_variants != null) {
      map['variants'] = _variants?.map((v) => v.toJson()).toList();
    }
    if (_options != null) {
      map['options'] = _options?.map((v) => v.toJson()).toList();
    }
    if (_images != null) {
      map['images'] = _images?.map((v) => v.toJson()).toList();
    }
    if (_image != null) {
      map['image'] = _image?.toJson();
    }
    return map;
  }
}

/// id : 46360477729048
/// alt : null
/// position : 1
/// product_id : 9429616099608
/// created_at : "2024-08-15T19:14:27+05:30"
/// updated_at : "2024-08-15T19:14:29+05:30"
/// admin_graphql_api_id : "gid://shopify/ProductImage/46360477729048"
/// width : 1080
/// height : 1440
/// src : "https://cdn.shopify.com/s/files/1/0888/1697/6152/files/gradiant-prints-plastic-water-bottle-1000ml-water-bottles-1-29133459226794.webp?v=1723729469"
/// variant_ids : []

ProductImage imageFromJson(String str) =>
    ProductImage.fromJson(json.decode(str));

String imageToJson(ProductImage data) => json.encode(data.toJson());

class ProductImage {
  ProductImage({
    int? id,
    dynamic alt,
    num? position,
    int? productId,
    String? createdAt,
    String? updatedAt,
    String? adminGraphqlApiId,
    num? width,
    num? height,
    String? src,
    List<dynamic>? variantIds,
  }) {
    _id = id;
    _alt = alt;
    _position = position;
    _productId = productId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _adminGraphqlApiId = adminGraphqlApiId;
    _width = width;
    _height = height;
    _src = src;
  }

  ProductImage.fromJson(dynamic json) {
    _id = json['id'];
    _alt = json['alt'];
    _position = json['position'];
    _productId = json['product_id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _adminGraphqlApiId = json['admin_graphql_api_id'];
    _width = json['width'];
    _height = json['height'];
    _src = json['src'];
  }

  int? _id;
  dynamic _alt;
  num? _position;
  int? _productId;
  String? _createdAt;
  String? _updatedAt;
  String? _adminGraphqlApiId;
  num? _width;
  num? _height;
  String? _src;

  ProductImage copyWith({
    int? id,
    dynamic alt,
    num? position,
    int? productId,
    String? createdAt,
    String? updatedAt,
    String? adminGraphqlApiId,
    num? width,
    num? height,
    String? src,
    List<dynamic>? variantIds,
  }) =>
      ProductImage(
        id: id ?? _id,
        alt: alt ?? _alt,
        position: position ?? _position,
        productId: productId ?? _productId,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        adminGraphqlApiId: adminGraphqlApiId ?? _adminGraphqlApiId,
        width: width ?? _width,
        height: height ?? _height,
        src: src ?? _src,
      );

  int? get id => _id;

  dynamic get alt => _alt;

  num? get position => _position;

  int? get productId => _productId;

  String? get createdAt => _createdAt;

  String? get updatedAt => _updatedAt;

  String? get adminGraphqlApiId => _adminGraphqlApiId;

  num? get width => _width;

  num? get height => _height;

  String? get src => _src;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['alt'] = _alt;
    map['position'] = _position;
    map['product_id'] = _productId;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['admin_graphql_api_id'] = _adminGraphqlApiId;
    map['width'] = _width;
    map['height'] = _height;
    map['src'] = _src;
    return map;
  }
}

/// id : 46360477729048
/// alt : null
/// position : 1
/// product_id : 9429616099608
/// created_at : "2024-08-15T19:14:27+05:30"
/// updated_at : "2024-08-15T19:14:29+05:30"
/// admin_graphql_api_id : "gid://shopify/ProductImage/46360477729048"
/// width : 1080
/// height : 1440
/// src : "https://cdn.shopify.com/s/files/1/0888/1697/6152/files/gradiant-prints-plastic-water-bottle-1000ml-water-bottles-1-29133459226794.webp?v=1723729469"
/// variant_ids : []

Images imagesFromJson(String str) => Images.fromJson(json.decode(str));

String imagesToJson(Images data) => json.encode(data.toJson());

class Images {
  Images({
    int? id,
    dynamic alt,
    num? position,
    int? productId,
    String? createdAt,
    String? updatedAt,
    String? adminGraphqlApiId,
    num? width,
    num? height,
    String? src,
    List<dynamic>? variantIds,
  }) {
    _id = id;
    _alt = alt;
    _position = position;
    _productId = productId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _adminGraphqlApiId = adminGraphqlApiId;
    _width = width;
    _height = height;
    _src = src;
    _variantIds = variantIds;
  }

  Images.fromJson(dynamic json) {
    _id = json['id'];
    _alt = json['alt'];
    _position = json['position'];
    _productId = json['product_id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _adminGraphqlApiId = json['admin_graphql_api_id'];
    _width = json['width'];
    _height = json['height'];
    _src = json['src'];
  }

  int? _id;
  dynamic _alt;
  num? _position;
  int? _productId;
  String? _createdAt;
  String? _updatedAt;
  String? _adminGraphqlApiId;
  num? _width;
  num? _height;
  String? _src;
  List<dynamic>? _variantIds;

  Images copyWith({
    int? id,
    dynamic alt,
    num? position,
    int? productId,
    String? createdAt,
    String? updatedAt,
    String? adminGraphqlApiId,
    num? width,
    num? height,
    String? src,
    List<dynamic>? variantIds,
  }) =>
      Images(
        id: id ?? _id,
        alt: alt ?? _alt,
        position: position ?? _position,
        productId: productId ?? _productId,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        adminGraphqlApiId: adminGraphqlApiId ?? _adminGraphqlApiId,
        width: width ?? _width,
        height: height ?? _height,
        src: src ?? _src,
        variantIds: variantIds ?? _variantIds,
      );

  int? get id => _id;

  dynamic get alt => _alt;

  num? get position => _position;

  int? get productId => _productId;

  String? get createdAt => _createdAt;

  String? get updatedAt => _updatedAt;

  String? get adminGraphqlApiId => _adminGraphqlApiId;

  num? get width => _width;

  num? get height => _height;

  String? get src => _src;

  List<dynamic>? get variantIds => _variantIds;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['alt'] = _alt;
    map['position'] = _position;
    map['product_id'] = _productId;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['admin_graphql_api_id'] = _adminGraphqlApiId;
    map['width'] = _width;
    map['height'] = _height;
    map['src'] = _src;
    if (_variantIds != null) {
      map['variant_ids'] = _variantIds?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 11825767022872
/// product_id : 9429616099608
/// name : "Title"
/// position : 1
/// values : ["Default Title"]

Options optionsFromJson(String str) => Options.fromJson(json.decode(str));

String optionsToJson(Options data) => json.encode(data.toJson());

class Options {
  Options({
    int? id,
    int? productId,
    String? name,
    num? position,
    List<String>? values,
  }) {
    _id = id;
    _productId = productId;
    _name = name;
    _position = position;
    _values = values;
  }

  Options.fromJson(dynamic json) {
    _id = json['id'];
    _productId = json['product_id'];
    _name = json['name'];
    _position = json['position'];
    _values = json['values'] != null ? json['values'].cast<String>() : [];
  }

  int? _id;
  int? _productId;
  String? _name;
  num? _position;
  List<String>? _values;

  Options copyWith({
    int? id,
    int? productId,
    String? name,
    num? position,
    List<String>? values,
  }) =>
      Options(
        id: id ?? _id,
        productId: productId ?? _productId,
        name: name ?? _name,
        position: position ?? _position,
        values: values ?? _values,
      );

  int? get id => _id;

  int? get productId => _productId;

  String? get name => _name;

  num? get position => _position;

  List<String>? get values => _values;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['product_id'] = _productId;
    map['name'] = _name;
    map['position'] = _position;
    map['values'] = _values;
    return map;
  }
}

/// id : 48954932953368
/// product_id : 9429616099608
/// title : "Default Title"
/// price : "1000.00"
/// position : 2
/// inventory_policy : "deny"
/// compare_at_price : "1200.00"
/// option1 : "Default Title"
/// option2 : null
/// option3 : null
/// created_at : "2024-08-15T19:06:19+05:30"
/// updated_at : "2024-08-15T19:06:19+05:30"
/// taxable : true
/// barcode : ""
/// fulfillment_service : "manual"
/// grams : 0
/// inventory_management : "shopify"
/// requires_shipping : true
/// sku : ""
/// weight : 0.0
/// weight_unit : "kg"
/// inventory_item_id : 51004702884120
/// inventory_quantity : 5
/// old_inventory_quantity : 5
/// admin_graphql_api_id : "gid://shopify/ProductVariant/48954932953368"
/// image_id : null

Variants variantsFromJson(String str) => Variants.fromJson(json.decode(str));

String variantsToJson(Variants data) => json.encode(data.toJson());

class Variants {
  Variants({
    int? id,
    int? productId,
    String? title,
    String? price,
    num? position,
    String? inventoryPolicy,
    String? compareAtPrice,
    String? option1,
    dynamic option2,
    dynamic option3,
    String? createdAt,
    String? updatedAt,
    bool? taxable,
    String? barcode,
    String? fulfillmentService,
    num? grams,
    String? inventoryManagement,
    bool? requiresShipping,
    String? sku,
    num? weight,
    String? weightUnit,
    num? inventoryItemId,
    num? inventoryQuantity,
    num? oldInventoryQuantity,
    String? adminGraphqlApiId,
    dynamic imageId,
  }) {
    _id = id;
    _productId = productId;
    _title = title;
    _price = price;
    _position = position;
    _inventoryPolicy = inventoryPolicy;
    _compareAtPrice = compareAtPrice;
    _option1 = option1;
    _option2 = option2;
    _option3 = option3;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _taxable = taxable;
    _barcode = barcode;
    _fulfillmentService = fulfillmentService;
    _grams = grams;
    _inventoryManagement = inventoryManagement;
    _requiresShipping = requiresShipping;
    _sku = sku;
    _weight = weight;
    _weightUnit = weightUnit;
    _inventoryItemId = inventoryItemId;
    _inventoryQuantity = inventoryQuantity;
    _oldInventoryQuantity = oldInventoryQuantity;
    _adminGraphqlApiId = adminGraphqlApiId;
    _imageId = imageId;
  }

  Variants.fromJson(dynamic json) {
    _id = json['id'];
    _productId = json['product_id'];
    _title = json['title'];
    _price = json['price'];
    _position = json['position'];
    _inventoryPolicy = json['inventory_policy'];
    _compareAtPrice = json['compare_at_price'];
    _option1 = json['option1'];
    _option2 = json['option2'];
    _option3 = json['option3'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _taxable = json['taxable'];
    _barcode = json['barcode'];
    _fulfillmentService = json['fulfillment_service'];
    _grams = json['grams'];
    _inventoryManagement = json['inventory_management'];
    _requiresShipping = json['requires_shipping'];
    _sku = json['sku'];
    _weight = json['weight'];
    _weightUnit = json['weight_unit'];
    _inventoryItemId = json['inventory_item_id'];
    _inventoryQuantity = json['inventory_quantity'];
    _oldInventoryQuantity = json['old_inventory_quantity'];
    _adminGraphqlApiId = json['admin_graphql_api_id'];
    _imageId = json['image_id'];
  }

  int? _id;
  int? _productId;
  String? _title;
  String? _price;
  num? _position;
  String? _inventoryPolicy;
  String? _compareAtPrice;
  String? _option1;
  dynamic _option2;
  dynamic _option3;
  String? _createdAt;
  String? _updatedAt;
  bool? _taxable;
  String? _barcode;
  String? _fulfillmentService;
  num? _grams;
  String? _inventoryManagement;
  bool? _requiresShipping;
  String? _sku;
  num? _weight;
  String? _weightUnit;
  num? _inventoryItemId;
  num? _inventoryQuantity;
  num? _oldInventoryQuantity;
  String? _adminGraphqlApiId;
  dynamic _imageId;

  Variants copyWith({
    int? id,
    int? productId,
    String? title,
    String? price,
    num? position,
    String? inventoryPolicy,
    String? compareAtPrice,
    String? option1,
    dynamic option2,
    dynamic option3,
    String? createdAt,
    String? updatedAt,
    bool? taxable,
    String? barcode,
    String? fulfillmentService,
    num? grams,
    String? inventoryManagement,
    bool? requiresShipping,
    String? sku,
    num? weight,
    String? weightUnit,
    num? inventoryItemId,
    num? inventoryQuantity,
    num? oldInventoryQuantity,
    String? adminGraphqlApiId,
    dynamic imageId,
  }) =>
      Variants(
        id: id ?? _id,
        productId: productId ?? _productId,
        title: title ?? _title,
        price: price ?? _price,
        position: position ?? _position,
        inventoryPolicy: inventoryPolicy ?? _inventoryPolicy,
        compareAtPrice: compareAtPrice ?? _compareAtPrice,
        option1: option1 ?? _option1,
        option2: option2 ?? _option2,
        option3: option3 ?? _option3,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        taxable: taxable ?? _taxable,
        barcode: barcode ?? _barcode,
        fulfillmentService: fulfillmentService ?? _fulfillmentService,
        grams: grams ?? _grams,
        inventoryManagement: inventoryManagement ?? _inventoryManagement,
        requiresShipping: requiresShipping ?? _requiresShipping,
        sku: sku ?? _sku,
        weight: weight ?? _weight,
        weightUnit: weightUnit ?? _weightUnit,
        inventoryItemId: inventoryItemId ?? _inventoryItemId,
        inventoryQuantity: inventoryQuantity ?? _inventoryQuantity,
        oldInventoryQuantity: oldInventoryQuantity ?? _oldInventoryQuantity,
        adminGraphqlApiId: adminGraphqlApiId ?? _adminGraphqlApiId,
        imageId: imageId ?? _imageId,
      );

  int? get id => _id;

  int? get productId => _productId;

  String? get title => _title;

  String? get price => _price;

  num? get position => _position;

  String? get inventoryPolicy => _inventoryPolicy;

  String? get compareAtPrice => _compareAtPrice;

  String? get option1 => _option1;

  dynamic get option2 => _option2;

  dynamic get option3 => _option3;

  String? get createdAt => _createdAt;

  String? get updatedAt => _updatedAt;

  bool? get taxable => _taxable;

  String? get barcode => _barcode;

  String? get fulfillmentService => _fulfillmentService;

  num? get grams => _grams;

  String? get inventoryManagement => _inventoryManagement;

  bool? get requiresShipping => _requiresShipping;

  String? get sku => _sku;

  num? get weight => _weight;

  String? get weightUnit => _weightUnit;

  num? get inventoryItemId => _inventoryItemId;

  num? get inventoryQuantity => _inventoryQuantity;

  num? get oldInventoryQuantity => _oldInventoryQuantity;

  String? get adminGraphqlApiId => _adminGraphqlApiId;

  dynamic get imageId => _imageId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['product_id'] = _productId;
    map['title'] = _title;
    map['price'] = _price;
    map['position'] = _position;
    map['inventory_policy'] = _inventoryPolicy;
    map['compare_at_price'] = _compareAtPrice;
    map['option1'] = _option1;
    map['option2'] = _option2;
    map['option3'] = _option3;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['taxable'] = _taxable;
    map['barcode'] = _barcode;
    map['fulfillment_service'] = _fulfillmentService;
    map['grams'] = _grams;
    map['inventory_management'] = _inventoryManagement;
    map['requires_shipping'] = _requiresShipping;
    map['sku'] = _sku;
    map['weight'] = _weight;
    map['weight_unit'] = _weightUnit;
    map['inventory_item_id'] = _inventoryItemId;
    map['inventory_quantity'] = _inventoryQuantity;
    map['old_inventory_quantity'] = _oldInventoryQuantity;
    map['admin_graphql_api_id'] = _adminGraphqlApiId;
    map['image_id'] = _imageId;
    return map;
  }
}
