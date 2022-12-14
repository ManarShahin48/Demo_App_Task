import 'package:demo_app_task/core/viewModel/control_view_model.dart';
import 'package:demo_app_task/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

Widget bottomNavigationBar() {
  return GetBuilder<ControlViewModel>(
    init: ControlViewModel(),
    builder: (controller) => BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(
            IconManager.grocery,
            height: SizeManager.s30,
            color: ColorManager.primary,
          ),
          label: 'Grocery',
          icon: SvgPicture.asset(
            IconManager.grocery,
            height: SizeManager.s30,
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(
            IconManager.news,
            height: SizeManager.s30,
            color: ColorManager.primary,
          ),
          label: 'News',
          icon: SvgPicture.asset(
            IconManager.news,
            height: SizeManager.s30,
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(
            IconManager.favorite,
            height: SizeManager.s30,
            color: ColorManager.primary,
          ),
          label: 'Favorite',
          icon: SvgPicture.asset(
            IconManager.favorite,
            height: SizeManager.s30,
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(
            IconManager.wallet,
            height: SizeManager.s30,
            color: ColorManager.primary,
          ),
          label: 'Cart',
          icon: SvgPicture.asset(
            IconManager.wallet,
            height: SizeManager.s30,
          ),
        ),
      ],
      selectedIconTheme: const IconThemeData(size: SizeManager.s40),
      currentIndex: controller.navigatorValue,
      onTap: (index) {
        controller.changeSelectedValue(index);
      },
      landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
      selectedItemColor: ColorManager.primary,
      backgroundColor: ColorManager.navigation,
      type: BottomNavigationBarType.fixed,
    ),
  );
}
