import 'package:shamo_fix/models/product_models.dart';

class CartModel {
  int? id;
  ProductModel? product;
  int? qty;

  CartModel({this.id, this.product, this.qty});

  CartModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    product = ProductModel.fromJson(json['product']);
    qty = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'product': product!.toJson(),
      'quantity': qty,
    };
  }

  double getTotalPrice() {
    return product!.price! * qty!;
  }
}
