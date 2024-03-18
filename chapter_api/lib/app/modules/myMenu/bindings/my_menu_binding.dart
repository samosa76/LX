import 'package:get/get.dart';

import '../controllers/my_menu_controller.dart';

class MyMenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyMenuController>(
      () => MyMenuController(),
    );
  }
}
