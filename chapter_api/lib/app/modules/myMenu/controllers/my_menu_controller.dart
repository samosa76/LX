import 'package:chapter_api/app/modules/myMenu/models/menu_model.dart';
import 'package:chapter_api/app/modules/myMenu/providers/menu_provider.dart';
import 'package:get/get.dart';

class MyMenuController extends GetxController {
  var kategori = Get.arguments;
  Future<MenuModel> getMenu() async {
    final data = await MenuProvider().getMenu();
    return data;
  }
}
