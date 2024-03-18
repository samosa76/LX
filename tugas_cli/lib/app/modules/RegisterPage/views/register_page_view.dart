import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_page_controller.dart';

class RegisterPageView extends GetView<RegisterPageController> {
  const RegisterPageView({super.key});
  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();
    final RegisterPageController controller = Get.put(RegisterPageController());

    var info = controller.warningMessage.obs;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //logo
              const Icon(
                Icons.add_reaction_outlined,
                size: 100,
              ),

              const SizedBox(height: 30),

              //welcome back
              Text(
                "Welcome my cabbage",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 20),

              RegisterTextField(
                Textcontroller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 20),

              RegisterTextField(
                Textcontroller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),

              const SizedBox(height: 20),

              RegisterTextField(
                Textcontroller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 20),

              RegisterTextField(
                Textcontroller: confirmPasswordController,
                hintText: 'Confirm Password',
                obscureText: true,
              ),
              const SizedBox(height: 15),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  children: [
                    Obx(
                      () => Text(
                        '$info',
                        style: TextStyle(color: Colors.red[700]),
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 10),

              LoginButton(
                onTap: () {
                  String username, email, password, confirmPass;

                  username = usernameController.text;
                  email = emailController.text;
                  password = passwordController.text;
                  confirmPass = confirmPasswordController.text;

                  if (username.isEmpty || email.isEmpty || password.isEmpty) {
                    info.value = 'Wrong!, do it again';
                  } else if (confirmPass != password) {
                    info.value = 'Password didn\'t match';
                  } else {
                    controller.registerAccount();
                  }
                },
              ),
              //not a member sign up
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Divider(),
                    ),
                    const Text('Have an account?'),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: RegisterPageController().registerAccount,
                      child: const Text(
                        'LOGIN NOW',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: Divider(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterTextField extends StatelessWidget {
  final Textcontroller;
  final String hintText;
  final bool obscureText;

  const RegisterTextField({
    super.key,
    required this.Textcontroller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: Textcontroller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          hintText: hintText,
          fillColor: Colors.grey.shade200,
          filled: true,
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final Function()? onTap;

  const LoginButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.black,
        ),
        child: const Center(
          child: Text(
            'Sign in',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class RegisterButton extends StatelessWidget {
  final Function()? onTap;

  const RegisterButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.blueGrey[600],
        ),
        child: const Center(
          child: Text(
            'Sign up',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
