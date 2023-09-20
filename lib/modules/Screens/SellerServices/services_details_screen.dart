import 'package:carousel_slider/carousel_slider.dart';
import 'package:esm/Models/services_model.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/utils/constants.dart';
import 'package:esm/resources/widgets/Toolbar.dart';
import 'package:esm/resources/widgets/ToolbarImage.dart';
import 'package:esm/resources/widgets/app_text.dart';
import 'package:esm/resources/widgets/buttons/app_button.dart';
import 'package:esm/resources/widgets/sized_boxes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ServicesDetailScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DetailServiceState();
  }
}

class DetailServiceState extends State<ServicesDetailScreen> {
  late ServicesModel servicesModel;
  int sliderCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    servicesModel = ModalRoute.of(context)!.settings.arguments as ServicesModel;
    List<String> carouselSlider = [
      servicesModel.serviceImgList[0],
      servicesModel.serviceImgList[1],
      servicesModel.serviceImgList[2],
    ];
    // TODO: implement build
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: ToolbarBack(appBar: AppBar(), title: "Details"),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    const SizeBoxHeight2(),
                    CarouselSlider(
                      items: servicesModel.serviceImgList.map((item) {
                        return ClipRect(
                          child: Image.asset(
                            item,

                            width: 507,
                            fit: BoxFit.cover,
                          ),
                        );
                      }).toList(),
                      options: CarouselOptions(
                        autoPlay: false,
                        height: 200,
                        enlargeCenterPage: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            sliderCurrentIndex = index;
                          });
                        },
                      ),
                    ),
                    const SizeBoxHeight16(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: servicesModel.serviceImgList.map((url) {
                        int index = servicesModel.serviceImgList.indexOf(url);
                        return Container(
                          width: 8.0,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(horizontal: 4.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: sliderCurrentIndex == index
                                ? Colors.blue
                                : Colors.grey.withOpacity(0.6),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 18.0,right: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        AppText(
                          servicesModel.serviceName,
                          size: 20,
                          fontWeight: FontWeight.w600,
                          color: AppColors.black,

                        ),
                        SvgPicture.asset(
                          Constants.shareIcon,
                        ),
                      ],
                    ),
                    const SizeBoxHeight8(),
                    AppText(
                      servicesModel.currency+servicesModel.servicePrice,
                      size: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,

                    ),
                    const SizeBoxHeight8(),
                    AppText(
                      servicesModel.serviceType,
                      size: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,

                    ),
                    const SizeBoxHeight8(),
                    AppText(
                      servicesModel.serviceDesc,
                      size: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,

                    ),
                    const SizeBoxHeight8(),
                    AppText(
                      "Seller info:",
                      size: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,

                    ),
                    const SizeBoxHeight8(),
                    AppText(
                      servicesModel.sellerPhone,
                      size: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,

                    ),
                    const SizeBoxHeight8(),
                    AppText(
                      servicesModel.sellerEmail,
                      size: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,

                    ),
                  ],
                ),
              ),
              const SizeBoxHeight16(),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: AppGradiantButton(
                  btnText: "Request Quote",
                  width:250,
                  onTap: (){
                    Navigator.pushNamed(context, '/RequestQuoteScreen');
                  }

                ),
              ),
            ],
          ),
        ));
  }
}
