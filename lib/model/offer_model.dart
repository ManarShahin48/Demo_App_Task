import 'package:flutter/material.dart';

class CartModel {
  String name;
  String data;
  String price;
  Widget shape;
  Function function;

  CartModel({
    required this.name,
    required this.data,
    required this.price,
    required this.shape,
    required this.function,
  });
}
