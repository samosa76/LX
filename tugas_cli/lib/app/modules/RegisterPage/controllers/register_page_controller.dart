import 'package:get/get.dart';
import 'package:tugas_cli/app/modules/LoginPage/views/login_page_view.dart';

class RegisterPageController extends GetxController {
  final count = 0.obs;
  String warningMessage = '';
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void registerAccount() {
    Get.off(() => const LoginPageView());
  }
}
