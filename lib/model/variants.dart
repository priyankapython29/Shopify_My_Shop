class Variants {
  Variants({
      required this.id,
    required this.productId,
    required this.title,
    required this.price,
    required this.position,
    required this.inventoryPolicy,
    required this.option1,
    required this.createdAt,
    required this.updatedAt,
    required  this.taxable,
    required  this.fulfillmentService,
    required this.grams,
    required this.requiresShipping,
    required  this.sku,
    required  this.weight,
    required this.weightUnit,
    required this.inventoryItemId,
    required this.inventoryQuantity,
    required this.oldInventoryQuantity,
    });

  Variants.fromJson(dynamic json) {
    id = json['id'];
    productId = json['product_id'];
    title = json['title'];
    price = json['price'];
    position = json['position'];
    inventoryPolicy = json['inventory_policy'];
    option1 = json['option1'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    taxable = json['taxable'];
    fulfillmentService = json['fulfillment_service'];
    grams = json['grams'];
    requiresShipping = json['requires_shipping'];
    sku = json['sku'];
    weight = json['weight'];
    weightUnit = json['weight_unit'];
    inventoryItemId = json['inventory_item_id'];
    inventoryQuantity = json['inventory_quantity'];
    oldInventoryQuantity = json['old_inventory_quantity'];
  }
  int? id;
  int? productId;
  String? title;
  String? price;
  int? position;
  String? inventoryPolicy;
  String? option1;
  String? createdAt;
  String? updatedAt;
  bool? taxable;
  String? fulfillmentService;
  int? grams;
  bool? requiresShipping;
  String ?sku;
  double? weight;
  String? weightUnit;
  int? inventoryItemId;
  int? inventoryQuantity;
  int? oldInventoryQuantity;
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['product_id'] = productId;
    map['title'] = title;
    map['price'] = price;
    map['position'] = position;
    map['inventory_policy'] = inventoryPolicy;
    map['option1'] = option1;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['taxable'] = taxable;
    map['fulfillment_service'] = fulfillmentService;
    map['grams'] = grams;
    map['requires_shipping'] = requiresShipping;
    map['sku'] = sku;
    map['weight'] = weight;
    map['weight_unit'] = weightUnit;
    map['inventory_item_id'] = inventoryItemId;
    map['inventory_quantity'] = inventoryQuantity;
    map['old_inventory_quantity'] = oldInventoryQuantity;
    return map;
  }

}