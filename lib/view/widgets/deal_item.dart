import 'package:demo_app_task/model/deal_model.dart';
import 'package:demo_app_task/utils/utils.dart';
import 'package:flutter/material.dart';

Widget dealItem(DealModel dealModel) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      dealModel.shape,
      const SizedBox(
        width: SizeManager.s10,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            dealModel.name,
            style: getPoppinsBoldStyle(
              color: ColorManager.categoryName,
              fontSize: FontSize.s12,
            ),
          ),
          Text(
            dealModel.num,
            style: getPoppinsMediumStyle(
              color: ColorManager.categoryName,
              fontSize: FontSize.s12,
            ),
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.location_on_outlined,
                size: SizeManager.s20,
              ),
              const SizedBox(
                width: SizeManager.s5,
              ),
              Text(
                dealModel.location,
                style: getPoppinsRegularStyle(
                  color: ColorManager.categoryName,
                  fontSize: FontSize.s10,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                dealModel.activePrice,
                style: getPoppinsBoldStyle(
                  color: ColorManager.primary,
                  fontSize: FontSize.s20,
                ),
              ),
              const SizedBox(
                width: SizeManager.s15,
              ),
              Text(
                dealModel.discountPrice,
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  color: ColorManager.categoryName,
                  fontSize: FontSize.s15,
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
