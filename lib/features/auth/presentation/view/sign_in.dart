import 'package:flutter/material.dart';
import 'package:mocha_vista/core/utlis/colors.dart';
import 'package:mocha_vista/core/common/custom_text_form_field.dart';
import 'package:mocha_vista/core/utlis/constant.dart';
import 'package:mocha_vista/core/utlis/values.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
            Image.asset('asset/images/logo.png', height: 150, width: 150),
            Text(
              "Sign In",
              style: textTheme.headlineLarge?.copyWith(
                color: ColorManager.cocoaBrown,
              ),
            ),
            kSizedBox30,
            CustomTextFormField(
              hintText: "Enter Email",
              controller: emailController,
            ),
            kSizedBox20,
            CustomTextFormField(
              obscureText: true,
              hintText: "Enter Password",
              controller: passwordController,
            ),
            kSizedBox20,
            Container(
              height: AppSize.s48,
              width: AppSize.s250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: ColorManager.darkBrown,
              ),
              child: Center(
                child: Text(
                  "Sign In",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: ColorManager.offWhite,
                  ),
                ),
              ),
            ),
            kSizedBox20,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an Account?",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signUp');
                  },
                  child: Text(
                    "Sign up",
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
