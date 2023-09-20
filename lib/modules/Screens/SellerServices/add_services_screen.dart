import 'package:esm/resources/Widgets/ToolbarImage.dart';
import 'package:esm/resources/Widgets/app_field.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/utils/constants.dart';
import 'package:esm/resources/widgets/buttons/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddServiceScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return  AddServiceReqState();
  }


}
class AddServiceReqState extends State<AddServiceScreen>{
  TextEditingController titleController = TextEditingController();

  TextEditingController descriptionController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  TextEditingController currencyController = TextEditingController();
  TextEditingController sizeController = TextEditingController();
  TextEditingController priceController = TextEditingController();
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
                  'Add Service',
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Form(

              child:Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 12, 20, 10),
                child: Container(
                  decoration: BoxDecoration(

                    boxShadow: [
                      BoxShadow(
                        color: AppColors.greyBgColor.withOpacity(0.35),
                        spreadRadius: 1,
                        blurRadius: 15,
                        // blur radius
                        offset: const Offset(5, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 10),
                        child: AppText(
                          'Title',
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
                            controller: titleController,
                            hint: 'Title',

                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            validator: (val) {
                              if (val == null || val.trim().isEmpty) {
                                return "Reuqired";
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
                          'Description ',
                          size: 10,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black,
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: AppIconField(
                            controller: descriptionController,
                            hint: 'Description',

                            keyboardType: TextInputType.text,
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
                      const Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 10),
                        child: AppText(
                          'Type of Product',
                          size: 10,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black,
                        ),
                      ),
                      Card(



                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: AppIconField(
                            controller: typeController,
                            hint: 'Type of product',

                            keyboardType: TextInputType.text,
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
                      const Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 10),
                        child: AppText(
                          'Currency',
                          size: 10,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black,
                        ),
                      ),
                      Card(



                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: AppIconField(
                            controller: currencyController,
                            hint: 'Currency',

                            keyboardType: TextInputType.text,
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
                      const Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 10),
                        child: AppText(
                          'Price',
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
                            controller: sizeController,
                            hint: 'Price',

                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.done,
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
                      const Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 10),
                        child: AppText(
                          'Size',
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
                            controller: sizeController,
                            hint: 'size',


                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.done,
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
                      const Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 10),
                        child: AppText(
                          'Note',
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
                        ),
                      ),

                      const SizeBoxHeight16(),
                      const SizeBoxHeight8(),

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
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }


}