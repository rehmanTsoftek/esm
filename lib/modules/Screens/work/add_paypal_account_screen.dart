import 'package:flutter/material.dart';

import '../../../resources/Widgets/app_field.dart';
import '../../../resources/Widgets/app_text.dart';
import '../../../resources/Widgets/sized_boxes.dart';
import '../../../resources/utils/app_colors.dart';
import '../../../resources/widgets/Toolbar.dart';
import '../../../resources/widgets/buttons/app_button.dart';

class AddPaypalAccountScreen extends StatefulWidget {
  const AddPaypalAccountScreen({super.key});

  @override
  State<AddPaypalAccountScreen> createState() => _AddPaypalAccountScreenState();
}

class _AddPaypalAccountScreenState extends State<AddPaypalAccountScreen> {
  TextEditingController bankNameController = TextEditingController();
  TextEditingController bankHolderNameController = TextEditingController();
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController accountNumberAndIBANNumberController =
  TextEditingController();
  TextEditingController routingNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController countryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolbarBack(
        appBar: AppBar(),
        title: "Add Paypal Account",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: AppText(
                  'Bank Name',
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
                    controller: bankNameController,
                    hint: 'Enter Bank Name',
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
                  'Bank Holder Name',
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
                    controller: bankHolderNameController,
                    hint: 'Enter Bank Holder Name',
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
                  'Account Number and IBAN Number',
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
                    controller: accountNumberAndIBANNumberController,
                    hint: 'Enter Account Number and IBAN Number',
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
                  'Country',
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
                    controller: countryController,
                    hint: 'Enter Country',
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
                  'Routing Number',
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
                    controller: countryController,
                    hint: 'Enter Routing Number',
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
                  'Routing Number',
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
                    controller: countryController,
                    hint: 'Enter Routing Number',
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
                  'Address',
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
                    controller: addressController,
                    hint: 'Enter Address',
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
      ),
    );
  }
}
