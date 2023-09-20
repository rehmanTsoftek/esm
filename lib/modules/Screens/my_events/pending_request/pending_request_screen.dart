import 'package:esm/Models/my_event/pending_request_model.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/Constants.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PendingRequestScreen extends StatefulWidget {
  const PendingRequestScreen({super.key});

  @override
  State<PendingRequestScreen> createState() => _PendingRequestScreenState();
}

class _PendingRequestScreenState extends State<PendingRequestScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        itemCount: PendingRequestModel.pendingRequestList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.7),
        itemBuilder: (BuildContext context, int index) {
          PendingRequestModel pendingRequestModel =  PendingRequestModel.pendingRequestList[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                '/PendingRequestDetailScreen',
                arguments: pendingRequestModel,
              );
            },
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    pendingRequestModel.myEventImage,
                    fit: BoxFit.fill,
                    height: 200,
                    width: 200,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.liveColors,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
                          child: AppHeadings(
                            'LIVE',
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const ImageIcon(
                          AssetImage(
                            Constants.delete,
                          ),
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 64.0),
                    child: AppHeadings(
                      'Event: ${pendingRequestModel.myEventTitle}',
                      color: AppColors.primaryColor,
                      size: 14,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 36.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const ImageIcon(
                              AssetImage(
                                Constants.calendar,
                              ),
                            ),
                            const SizeBoxWidth4(),
                            AppText(
                              pendingRequestModel.myEventDate,
                              size: 14,
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {},
                          child: SvgPicture.asset(
                            Constants.shareBtnBlue,
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 14.0, left: 4.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      children: [
                        const ImageIcon(
                          AssetImage(
                            Constants.clock,
                          ),
                          size: 20,
                        ),
                        const SizeBoxWidth4(),
                        AppText(
                          '${pendingRequestModel.myEventStartTime} - ${pendingRequestModel.myEventEndTime}',
                          size: 14,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
