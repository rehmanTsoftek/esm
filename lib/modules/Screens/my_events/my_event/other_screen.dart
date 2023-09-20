import 'package:esm/Models/my_event/my_event_model.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/utils/Constants.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/widgets/Toolbar.dart';
import 'package:esm/resources/widgets/sized_boxes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyEventOtherScreen extends StatefulWidget {
  const MyEventOtherScreen({super.key, required this.myEventModel});

  final MyEventModel myEventModel;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DetailState();
  }
}

class DetailState extends State<MyEventOtherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolbarBack(
        appBar: AppBar(),
        title: "Others",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    widget.myEventModel.myEventTitle,
                    size: 16,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                  ),
                  (widget.myEventModel.eventPriceStatus)
                      ? SvgPicture.asset(
                          Constants.paidIcon,
                        )
                      : SvgPicture.asset(
                          Constants.freeIcon,
                        ),
                ],
              ),
              const SizeBoxHeight12(),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  widget.myEventModel.myEventImage,
                ),
              ),
              const SizeBoxHeight16(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const AppText(
                        "Event Local Price",
                        size: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.greyHintColor,
                      ),
                      const SizeBoxHeight4(),
                      AppText(
                        widget.myEventModel.eventLocalPrice,
                        size: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black,
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(
                      Constants.shareBtnBlue,
                      width: 25,
                      height: 25,
                    ),
                  ),
                ],
              ),
              const SizeBoxHeight16(),
              const AppText(
                "Do you want to receive Money Gift/Spray?",
                size: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.greyHintColor,
              ),
              const SizeBoxHeight4(),
              AppText(
                widget.myEventModel.receiveGift,
                size: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
              const SizeBoxHeight16(),
              const SizeBoxHeight8(),
              const AppText(
                'Hologram Information',
                size: 18,
                color: AppColors.otherColors,
                fontWeight: FontWeight.bold,
              ),
              const SizeBoxHeight16(),
              const AppText(
                "Hologram tittle",
                size: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.greyHintColor,
              ),
              const SizeBoxHeight4(),
              AppText(
                widget.myEventModel.hologramTitle,
                size: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
              const SizeBoxHeight16(),
              const AppText(
                "Price",
                size: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.greyHintColor,
              ),
              const SizeBoxHeight4(),
              AppText(
               widget.myEventModel.eventPrice,
                size: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
              const SizeBoxHeight16(),
              const AppText(
                "Country",
                size: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.greyHintColor,
              ),
              const SizeBoxHeight4(),
              AppText(
                widget.myEventModel.country,
                size: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
              const SizeBoxHeight16(),
              const AppText(
                "Bank Type",
                size: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.greyHintColor,
              ),
              const SizeBoxHeight4(),
              AppText(
                widget.myEventModel.bankType,
                size: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
              const SizeBoxHeight16(),
              const AppText(
                "Account Number",
                size: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.greyHintColor,
              ),
              const SizeBoxHeight4(),
              AppText(
                widget.myEventModel.accountNumber,
                size: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
              const SizeBoxHeight16(),
              const AppText(
                "Bank Name",
                size: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.greyHintColor,
              ),
              const SizeBoxHeight4(),
              AppText(
                widget.myEventModel.bankName,
                size: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
              const SizeBoxHeight16(),
              const AppText(
                "Routing Number",
                size: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.greyHintColor,
              ),
              const SizeBoxHeight4(),
              AppText(
                widget.myEventModel.routingNumber,
                size: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
              const SizeBoxHeight16(),
              const SizeBoxHeight8(),
              const AppText(
                'Event Engineer Information:',
                size: 18,
                color: AppColors.otherColors,
                fontWeight: FontWeight.bold,
              ),
              const SizeBoxHeight16(),
              const AppText(
                "Engineer Name",
                size: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.greyHintColor,
              ),
              const SizeBoxHeight4(),
              AppText(
                widget.myEventModel.engineerName,
                size: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
              const SizeBoxHeight16(),
              const AppText(
                "Engineer Contact Number",
                size: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.greyHintColor,
              ),
              const SizeBoxHeight4(),
              AppText(
                widget.myEventModel.engineerContactNumber,
                size: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
              const SizeBoxHeight16(),
              const SizeBoxHeight8(),
              const AppText(
                'Event Worker Information:',
                size: 18,
                color: AppColors.otherColors,
                fontWeight: FontWeight.bold,
              ),
              const SizeBoxHeight16(),
              const AppText(
                "Worker Type",
                size: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.greyHintColor,
              ),
              const SizeBoxHeight4(),
              AppText(
                widget.myEventModel.workerType,
                size: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
              const SizeBoxHeight16(),
              const AppText(
                "Worker name",
                size: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.greyHintColor,
              ),
              const SizeBoxHeight4(),
              AppText(
                widget.myEventModel.workerName,
                size: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
              const SizeBoxHeight16(),
              const AppText(
                "Worker Contact Number",
                size: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.greyHintColor,
              ),
              const SizeBoxHeight4(),
              AppText(
                widget.myEventModel.workerContactNumber,
                size: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
              const SizeBoxHeight16(),
            ],
          ),
        ),
      ),
    );
  }
}
