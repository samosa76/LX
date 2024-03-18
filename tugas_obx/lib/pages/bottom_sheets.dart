import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetsPage extends StatelessWidget {
  const BottomSheetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottome Sheets'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.bottomSheet(
              Container(
                height: 150,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Share Your Experience'),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text('Done'),
                    ),
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          child: const Text('Bottom Sheets'),
        ),
      ),
    );
  }
}
