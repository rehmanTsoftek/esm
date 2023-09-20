import 'package:esm/resources/Widgets/ToolbarImage.dart';
import 'package:esm/resources/Widgets/app_field.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/utils/constants.dart';
import 'package:esm/resources/widgets/buttons/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../resources/widgets/sized_boxes.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ContactState();
  }
}

class ContactState extends State<ContactUsScreen> {
  final GlobalKey<FormState> contactFormKey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();

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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(28.0, 12, 28, 0),
                child: AppText(
                  'Contact Us',
                size: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                ),
              ),
              form(context),
              const SizedBox(
                height: 10,
              ),
              SvgPicture.asset(
                Constants.contactFooterImg,
                width: MediaQuery.sizeOf(context).width,
              ),
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
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.lightgreybgColor,
            border: Border.all(color: Colors.transparent, width: 2),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: AppColors.lightgreybgColor,
                offset: Offset(0, 10),
                blurRadius: 10,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(35.0, 12, 35, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 10),
                  child: AppText(
                    'Name ',
                    size: 10,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                ),
                Card(
                  elevation: 10,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: AppIconField(
                      controller: firstNameController,
                      hint: 'Enter your first name',
                      prefixIcon: Constants.person,
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      validator: (val) {
                        if (val == null || val.trim().isEmpty) {
                          return "Last name is required";
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizeBoxHeight16(),
                const Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 10),
                  child: AppText(
                    'Email',
                    size: 10,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                ),
                Card(
                  elevation: 10,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: AppIconField(
                      controller: firstNameController,
                      hint: 'Enter your first name',
                      prefixIcon: Constants.person,
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      validator: (val) {
                        if (val == null || val.trim().isEmpty) {
                          return "Last name is required";
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizeBoxHeight16(),
                const Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 10),
                  child: AppText(
                    'Subject',
                    size: 10,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                ),
                Card(
                  elevation: 10,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: AppIconField(
                      controller: firstNameController,
                      hint: 'Subject',

                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      validator: (val) {
                        if (val == null || val.trim().isEmpty) {
                          return "Last name is required";
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizeBoxHeight16(),
                const Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 10),
                  child: AppText(
                    'Message',
                    size: 10,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                ),
                Card(

                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: AppIconField(
                      controller: firstNameController,
                      hint: 'Enter the Message',

                      maxLines: 5,
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      validator: (val) {
                        if (val == null || val.trim().isEmpty) {
                          return "Required";
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizeBoxHeight16(),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                AppButton(
                  onTap: () {},
                  assetUrl: Constants.enquiryBtn,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
