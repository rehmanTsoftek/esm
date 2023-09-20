import 'package:esm/modules/Screens/my_events/accepted_request/accepted_requested_screen.dart';
import 'package:esm/modules/Screens/my_events/pending_request/pending_request_screen.dart';
import 'package:esm/resources/Widgets/ToolbarImage.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/Constants.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/widgets/dialogs/create_event_dialog.dart';
import 'package:flutter/material.dart';

import 'my_event/my_event_screen.dart';

class MyEventTabScreen extends StatefulWidget {
  const MyEventTabScreen({super.key});

  @override
  State<MyEventTabScreen> createState() => _MyEventTabScreenState();
}

class _MyEventTabScreenState extends State<MyEventTabScreen>
    with SingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: ToolbarImage(
          appBar: AppBar(),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          width: 1,
                          color: AppColors.bluecolor,
                        ),
                      ),
                      child: TextFormField(
                        controller: searchController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Search.....',
                          contentPadding: const EdgeInsets.only(top: 14),
                          hintStyle: const TextStyle(
                            color: AppColors.greyHintColor,
                            fontSize: 15,
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.bluecolor,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: const ImageIcon(
                                  AssetImage(Constants.search),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          prefixIcon: InkWell(
                            onTap: () {},
                            child: const ImageIcon(
                              AssetImage(Constants.worldMap),
                            ),
                          ),
                          border: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.bluecolor,
                    borderRadius: BorderRadius.circular(37),
                  ),
                  child: TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return CreateEventDialog(
                            liveOnTap: () {
                              Navigator.pop(context);
                              Navigator.pushNamed(context, '/LiveEventScreen');
                            },
                            recordedOnTap: () {
                              Navigator.pop(context);
                              Navigator.pushNamed(
                                  context, '/PreRecordedEventScreen');
                            },
                            dialogTitle: 'Create Event',
                            btnTextOne: 'Live Event',
                            btnTextTwo: 'Pre Recorded Event',
                          );
                        },
                      );
                    },
                    child: const AppText(
                      'Create Event',
                      size: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizeBoxWidth8(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 35,
                child: TabBar(
                  indicator: BoxDecoration(
                    color: AppColors.bluecolor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  isScrollable: true,
                  unselectedLabelColor: AppColors.greyBgColor,
                  labelColor: Colors.white,
                  controller: tabController,
                  tabs: const [
                    Tab(
                      text: "My Event",
                    ),
                    Tab(
                      text: "Accepted Request",
                    ),
                    Tab(
                      text: "Pending Request",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: const [
                  MyEventScreen(),
                  AcceptedRequestedScreen(),
                  PendingRequestScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
