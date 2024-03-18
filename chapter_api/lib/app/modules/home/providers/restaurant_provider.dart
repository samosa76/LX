import 'package:chapter_api/app/modules/home/models/restaurant_model.dart';
import 'package:get/get.dart';

class RestaurantProvider extends GetConnect {
  Future<RestaurantModel> getRestaurants() async {
    final response =
        await get('https://www.themealdb.com/api/json/v1//1/categories.php');
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return RestaurantModel.fromJson(response.body as Map<String, dynamic>);
    }
  }
}
