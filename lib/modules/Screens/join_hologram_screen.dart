import 'package:esm/resources/Widgets/ToolbarImage.dart';
import 'package:esm/resources/Widgets/app_field.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/utils/constants.dart';
import 'package:esm/resources/widgets/buttons/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



class JoinHologramEngineer extends StatefulWidget {
  const JoinHologramEngineer({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HologramState();
  }
}

class HologramState extends State<JoinHologramEngineer> {
  final GlobalKey<FormState> contactFormKey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: ToolbarImage(
        appBar: AppBar(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(28.0, 12, 28, 0),
                child: AppText(
                  'Join Hologram Engineer',
                  size: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                ),
              ),
              const SizeBoxHeight16(),
              form(context),

            ],
          ),
        ),
      ),
    );
  }

  Widget form(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(28.0, 12, 28, 0),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(28.0, 12, 28, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20, bottom: 10),
                child: AppText(
                  'First Name ',
                  size: 10,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
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
                        hint: 'Buland',

                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        validator: (val) {
                          if (val == null || val.trim().isEmpty) {
                            return "First name is required";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ],
              ),

              const SizeBoxHeight16(),
              const Padding(
                padding: EdgeInsets.only(left: 20, bottom: 10),
                child: AppText(
                  'Last Name ',
                  size: 10,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
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
                        hint: 'Khan',

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
              const Padding(
                padding: EdgeInsets.only(left: 20, bottom: 10),
                child: AppText(
                  'Email Address',
                  size: 10,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
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
                        controller: emailController,
                        hint: 'johndoe@gmail.com',

                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        validator: (val) {
                          if (val == null || val.trim().isEmpty) {
                            return "Email required";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ],
              ),

              const SizeBoxHeight16(),
              const Padding(
                padding: EdgeInsets.only(left: 20, bottom: 10),
                child: AppText(
                  'Phone',
                  size: 10,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
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
                        controller: phoneController,
                        hint: '+123456789',

                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.next,
                        validator: (val) {
                          if (val == null || val.trim().isEmpty||val!=11) {
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
              const Padding(
                padding: EdgeInsets.only(left: 20, bottom: 10),
                child: AppText(
                  'Address',
                  size: 10,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
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
                        controller: addressController,
                        hint: 'Texas ,USA',

                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        validator: (val) {
                          if (val == null || val.trim().isEmpty) {
                            return "Required";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ],
              ),

              const SizeBoxHeight16(),
              const SizeBoxHeight8(),
              const SizeBoxHeight8(),

              Center(
                child: AppButton(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  assetUrl: Constants.sendRequestBtn,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
