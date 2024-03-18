import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_obx/pages/components/my_button.dart';

class DialogPage extends StatelessWidget {
  const DialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: const Text('Dialog')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.dialog(
                  barrierDismissible: false,
                  AlertDialog(
                    title: const Text('Sam'),
                    content: const Text("Pilih saya jadi presiden!"),
                    actions: [
                      TextButton(
                        onPressed: () {},
                        child: const Text("No"),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text('Yes'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Dialog'),
            ),
            const MyButton(name: 'Nexxt', route: 'bottom_sheets'),
          ],
        ),
      ),
    );
  }
}
