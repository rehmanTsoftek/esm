import 'package:esm/Models/like_mode.dart';
import 'package:esm/resources/widgets/Toolbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/utils/constants.dart';
import 'package:esm/resources/widgets/buttons/app_button.dart';
import 'package:esm/resources/widgets/sized_boxes.dart';
import 'package:flutter_svg/svg.dart';
import 'package:badges/badges.dart' as badges;

class LikeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LikeScreenState();
  }
}

class _LikeScreenState extends State<LikeScreen> {
  List<LikesModel> likeslist = [
    LikesModel(userName: "userName", userImg: "assets/images/profile.png"),
    LikesModel(userName: "userName", userImg: "assets/images/profile.png"),
    LikesModel(userName: "userName", userImg: "assets/images/profile.png"),
    LikesModel(userName: "userName", userImg: "assets/images/profile.png"),
    LikesModel(userName: "userName", userImg: "assets/images/profile.png"),
    LikesModel(userName: "userName", userImg: "assets/images/profile.png"),
    LikesModel(userName: "userName", userImg: "assets/images/profile.png"),
    LikesModel(userName: "userName", userImg: "assets/images/profile.png"),
    LikesModel(userName: "userName", userImg: "assets/images/profile.png"),
    LikesModel(userName: "userName", userImg: "assets/images/profile.png"),
    LikesModel(userName: "userName", userImg: "assets/images/profile.png"),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: ToolbarBack(appBar: AppBar(), title: "Likes"),
      body: SafeArea(
        child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: likeslist.length,
            addRepaintBoundaries: true,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const AlwaysScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              LikesModel likes = likeslist[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [


                      badges.Badge(
                          position: badges.BadgePosition.topEnd(top: -12, end: -12),
                          badgeContent: SvgPicture.asset(
                            Constants.redFavourite,

                          ),

                          child:CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage(
                             likes.userImg,
                            ),
                          )
                      ),

                      AppText(
                        likes.userName,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
