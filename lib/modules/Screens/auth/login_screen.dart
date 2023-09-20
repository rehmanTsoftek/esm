import 'package:esm/resources/Widgets/ToolbarImage.dart';
import 'package:esm/resources/widgets/buttons/app_button.dart';
import 'package:esm/resources/Widgets/app_field.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool boxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: ToolbarImage(
        appBar: AppBar(),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: loginFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SvgPicture.asset(
                        Constants.authImg,
                      ),
                      const SizeBoxHeight16(),
                      const SizeBoxHeight4(),
                      const AppHeadings(
                        'Welcome Back!',
                        size: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                      const AppText(
                        'Login to your existing account',
                        size: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.greyTextColor,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.greyBgColor.withOpacity(1),
                                    spreadRadius: 1,
                                    blurRadius: 15,
                                    // blur radius
                                    offset: const Offset(5, 5),
                                  ),
                                ],
                              ),
                            ),
                            AppIconField(
                              controller: phoneNumberController,
                              hint: 'Enter your Email/Phone Number',
                              prefixIcon: Constants.phone,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              validator: (val) {
                                if (val == null || val.trim().isEmpty) {
                                  return "Phone number is required";
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                        const SizeBoxHeight16(),
                        Stack(
                          children: [
                            Container(
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.greyBgColor.withOpacity(1),
                                    spreadRadius: 1,
                                    blurRadius: 15,
                                    // blur radius
                                    offset: const Offset(5, 5),
                                  ),
                                ],
                              ),
                            ),
                            AppPasswordField(
                              controller: passwordController,
                              hint: 'Enter your password',
                              prefixIcon: Constants.lock,
                              suffixIcon: Constants.eye,
                              keyboardType: TextInputType.visiblePassword,
                              textInputAction: TextInputAction.next,
                              validator: (val) {
                                if (val == null || val.trim().isEmpty) {
                                  return "Password is required";
                                } else if (val.trim().length < 8) {
                                  return "Password must be at least 8 characters";
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                        const SizeBoxHeight16(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 76,
                            decoration: BoxDecoration(
                              color: AppColors.lightgreybgColor,
                              border: Border.all(
                                color: AppColors.greyBgColor,
                                width: 1,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Checkbox(
                                  value: boxValue,
                                  onChanged: (value) {
                                    setState(() {
                                      boxValue = !boxValue;
                                    });
                                  },
                                ),
                                const AppText(
                                  'Im not a robot',
                                  size: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.greyTextColor,
                                ),
                                SizedBox(height: 10, width: 20),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: SvgPicture.asset(
                                    Constants.captChaImg,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizeBoxHeight16(),
                        AppButton(
                          onTap: () {
                            Navigator.pushNamed(context, '/OtpScreen');
                            // if (loginFormKey.currentState!.validate()) {
                            //   String s = emailController.text;
                            // }
                          },
                          assetUrl: Constants.loginBTn,
                        ),
                        const SizeBoxHeight32(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const AppText(
                              'Don\'t have an account?',
                              size: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.greyTextColor,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, '/RegisterScreen');
                              },
                              child: const AppText(
                                'Register ',
                                size: 16,
                                fontWeight: FontWeight.w500,
                                color: AppColors.bluecolor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
