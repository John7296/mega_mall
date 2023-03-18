// To parse this JSON data, do
//
//     final home = homeFromJson(jsonString);

import 'dart:convert';

Home homeFromJson(String str) => Home.fromJson(json.decode(str));

String homeToJson(Home data) => json.encode(data.toJson());

class Home {
    Home({
        required this.status,
        required this.msg,
        required this.categories,
    });

    bool status;
    String msg;
    List<Category> categories;

    factory Home.fromJson(Map<String, dynamic> json) => Home(
        status: json["status"],
        msg: json["msg"],
        categories: List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
    };
}

class Category {
    Category({
        required this.title,
    });

    String title;

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        title: json["title"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
    };
}
