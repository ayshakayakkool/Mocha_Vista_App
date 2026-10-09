import 'package:flutter/material.dart';
import 'package:mocha_vista/core/utlis/colors.dart';
import 'package:mocha_vista/core/common/custom_text_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login with Email",
              style: textTheme.headlineLarge?.copyWith(
                color: ColorManager.cocoaBrown,
              ),
            ),
            SizedBox(height: 20),
            CustomTextFormField(
              hintText: "Enter Email",
              controller: emailController,
            ),
            SizedBox(height: 20),
            CustomTextFormField(
              obscureText: true,
              hintText: "Enter Password",
              controller: passwordController,
            ),
            SizedBox(height: 20),
            Container(
              child: Center(
                child: Text(
                  "Login",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: ColorManager.offWhite,
                  ),
                ),
              ),
              height: 48,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: ColorManager.darkBrown,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text("New here?", style: Theme.of(context).textTheme.bodySmall),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Register",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
