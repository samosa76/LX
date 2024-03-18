import 'package:get/get.dart';
import 'package:tugas_cli/app/modules/LoginPage/views/login_page_view.dart';
import 'package:tugas_cli/app/modules/RegisterPage/views/register_page_view.dart';

class HomeController extends GetxController with StateMixin<String> {
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void successState() {
    change("Status", status: RxStatus.success());
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void registerButtonClicked() {
    Get.to(() => const RegisterPageView(),
        arguments: 'Message from the future');
  }

  void loginButtonClicked() {
    Get.to(() => const LoginPageView());
  }
}
