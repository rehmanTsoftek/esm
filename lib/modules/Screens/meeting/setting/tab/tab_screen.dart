import 'package:esm/modules/Screens/meeting/setting/tab/device_screen.dart';
import 'package:esm/modules/Screens/meeting/setting/tab/moderator_screen.dart';
import 'package:esm/modules/Screens/meeting/setting/tab/more_screen.dart';
import 'package:esm/modules/Screens/meeting/setting/tab/sounds_screen.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/widgets/Toolbar.dart';
import 'package:flutter/material.dart';

import 'device_profile_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: ToolbarBack(
          appBar: AppBar(),
          title: "Setting",
        ),
        body: Column(
          children: [
            const SizeBoxHeight16(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColors.greyBgColor,
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: AppColors.bluecolor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  isScrollable: true,
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.white,
                  controller: tabController,
                  tabs: const [
                    Tab(
                      text: "Device",
                    ),
                    Tab(
                      text: "Profile",
                    ),
                    Tab(
                      text: "Moderator",
                    ),
                    Tab(
                      text: "Sounds",
                    ),
                    Tab(
                      text: "More",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: const [
                  DeviceScreen(),
                  DeviceProfileScreen(),
                  ModeratorScreen(),
                  SoundsScreen(),
                  MoreScreen()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
