import 'package:esm/resources/Widgets/ToolbarImage.dart';
import 'package:esm/resources/Widgets/app_field.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/utils/constants.dart';
import 'package:esm/resources/widgets/buttons/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RequestQuoteScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return  ReqState();
  }


}
class ReqState extends State<RequestQuoteScreen>{
  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController sizeController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  final GlobalKey<FormState> reqFormKey = GlobalKey<FormState>();
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
                  'Request Quote',
                  size: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                ),
              ),
              form(context),

            ],
          ),
        ),
      ),
    );
  }

  Widget form(BuildContext context) {
    return Form(
      key:reqFormKey,
      child: Padding(
        padding: const EdgeInsets.all(38.0),
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
                btnText: "Send Request",
                width:250,
                onTap: (){
                 Navigator.pop(context);

                }

            ),
          ),
        ],
      )
      ),
    );
  }


}