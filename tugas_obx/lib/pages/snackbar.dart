import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_obx/pages/components/my_button.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snack Bar')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.snackbar("Saerom", ":)");
              },
              child: const Text('Snackbar'),
            ),
            const MyButton(name: 'Next', route: 'dialog'),
          ],
        ),
      ),
    );
  }
}
