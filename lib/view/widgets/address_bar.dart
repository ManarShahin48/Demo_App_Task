import 'package:demo_app_task/utils/utils.dart';
import 'package:flutter/material.dart';

Widget addressBar(String text){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: PaddingManager.p20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: SizeManager.s50,
          width: SizeManager.s180,
          decoration: const BoxDecoration(
              color: ColorManager.primary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(SizeManager.s50),
                topLeft: Radius.circular(SizeManager.s50),
                bottomRight: Radius.circular(SizeManager.s20),
                topRight: Radius.circular(SizeManager.s80),
              )),
          child: Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                size: SizeManager.s35,
                color: ColorManager.white,
              ),
              Text(
                text,
                style: getPoppinsBoldStyle(
                  color: ColorManager.white,
                  fontSize: FontSize.s18,
                ),
              )
            ],
          ),
        ),
        Container(
          height: SizeManager.s50,
          width: SizeManager.s50,
          decoration: BoxDecoration(
            color: ColorManager.white,
            shape: BoxShape.circle,
            border: Border.all(
              color: ColorManager.stroke,
              width: SizeManager.s2,
            ),
          ),
        ),
      ],
    ),
  );
}