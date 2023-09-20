import 'package:esm/config/functions/app_date_picker.dart';
import 'package:esm/resources/Widgets/app_field.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/widgets/buttons/app_button.dart';
import 'package:esm/resources/widgets/buttons/radio_button.dart';
import 'package:esm/resources/widgets/profile_image.dart';
import 'package:flutter/material.dart';

class GeneralScreen extends StatefulWidget {
  const GeneralScreen({super.key});

  @override
  State<GeneralScreen> createState() => _GeneralScreenState();
}

class _GeneralScreenState extends State<GeneralScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController dofController = TextEditingController();
  TextEditingController marriageDateController = TextEditingController();
  TextEditingController aboutMeController = TextEditingController();
  TextEditingController contactNumberController = TextEditingController();
  int groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Align(
              alignment: Alignment.center,
              child: AppProfileImage(
                title: 'Pick Image',
                height: 100,
                width: 100,
                imagePicker: true,
              ),
            ),
            const SizeBoxHeight16(),
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: AppText(
                'First Name',
                color: Colors.black,
              ),
            ),
            const SizeBoxHeight4(),
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
                  hint: 'Enter First Name',
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  validator: (val) {
                    if (val == null || val.trim().isEmpty) {
                      return "Required";
                    }
                    return null;
                  },
                ),
              ],
            ),
            const SizeBoxHeight16(),
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: AppText(
                'Last Name',
                color: Colors.black,
              ),
            ),
            const SizeBoxHeight4(),
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
                  hint: 'Enter Last Name',
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  validator: (val) {
                    if (val == null || val.trim().isEmpty) {
                      return "Required";
                    }
                    return null;
                  },
                ),
              ],
            ),
            const SizeBoxHeight16(),
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: AppText(
                'Email Address',
                color: Colors.black,
              ),
            ),
            const SizeBoxHeight4(),
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
                  controller: emailAddressController,
                  hint: 'Enter Email Address',
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  validator: (val) {
                    if (val == null || val.trim().isEmpty) {
                      return "Required";
                    }
                    return null;
                  },
                ),
              ],
            ),
            const SizeBoxHeight16(),
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: AppText(
                'D.O.B',
                color: Colors.black,
              ),
            ),
            const SizeBoxHeight4(),
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
                  readOnly: true,
                  controller: dofController,
                  hint: 'Enter D.O.B',
                  validator: (val) {
                    if (val == null || val.trim().isEmpty) {
                      return "Required";
                    }
                    return null;
                  },
                ),
              ],
            ),
            const SizeBoxHeight16(),
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: AppText(
                'Marriage Date (If Applicable)',
                color: Colors.black,
              ),
            ),
            const SizeBoxHeight4(),
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
                  readOnly: true,
                  controller: dofController,
                  hint: 'Select Marriage Date',
                  validator: (val) {
                    if (val == null || val.trim().isEmpty) {
                      return "Required";
                    }
                    return null;
                  },
                ),
              ],
            ),
            const SizeBoxHeight16(),
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: AppText(
                'Contact Number',
                color: Colors.black,
              ),
            ),
            const SizeBoxHeight4(),
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
                  controller: contactNumberController,
                  hint: 'Enter Contact Number',
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                  validator: (val) {
                    if (val == null || val.trim().isEmpty) {
                      return "Required";
                    }
                    return null;
                  },
                ),
              ],
            ),
            const SizeBoxHeight16(),
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: AppText(
                'About Me',
                color: Colors.black,
              ),
            ),
            const SizeBoxHeight4(),
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
                  controller: contactNumberController,
                  hint: 'Enter About Me',
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  validator: (val) {
                    if (val == null || val.trim().isEmpty) {
                      return "Required";
                    }
                    return null;
                  },
                ),
              ],
            ),
            const SizeBoxHeight16(),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: AppText('Choose Event Worker Type(Become an Event Worker)'),
            ),
            Row(
              children: [
                AppRadioButtonList(
                  groupValue: groupValue,
                  value: 1,
                  onChanged: (v) {
                    setState(() {
                      groupValue = v;
                    });
                  },
                  text: "Guest",
                ),
                AppRadioButtonList(
                  groupValue: groupValue,
                  value: 2,
                  onChanged: (v) {
                    setState(() {
                      groupValue = v;
                    });
                  },
                  text: "Non- sexual",
                ),
              ],
            ),
            const SizeBoxHeight16(),
            const SizeBoxHeight16(),
            Align(
              alignment: Alignment.center,
              child: AppGradiantButton(
                onTap: () {},
                btnText: 'Submit',
                width: 150,
              ),
            ),
            const SizeBoxHeight16(),
            const SizeBoxHeight16(),
          ],
        ),
      ),
    );
  }
}
