import 'package:demo_app_task/core/viewModel/control_view_model.dart';
import 'package:demo_app_task/utils/color_manager.dart';
import 'package:demo_app_task/utils/utils.dart';
import 'package:demo_app_task/view/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControlView extends GetWidget<ControlViewModel> {
  const ControlView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControlViewModel>(
      builder: (controller) => Scaffold(
        backgroundColor: ColorManager.white,
        body: controller.currentScreen,
        bottomNavigationBar: bottomNavigationBar(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: ColorManager.primary,
          onPressed: () {},
          child: const Icon(
            Icons.add_shopping_cart,
            size: SizeManager.s40,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
