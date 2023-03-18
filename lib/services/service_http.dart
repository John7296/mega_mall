import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:mega_mall/model/home_model.dart';
import 'package:mega_mall/model/product_detail_model.dart';

class HttpData {
  Future<Home> fetchProducts() async {
    var response = await http.get(
      Uri.parse("https://run.mocky.io/v3/a481070c-6988-4162-9353-3951d5c3740d"),
    );

    if (response.statusCode == 200) {
      print(response.body);

      var data = response.body;
      return homeFromJson(data);
    } else {
      // throw Exception();
      var data = response.body;
      return homeFromJson(data);
    }
  }

  Future<ProductDetail> fetchCategory() async {
    var response = await http.get(
      Uri.parse("https://run.mocky.io/v3/02f45ae4-aecc-442e-b094-8bea4f450360"),
    );

    if (response.statusCode == 200) {
      print(response.body);

      var data = response.body;
      return productDetailFromJson(data);
    } else {
      // throw Exception();
      var data = response.body;
      return productDetailFromJson(data);
    }
  }
}
