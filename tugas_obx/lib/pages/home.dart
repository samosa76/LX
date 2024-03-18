import 'package:flutter/material.dart';
import 'package:tugas_obx/pages/components/my_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.blue[300],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyButton(name: 'Change String', route: 'change_string'),
          ],
        ),
      ),
    );
  }
}
