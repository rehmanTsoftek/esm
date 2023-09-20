import 'package:esm/Models/my_event/request_model.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/widgets/Toolbar.dart';
import 'package:flutter/material.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({super.key});

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolbarBack(
        appBar: AppBar(),
        title: "Request",
      ),
      body: ListView.separated(
        itemCount: RequestModel.requestList.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          RequestModel requestModel = RequestModel.requestList[index];
          return Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 1,
                color: AppColors.greyBgColor,
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 120,
                    height: 130,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        requestModel.image,
                        width: 120,
                        height: 130,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizeBoxHeight16(),
                    AppText(
                      requestModel.name,
                      fontWeight: FontWeight.w600,
                    ),
                    const SizeBoxHeight8(),
                    AppText(
                      requestModel.location,
                      size: 14,
                    ),
                    const SizeBoxHeight32(),
                    Row(
                      children: [
                        Container(
                          width: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.greyBgColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: AppText(
                                'Reject',
                                size: 14,
                              ),
                            ),
                          ),
                        ),
                        const SizeBoxWidth12(),
                        Container(
                          width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.bluecolor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: AppText(
                                'Accept Guest',
                                size: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizeBoxHeight12();
        },
      ),
    );
  }
}
