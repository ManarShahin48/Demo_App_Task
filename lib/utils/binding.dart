import 'package:demo_app_task/core/viewModel/cart_view_model.dart';
import 'package:demo_app_task/core/viewModel/control_view_model.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(() => AuthViewModel());
    Get.lazyPut(() => CartViewModel());
    Get.lazyPut(() => ControlViewModel());
  }
}
