import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_page_controller.dart';

class LoginPageView extends GetView<LoginPageController> {
  const LoginPageView({super.key});
  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();
    var info = LoginPageController().warningMessage.obs;

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
                Icons.account_circle,
                size: 100,
              ),

              const SizedBox(height: 50),

              //welcome back
              Text(
                "Welcome my cabbage",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 20),

              //username textfield

              LoginTextField(
                Textcontroller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 20),
              //password textfield

              LoginTextField(
                Textcontroller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        '$info',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ),

              //signin button
              const SizedBox(height: 15),

              LoginButton(
                onTap: () {
                  String username = usernameController.text;
                  String password = passwordController.text;

                  if (username.isEmpty) {
                    info.value = 'Please enter your username correctly';
                  } else if (password.isEmpty) {
                    info.value = 'Please enter your password correctly';
                  }

                  LoginPageController().loginButtonClicked(username, password);
                },
              ),
              //continue with
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  Text(
                    'Don\'t have account?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),

              //google and image icon
              RegisterButton(
                onTap: LoginPageController().registerButtonClicked,
              ),
              //not a member sign up
            ],
          ),
        ),
      ),
    );
  }
}

class LoginTextField extends StatelessWidget {
  final Textcontroller;
  final String hintText;
  final bool obscureText;

  const LoginTextField({
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
        maxLength: 5,
        controller: Textcontroller,
        obscureText: obscureText,
        decoration: InputDecoration(
          counterText: '',
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
        margin: const EdgeInsets.all(25),
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
