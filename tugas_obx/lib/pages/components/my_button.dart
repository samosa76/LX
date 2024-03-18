import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyButton extends StatelessWidget {
  final name;
  final route;
  const MyButton({super.key, required this.name, required this.route});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () async {
          Get.toNamed('/$route');
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        ),
        child: Text(name),
      ),
    );
  }
}
