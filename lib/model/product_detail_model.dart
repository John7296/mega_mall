// To parse this JSON data, do
//
//     final productDetail = productDetailFromJson(jsonString);

import 'dart:convert';

ProductDetail productDetailFromJson(String str) => ProductDetail.fromJson(json.decode(str));

String productDetailToJson(ProductDetail data) => json.encode(data.toJson());

class ProductDetail {
    ProductDetail({
        required this.status,
        required this.msg,
        required this.poroductId,
        required this.title,
        required this.price,
        required this.imageUrl,
        required this.description,
    });

    bool status;
    String msg;
    String poroductId;
    String title;
    int price;
    String imageUrl;
    String description;

    factory ProductDetail.fromJson(Map<String, dynamic> json) => ProductDetail(
        status: json["status"],
        msg: json["msg"],
        poroductId: json["poroduct_id"],
        title: json["title"],
        price: json["price"],
        imageUrl: json["imageUrl"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "poroduct_id": poroductId,
        "title": title,
        "price": price,
        "imageUrl": imageUrl,
        "description": description,
    };
}
