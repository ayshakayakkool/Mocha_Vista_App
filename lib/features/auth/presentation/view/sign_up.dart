import 'package:flutter/material.dart';
import 'package:mocha_vista/core/utlis/colors.dart';
import 'package:mocha_vista/core/common/custom_text_form_field.dart';
import 'package:mocha_vista/core/utlis/constant.dart';
import 'package:mocha_vista/core/utlis/values.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.p25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('asset/images/logo.png', height: 150, width: 150),
                      Text(
                        "Sign Up",
                        style: textTheme.headlineLarge?.copyWith(
                          color: ColorManager.cocoaBrown,
                        ),
                      ),
                      kSizedBox20,
                      CustomTextFormField(
                        hintText: "Enter User Name",
                        controller: nameController,
                      ),
                      kSizedBox20,
                      CustomTextFormField(
                        hintText: "Enter Email",
                        controller: emailController,
                      ),
                      kSizedBox20,
                      CustomTextFormField(
                        hintText: "Enter Phone",
                        controller: phoneController,
                      ),
                      kSizedBox20,
                      CustomTextFormField(
                        obscureText: true,
                        hintText: "Enter Password",
                        controller: passwordController,
                      ),
                      kSizedBox20,
                      InkWell(
                        borderRadius: BorderRadius.circular(AppSize.s12),
                        onTap: () {
                          // TODO: handle sign up
                        },
                        child: Container(
                          height: AppSize.s48,
                          width: AppSize.s250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(AppSize.s12),
                            color: ColorManager.darkBrown,
                          ),
                          child: Center(
                            child: Text(
                              "Sign Up",
                              style: textTheme.headlineSmall?.copyWith(
                                color: ColorManager.offWhite,
                              ),
                            ),
                          ),
                        ),
                      ),
                      kSizedBox20,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an Account?",
                            style: textTheme.bodySmall,
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text(
                              "Sign In",
                              style: textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}