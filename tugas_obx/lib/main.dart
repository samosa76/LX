import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/home.dart';
import 'routes/page_route.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const HomePage(),
      getPages: PagesRoute.pages,
    );
  }
}
