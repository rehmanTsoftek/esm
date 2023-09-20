import 'package:esm/config/functions/app_date_picker.dart';
import 'package:esm/resources/Widgets/ToolbarImage.dart';
import 'package:esm/resources/Widgets/app_field.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/utils/constants.dart';
import 'package:esm/resources/widgets/buttons/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegState();
  }
}

class RegState extends State<RegisterScreen> {
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  TextEditingController rpcController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController dofController = TextEditingController();
  TextEditingController marriageDateController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  bool boxVal = true;

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const SizeBoxHeight16(),
                    SvgPicture.asset(
                      Constants.authImg,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AppText(
                      'Welcome',
                      size: 20,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                    const AppText(
                      'Signup to your new account',
                      size: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.greyTextColor,
                    ),
                  ],
                ),
                form(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget form(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Form(
        key: registerFormKey,
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
                      controller: rpcController,
                      hint: 'Enter your reseller partner code (RPC)',
                      prefixIcon: Constants.person,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      validator: (val) {
                        if (val == null || val.trim().isEmpty) {
                          return " rpc reseller code is required";
                        }
                        return null;
                      },
                    ),
                  ],
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
                AppIconField(
                  controller: firstNameController,
                  hint: 'Enter your first name',
                  prefixIcon: Constants.person,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  validator: (val) {
                    if (val == null || val.trim().isEmpty) {
                      return "Last name is required";
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
                      controller: lastNameController,
                      hint: 'Enter your last name',
                      prefixIcon: Constants.person,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      validator: (val) {
                        if (val == null || val.trim().isEmpty) {
                          return "Last name is required";
                        }
                        return null;
                      },
                    ),
                  ],
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
                AppIconField(
                  onTap: () async {
                    String date = await AppDateTimePicker.getDate(context);
                    setState(() {
                      dofController.text = date;
                    });
                  },
                  controller: dofController,
                  hint: 'Enter your date of birth',
                  prefixIcon: Constants.person,
                  readOnly: true,
                  validator: (val) {
                    if (val == null || val.trim().isEmpty) {
                      return "Date of birth is required";
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
                AppIconField(
                  onTap: () async {
                    String date = await AppDateTimePicker.getDate(context);
                    setState(() {
                      marriageDateController.text = date;
                    });
                  },
                  controller: marriageDateController,
                  hint: 'Enter your marriage date',
                  prefixIcon: Constants.person,
                  readOnly: true,
                  validator: (val) {
                    if (val == null || val.trim().isEmpty) {
                      return "Marriage date is required";
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
                AppIconField(
                  controller: phoneNumberController,
                  hint: 'Enter your phone number',
                  prefixIcon: Constants.phone,
                  keyboardType: TextInputType.phone,
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
                  controller: confirmController,
                  hint: 'Confirm password',
                  prefixIcon: Constants.lock,
                  suffixIcon: Constants.eye,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  validator: (val) {
                    if (val == null || val.trim().isEmpty) {
                      return "Confirm password is required";
                    } else if (passwordController.text != val.trim()) {
                      return "Confirmation password does not match";
                    }
                    return null;
                  },
                ),
              ],
            ),
            const SizeBoxHeight16(),
            Row(
              children: [
                Checkbox(
                  value: boxVal,
                  onChanged: (value) {
                    setState(() {
                      boxVal = !boxVal;
                    });
                  },
                ),
                const AppText(
                  'I agree to',
                  size: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.greyTextColor,
                ),
                const AppText(
                  'Terms and Conditions',
                  size: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.bluecolor,
                ),
              ],
            ),
            const SizeBoxHeight16(),
            AppButton(
              onTap: () {
                // if (registerFormKey.currentState!.validate()) {}
              },
              assetUrl: Constants.registerBtn,
            ),
            const SizeBoxHeight32(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const AppText(
                  'Already have an account?',
                  size: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.greyTextColor,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const AppText(
                    'Login',
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
    );
  }
}
