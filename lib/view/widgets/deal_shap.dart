import 'package:demo_app_task/utils/utils.dart';
import 'package:flutter/material.dart';

Widget dealShape(Color color) {
  return Stack(
    alignment: Alignment.topLeft,
    children: [
      Container(
        height: SizeManager.s100,
        width: SizeManager.s100,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(SizeManager.s15),
          ),
        ),
      ),
      Container(
        height: 30,
        width: 30,
        decoration: const BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(SizeManager.s15),
            topRight: Radius.circular(SizeManager.s20),
            bottomLeft: Radius.circular(SizeManager.s20),
            bottomRight: Radius.circular(SizeManager.s20),
          ),
        ),
        alignment: Alignment.center,
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite_border,
            color: ColorManager.grey,
            size: SizeManager.s15,
          ),
        ),
      ),
    ],
  );
}
