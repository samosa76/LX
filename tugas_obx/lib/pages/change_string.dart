import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_obx/pages/components/my_button.dart';

class ChangeString extends StatelessWidget {
  const ChangeString({super.key});

  @override
  Widget build(BuildContext context) {
    var test = "test".obs;
    void change() {
      switch (test.value) {
        case "TEST":
          test.value = test.value.toLowerCase();
          break;
        case "test":
          test.value = test.value.toUpperCase();
          break;
        default:
      }
    }

    return Scaffold(
      appBar: AppBar(title: const Text('OBX String')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              '$test',
              style: const TextStyle(fontSize: 24.0),
            ),
          ),
          const MyButton(name: 'Next', route: 'snackbar'),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => change(),
        child: const Icon(Icons.recycling),
      ),
    );
  }
}
