import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/widgets/Toolbar.dart';
import 'package:esm/resources/widgets/buttons/app_button.dart';
import 'package:flutter/material.dart';

class VideoSharingScreen extends StatefulWidget {
  const VideoSharingScreen({super.key});

  @override
  State<VideoSharingScreen> createState() => _VideoSharingScreenState();
}

class _VideoSharingScreenState extends State<VideoSharingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolbarBack(
        appBar: AppBar(),
        title: "Video Sharing",
      ),
      body: Column(
        children: [
          const SizeBoxHeight16(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizeBoxHeight16(),
                const AppText(
                  'Video Link',
                  fontWeight: FontWeight.w400,
                ),
                const SizeBoxHeight4(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1,
                      color: AppColors.greyBgColor,
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: AppText(
                      'You tube link or direct video link',
                      fontWeight: FontWeight.w400,
                      color: AppColors.greyBgColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizeBoxHeight32(),
          Align(
            alignment: Alignment.center,
            child: AppGradiantButton(
              width: 200,
              onTap: () {},
              btnText: 'Ok',
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const AppText(
                'Cancel',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
