import 'package:esm/Models/shop_model.dart';
import 'package:esm/modules/Screens/ShoppingScreens/shop_detail_screen.dart';
import 'package:esm/resources/Widgets/ToolbarImage.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/utils/constants.dart';
import 'package:esm/resources/widgets/BtnNullHeightWidth.dart';
import 'package:esm/resources/widgets/buttons/app_button.dart';
import 'package:esm/resources/widgets/dialogs/request_quote_dialog.dart';
import 'package:esm/resources/widgets/sized_boxes.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

class ShopDetailScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DetailState();
  }
}

class DetailState extends State<ShopDetailScreen> {
  late ShopModel shopmodel;
  @override
  Widget build(BuildContext context) {
    shopmodel = ModalRoute.of(context)!.settings.arguments as ShopModel;
    // TODO: implement build
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: ToolbarImage(
          appBar: AppBar(),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                shopmodel.image,
                height: 364,
                width: MediaQuery.sizeOf(context).width,
                fit: BoxFit.fill,
              ),

              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            shopmodel.productName,
                            size: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black,
                          ),
                          SvgPicture.asset(
                            Constants.shareBtnBlue,
                          ),
                        ],
                      ),
                      SizeBoxHeight16(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            shopmodel.productPrice,
                            size: 18,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black,
                          ),
                          Container(
                            child: Row(
                              children: [
                                RatingBarIndicator(
                                  rating: 2.75,
                                  itemBuilder: (context, index) => const Icon(
                                    Icons.star,
                                    color: AppColors.greenColor,
                                  ),
                                  itemCount: 5,
                                  itemSize: 15.0,
                                  direction: Axis.horizontal,
                                ),
                                SizeBoxWidth4(),
                                const AppText(
                                  "(8)",
                                  size: 14,
                                  fontWeight: FontWeight.w300,
                                  color: AppColors.black,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          AppText(
                            "Read all 8 reviews",
                            size: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black,
                          ),
                        ],
                      ),
                      SizeBoxHeight8(),
                      Row(
                        children: [
                          AppGradiantButton(
                            btnText: "Visit Website",
                            width: 118,

                          ),
                          SizeBoxWidth4(),
                          BtnNullHeightWidth(
                            title: 'Request Quote',
                            bgcolour: AppColors.primaryColor,
                            bordercolour: AppColors.lightGreyColor,
                            disablecolor: AppColors.primaryColor,
                            textcolour: AppColors.greyBgColor,
                            onPress: () {
                              showDialog(context: context, builder:(BuildContext context) {
                                return RequestQuoteDialog(
                                  onButtonPress: (){
                                    Navigator.pop(context);

                                  },
                                );

                              },);
                            },
                            width: 118,
                            height: 50,
                          )
                        ],
                      ),
                      SizeBoxHeight32(),
                      AppText(
                        "seller info:",
                        size: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black,
                      ),
                      SizeBoxHeight8(),
                      AppText(
                        shopmodel.sellerMail,
                        size: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black,
                      ),
                      SizeBoxHeight4(),
                      AppText(
                        shopmodel.sellerContact,
                        size: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black,
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ));
  }
}
