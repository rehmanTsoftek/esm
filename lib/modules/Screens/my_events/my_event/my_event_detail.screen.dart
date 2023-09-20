import 'package:esm/Models/my_event/my_event_model.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/utils/Constants.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/widgets/Toolbar.dart';
import 'package:esm/resources/widgets/sized_boxes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyEventDetailScreen extends StatefulWidget {
  const MyEventDetailScreen({super.key, required this.myEventModel});

  final MyEventModel myEventModel;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DetailState();
  }
}

class DetailState extends State<MyEventDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolbarBack(
        appBar: AppBar(),
        title: "Details",
        action: [
          myPopMenu(context, widget.myEventModel),
        ],
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
                        "Event Owner Name",
                        size: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.greyHintColor,
                      ),
                      const SizeBoxHeight4(),
                      AppText(
                        widget.myEventModel.eventOwnerName,
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
                widget.myEventModel.eventNature,
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
                "${widget.myEventModel.myEventDate}/${widget.myEventModel.myEventStartTime}",
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
                "${widget.myEventModel.myEventDate}/${widget.myEventModel.myEventEndTime}",
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
                widget.myEventModel.eventTimeZone,
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
                widget.myEventModel.eventPrice,
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
                widget.myEventModel.eventLocation,
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
                widget.myEventModel.eventDressCode,
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
                      widget.myEventModel.myEventImage,
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      widget.myEventModel.myEventImage,
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      widget.myEventModel.myEventImage,
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      widget.myEventModel.myEventImage,
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      widget.myEventModel.myEventImage,
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

Widget myPopMenu(BuildContext context, MyEventModel myEventModel) {
  return PopupMenuButton(
    icon: const Icon(
      Icons.more_vert_outlined,
      color: AppColors.black,
    ),
    offset: const Offset(0, 10),
    color: Colors.white,
    elevation: 2,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15.0),
      ),
    ),
    onSelected: (value) async {
      if (value == 2) {
        Navigator.pushNamed(context, "/RequestScreen");
      }
      if (value == 3) {
        Navigator.pushNamed(context, "/ParticipantsScreen");
      }
      if (value == 4) {
        Navigator.pushNamed(context, "/GiftSpyaredScreen");
      }
      if (value == 5) {
        Navigator.pushNamed(context, "/MyEventOtherScreen",
            arguments: myEventModel);
      }
    },
    itemBuilder: (context) => [
      const PopupMenuItem(
        value: 2,
        child: Text('Requests'),
      ),
      const PopupMenuItem(
        value: 3,
        child: Text('Participants'),
      ),
      const PopupMenuItem(
        value: 4,
        child: Text('Money Gifts Sprayed'),
      ),
      const PopupMenuItem(
        value: 5,
        child: Text('Others'),
      ),
    ],
  );
}
