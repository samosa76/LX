import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/myMenu/bindings/my_menu_binding.dart';
import '../modules/myMenu/views/my_menu_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MY_MENU,
      page: () => const MyMenuView(),
      binding: MyMenuBinding(),
    ),
  ];
}
