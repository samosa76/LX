import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tugas_cli/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    final int randomNumber = random.nextInt(5);

    final pathway = ['Savant', 'Fool', 'Door', 'Error', 'Bard'];

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[350],
        title: const Text('Main'),
        actions: [
          TextButton.icon(
            onPressed: () {
              Get.dialog(
                AlertDialog(
                  title: const Text('Logout'),
                  content: const Text('For real???'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text("No"),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.back();
                        Get.offAllNamed(Routes.LOGIN_PAGE);
                      },
                      child: const Text('Yes'),
                    ),
                  ],
                ),
              );
            },
            icon: const Icon(Icons.logout),
            label: const Text(''),
          )
        ],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You\'re Back!!!',
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 15),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                margin: const EdgeInsets.all(30),
                child: Row(
                  children: [
                    const Column(
                      children: [
                        Icon(
                          Icons.account_box,
                          size: 70,
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name ",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          'Pathway ',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          'Sequence ',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    const SizedBox(
                      height: 100,
                      child: VerticalDivider(),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      children: [
                        Text(
                          Get.arguments,
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          pathway[randomNumber],
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          '$randomNumber',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
