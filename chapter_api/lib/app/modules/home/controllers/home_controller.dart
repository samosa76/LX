import 'package:chapter_api/app/modules/home/models/restaurant_model.dart';

import 'package:chapter_api/app/modules/home/providers/restaurant_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Future<RestaurantModel> getRestaurants() async {
    final data = await RestaurantProvider().getRestaurants();
    return data;
  }
}
