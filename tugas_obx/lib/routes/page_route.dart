import 'package:get/get.dart';
import 'package:tugas_obx/pages/bottom_sheets.dart';
import '../pages/home.dart';
import '../pages/change_string.dart';
import '../pages/snackbar.dart';
import '../pages/dialog.dart';
import 'routes_name.dart';

class PagesRoute {
  static final pages = [
    GetPage(name: RoutesName.pageHome, page: () => const HomePage()),
    GetPage(name: RoutesName.pageDialog, page: () => const DialogPage()),
    GetPage(name: RoutesName.pageSnackBar, page: () => const SnackbarPage()),
    GetPage(
        name: RoutesName.pageChangeString, page: () => const ChangeString()),
    GetPage(
        name: RoutesName.pageBottomSheets,
        page: () => const BottomSheetsPage()),
  ];
}
