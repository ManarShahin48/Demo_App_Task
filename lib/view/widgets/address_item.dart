import 'package:demo_app_task/model/address_model.dart';
import 'package:demo_app_task/utils/utils.dart';
import 'package:flutter/cupertino.dart';

Widget addressItem(AddressModel addressModel) {
  return Container(
    height: SizeManager.s80,
    width: SizeManager.s190,
    decoration: BoxDecoration(
      color: ColorManager.white,
      borderRadius: const BorderRadius.all(
        Radius.circular(SizeManager.s15),
      ),
      border: Border.all(
        color: ColorManager.addressStroke,
        width: SizeManager.s2,
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: SizeManager.s60,
          width: SizeManager.s60,
          decoration: const BoxDecoration(
            color: ColorManager.addressSqr,
            borderRadius: BorderRadius.all(
              Radius.circular(SizeManager.s15),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              addressModel.title1,
              overflow: TextOverflow.ellipsis,
              style: getPoppinsBoldStyle(
                color: ColorManager.titleColor,
                fontSize: FontSize.s14,
              ),
            ),
            Text(
              addressModel.title2,
              overflow: TextOverflow.ellipsis,
              style: getPoppinsRegularStyle(
                color: ColorManager.titleColor,
                fontSize: FontSize.s12,
              ),
            ),
            Text(
              addressModel.title3,
              overflow: TextOverflow.ellipsis,
              style: getPoppinsRegularStyle(
                color: ColorManager.titleColor,
                fontSize: FontSize.s12,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
