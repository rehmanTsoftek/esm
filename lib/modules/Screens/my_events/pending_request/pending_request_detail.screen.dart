import 'package:esm/Models/my_event/pending_request_model.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/utils/Constants.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/widgets/Toolbar.dart';
import 'package:esm/resources/widgets/sized_boxes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PendingRequestDetailScreen extends StatefulWidget {
  const PendingRequestDetailScreen(
      {super.key, required this.pendingRequestModel});

  final PendingRequestModel pendingRequestModel;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DetailState();
  }
}

class DetailState extends State<PendingRequestDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolbarBack(
        appBar: AppBar(),
        title: "Pending Request Detail",
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
                    widget.pendingRequestModel.myEventTitle,
                    size: 16,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                  ),
                  (widget.pendingRequestModel.eventPriceStatus)
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
                  widget.pendingRequestModel.myEventImage,
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
                        widget.pendingRequestModel.eventOwnerName,
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
                widget.pendingRequestModel.eventNature,
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
                "${widget.pendingRequestModel.myEventDate}/${widget.pendingRequestModel.myEventStartTime}",
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
                "${widget.pendingRequestModel.myEventDate}/${widget.pendingRequestModel.myEventEndTime}",
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
                widget.pendingRequestModel.eventTimeZone,
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
                widget.pendingRequestModel.eventPrice,
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
                widget.pendingRequestModel.eventLocation,
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
                widget.pendingRequestModel.eventDressCode,
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
                      widget.pendingRequestModel.myEventImage,
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      widget.pendingRequestModel.myEventImage,
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      widget.pendingRequestModel.myEventImage,
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      widget.pendingRequestModel.myEventImage,
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      widget.pendingRequestModel.myEventImage,
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
