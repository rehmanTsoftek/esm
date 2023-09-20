import 'package:esm/Models/post_model.dart';
import 'package:esm/modules/Screens/HostDetails/Events/HostEvents.dart';

import 'package:esm/modules/Screens/HostDetails/host_post_screen.dart';
import 'package:esm/modules/Screens/HostDetails/host_profile_screen.dart';
import 'package:esm/modules/Screens/HostDetails/celeberations_screen.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/utils/Constants.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/widgets/ToolbarImage.dart';
import 'package:esm/resources/widgets/sized_boxes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/cupertino.dart';
class DetailTab extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TabState();
  }


}
class TabState extends State <DetailTab>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return  DefaultTabController(
    length: 4,
    child: Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: ToolbarImage(
        appBar: AppBar(),
      ),

      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  color: AppColors.primaryColor,
                  border: Border.all(
                    width: 1,
                    color: AppColors.bluecolor,
                  ),
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [AppColors.gradiantStartColor, AppColors.gradiantEndColor],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),

                    borderRadius: BorderRadius.circular(70),
                  ),
                  isScrollable: true,
                  unselectedLabelColor: AppColors.secondaryColor,
                  labelColor: Colors.white,

                  tabs: const [
                    Tab(
                      text: "Details",
                    ),
                    Tab(
                      text: "Post",
                    ),
                    Tab(
                      text: "Events",
                    ),
                    Tab(
                      text: "Celebrations",
                    ),

                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  HostProfile(),
                  HostPost(),
                  HostEvents(),
                  CelerbationsScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );

  }


}