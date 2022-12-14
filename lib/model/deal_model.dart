import 'package:flutter/material.dart';

class DealModel {
  String name;
  String num;
  String location;
  String activePrice;
  String discountPrice;
  Widget shape;

  DealModel({
    required this.name,
    required this.num,
    required this.location,
    required this.activePrice,
    required this.discountPrice,
    required this.shape,
  });
}
