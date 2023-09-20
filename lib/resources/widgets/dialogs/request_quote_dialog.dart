import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/utils/constants.dart';
import 'package:esm/resources/widgets/app_field.dart';
import 'package:esm/resources/widgets/app_text.dart';
import 'package:esm/resources/widgets/buttons/app_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RequestQuoteDialog extends StatelessWidget {

  final Function? onButtonPress;
  TextEditingController fullNameController = TextEditingController();
  final GlobalKey<FormState> reqFormKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController sizeController = TextEditingController();
  TextEditingController noteController = TextEditingController();

   RequestQuoteDialog({
    super.key,

    this.onButtonPress,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(

      shape: RoundedRectangleBorder(
        borderRadius:
        BorderRadius.circular(20.0), // Adjust the radius as needed
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          border: Border.all(
            width: 1,
            color: AppColors.noColor,
          ),
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10.0,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,

              children: <Widget>[
                const Center(
                  child: AppText(
                    'Request Quote',
                    size: 20,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                  ),
                ),
                Form(
                  key: reqFormKey,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      const SizeBoxHeight8(),

                      const Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 10),

                        child:

                        AppText(
                          'Full Name ',
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
                                  color: AppColors.greyBgColor,
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
                            hint: 'Buland',

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
                        padding: EdgeInsets.only(left: 20, bottom: 10),
                        child: AppText(
                          'Email ',
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
                          AppIconField(
                            controller: emailController,
                            hint: 'johndoe@mail.com',

                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            validator: (val) {
                              if (val == null || val.trim().isEmpty) {
                                return "Email is required";
                              }
                              return null;
                            },
                          ),

                        ],
                      ),

                      const SizeBoxHeight16(),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 10),
                        child: AppText(
                          'Phone No',
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
                          AppIconField(
                            controller: phoneController,
                            hint: '+12 3440091',

                            keyboardType: TextInputType.phone,
                            textInputAction: TextInputAction.next,
                            validator: (val) {
                              if (val == null || val.trim().isEmpty||val!=11) {
                                return "Number required";
                              }
                              return null;
                            },
                          ),

                        ],
                      ),

                      const SizeBoxHeight16(),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 10),
                        child: AppText(
                          'Quantity',
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
                          AppIconField(
                            controller: quantityController,
                            hint: '22',

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
                        padding: EdgeInsets.only(left: 20, bottom: 10),
                        child: AppText(
                          'Size',
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
                          AppIconField(
                            controller: sizeController,
                            hint: 'Large',

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

                      const SizeBoxHeight16(),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 10),
                        child: AppText(
                          'Note',
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
                          AppIconField(
                            controller: noteController,
                            hint: 'note',

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

                      const SizeBoxHeight16(),


                      Center(
                        child: AppGradiantButton(
                            btnText: "Request Quote",
                            width:250,
                            onTap: (){
                              onButtonPress!();

                            }

                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
