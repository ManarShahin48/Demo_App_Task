import 'package:demo_app_task/model/category_model.dart';
import 'package:demo_app_task/utils/utils.dart';
import 'package:flutter/material.dart';

Widget categoryItem(CategoryModel categoryModel) {
  return Column(
    children: [
      categoryModel.shape,
      const SizedBox(
        height: SizeManager.s12,
      ),
      Text(
        categoryModel.name,
        style: getPoppinsMediumStyle(
          color: ColorManager.categoryName,
          fontSize: FontSize.s12,
        ),
      ),
    ],
  );
}
