import 'package:esm/Models/my_event/accept_request_model.dart';
import 'package:esm/Models/my_event/my_event_model.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/utils/Constants.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/widgets/Toolbar.dart';
import 'package:esm/resources/widgets/sized_boxes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AcceptRequestDetailScreen extends StatefulWidget {
  const AcceptRequestDetailScreen(
      {super.key, required this.acceptRequestModel});

  final AcceptRequestModel acceptRequestModel;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DetailState();
  }
}

class DetailState extends State<AcceptRequestDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolbarBack(
        appBar: AppBar(),
        title: "Accept Request Detail",
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
                    widget.acceptRequestModel.myEventTitle,
                    size: 16,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                  ),
                  (widget.acceptRequestModel.eventPriceStatus)
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
                  widget.acceptRequestModel.myEventImage,
                ),
              ),
              const SizeBoxHeight16(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const AppText(
                        "Event Owner Name",
                        size: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.greyHintColor,
                      ),
                      const SizeBoxHeight4(),
                      AppText(
                        widget.acceptRequestModel.eventOwnerName,
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
                "Nature",
                size: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.greyHintColor,
              ),
              const SizeBoxHeight4(),
              AppText(
                widget.acceptRequestModel.eventNature,
                size: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
              const SizeBoxHeight16(),
              const AppText(
                "Event Start Date",
                size: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.greyHintColor,
              ),
              const SizeBoxHeight4(),
              AppText(
                "${widget.acceptRequestModel.myEventDate}/${widget.acceptRequestModel.myEventStartTime}",
                size: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
              const SizeBoxHeight16(),
              const AppText(
                "Event end Date",
                size: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.greyHintColor,
              ),
              const SizeBoxHeight4(),
              AppText(
                "${widget.acceptRequestModel.myEventDate}/${widget.acceptRequestModel.myEventEndTime}",
                size: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
              const SizeBoxHeight16(),
              const AppText(
                "Event TimeZone",
                size: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.greyHintColor,
              ),
              const SizeBoxHeight4(),
              AppText(
                widget.acceptRequestModel.eventTimeZone,
                size: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
              const SizeBoxHeight16(),
              const AppText(
                "Event Price",
                size: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.greyHintColor,
              ),
              const SizeBoxHeight4(),
              AppText(
                widget.acceptRequestModel.eventPrice,
                size: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
              const SizeBoxHeight16(),
              const AppText(
                "Event Location",
                size: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.greyHintColor,
              ),
              const SizeBoxHeight4(),
              AppText(
                widget.acceptRequestModel.eventLocation,
                size: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
              const SizeBoxHeight16(),
              const AppText(
                "Event Dress Code",
                size: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.greyHintColor,
              ),
              const SizeBoxHeight4(),
              AppText(
                widget.acceptRequestModel.eventDressCode,
                size: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
              const SizeBoxHeight16(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      widget.acceptRequestModel.myEventImage,
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      widget.acceptRequestModel.myEventImage,
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      widget.acceptRequestModel.myEventImage,
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      widget.acceptRequestModel.myEventImage,
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      widget.acceptRequestModel.myEventImage,
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              const SizeBoxHeight16(),
            ],
          ),
        ),
      ),
    );
  }
}
