import 'package:esm/Models/shop_model.dart';
import 'package:esm/modules/Screens/ShoppingScreens/shop_detail_screen.dart';
import 'package:esm/resources/Widgets/ToolbarImage.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/utils/constants.dart';
import 'package:esm/resources/widgets/sized_boxes.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ShopState();
  }
}

class ShopState extends State<ShopScreen> {
  List<ShopModel> shoppingList = [
    ShopModel(
        image: "assets/images/product_dummy_img.png",
        productName: "Vila stripe shirt dress",
        productPrice: "50.00",
        reviews: "8",
        sellerMail: "johndoe@gmail.com",
        sellerContact: "+123211000"),
    ShopModel(
        image: "assets/images/product_dummy_img.png",
        productName: "Vila stripe shirt dress",
        productPrice: "50.00",
        reviews: "8",
        sellerMail: "johndoe@gmail.com",
        sellerContact: "+123211000"),
    ShopModel(
        image: "assets/images/product_dummy_img.png",
        productName: "Vila stripe shirt dress",
        productPrice: "50.00",
        reviews: "8",
        sellerMail: "johndoe@gmail.com",
        sellerContact: "+123211000"),
    ShopModel(
        image: "assets/images/product_dummy_img.png",
        productName: "Vila stripe shirt dress",
        productPrice: "50.00",
        reviews: "8",
        sellerMail: "johndoe@gmail.com",
        sellerContact: "+123211000"),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: ToolbarImage(
        appBar: AppBar(),
      ),
      body: SafeArea(
          child: GridView.builder(
              itemCount: shoppingList.length,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                ShopModel shopping = shoppingList[index];

                return GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ShopDetailScreen(),
                        settings: RouteSettings(
                          arguments: shopping,
                        ),
                      ),
                    );


                  },
                  child: Container(
                    height: 350,
                    width: 170,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Image.asset(
                            shopping.image,
                           height: 154,
                            width: 227,
                            fit: BoxFit.fitWidth,
                          ),

                          Row(
                            children: [
                              AppText(
                                shopping.productName,
                                size: 14,
                                fontWeight: FontWeight.w300,
                                color: AppColors.black,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              AppText(
                                shopping.productPrice,
                                size: 14,
                                fontWeight: FontWeight.w300,
                                color: AppColors.black,
                              ),
                            ],
                          ),
                          Row(

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
                              SizeBoxWidth16(),
                              SvgPicture.asset(
                                Constants.editIcon,
                              ),

                            ],
                          ),



                        ],
                      ),
                    ),
                  ),
                );

              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
              ))),
    );
  }
}
