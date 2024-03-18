import 'package:get/get.dart';
import 'package:tugas_cli/app/modules/RegisterPage/views/register_page_view.dart';
import 'package:tugas_cli/app/modules/home/views/home_view.dart';

class LoginPageController extends GetxController with StateMixin<String> {
  final count = 0.obs;
  String warningMessage = "";
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

  void loginButtonClicked(String username, String pass) {
    if (username.isEmpty || pass.isEmpty) {
    } else {
      Get.to(() => const HomeView(), arguments: username);
    }
  }

  void registerButtonClicked() {
    Get.off(() => const RegisterPageView());
  }
}
