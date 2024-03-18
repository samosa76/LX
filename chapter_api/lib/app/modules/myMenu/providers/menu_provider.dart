import 'package:chapter_api/app/modules/myMenu/models/menu_model.dart';
import 'package:get/get.dart';

class MenuProvider extends GetConnect {
  var kategori = Get.arguments;
  Future<MenuModel> getMenu() async {
    final response = await get(
        'https://www.themealdb.com/api/json/v1//1/filter.php?c=$kategori');
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return MenuModel.fromJson(response.body as Map<String, dynamic>);
    }
  }
}
