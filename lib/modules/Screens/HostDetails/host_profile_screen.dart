import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/utils/Constants.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/widgets/sized_boxes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HostProfile extends StatefulWidget{
  const HostProfile({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProfileState();
  }


}
class ProfileState extends State<HostProfile>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body:SafeArea(
        child:Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizeBoxHeight32(),
              Center(
                child: CircleAvatar(
                  radius: 85,
                  backgroundImage: AssetImage(
                   "assets/images/profile.png",
                  ),
                ),
              ),
              SizeBoxHeight64(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    Constants.shareIcon,
                  ),
                ],
              ),

              AppText(
                "Name",
                size: 15,
                fontWeight: FontWeight.w400,
                color: AppColors.greyHintColor,
              ),
              AppText(
                "Fisayo Olamigoke",
                size: 20,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
              SizeBoxHeight16(),
              AppText(
                "Email",
                size: 15,
                fontWeight: FontWeight.w400,
                color: AppColors.greyHintColor,
              ),
              AppText(
                "info@careermega.com",
                size: 20,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
              SizeBoxHeight16(),
              AppText(
                "Contact Number",
                size: 15,
                fontWeight: FontWeight.w400,
                color: AppColors.greyHintColor,
              ),
              AppText(
                "+17139093171",
                size: 20,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
              SizeBoxHeight16(),
              AppText(
                "About Me",
                size: 15,
                fontWeight: FontWeight.w400,
                color: AppColors.greyHintColor,
              ),
              AppText(
                "Good Cook and Escort",
                size: 20,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),




            ],
          ),
        ),
      ),


    );
  }

}