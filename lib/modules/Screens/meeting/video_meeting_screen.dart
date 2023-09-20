import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/Constants.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/widgets/dialogs/setting_dialog.dart';
import 'package:flutter/material.dart';

class VideoMeetingScreen extends StatefulWidget {
  const VideoMeetingScreen({super.key});

  @override
  State<VideoMeetingScreen> createState() => _VideoMeetingScreenState();
}

class _VideoMeetingScreenState extends State<VideoMeetingScreen> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            Constants.meetings,
            fit: BoxFit.fill,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 120,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.bluecolor,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const AppText(
                  'FO',
                  size: 45,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizeBoxHeight128(),
              const AppText(
                'Marcus Horizon',
                color: Colors.white,
              ),
              const AppText(
                '00:05:00',
                size: 14,
                color: Colors.white,
              ),
              const SizeBoxHeight128(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: const ImageIcon(
                      AssetImage(
                        Constants.videos,
                      ),
                      color: Colors.white,
                    ),
                  ),
                  const SizeBoxWidth32(),
                  InkWell(
                    onTap: () {},
                    child: const ImageIcon(
                      AssetImage(
                        Constants.mike,
                      ),
                      color: Colors.white,
                    ),
                  ),
                  const SizeBoxWidth32(),
                  InkWell(
                    onTap: () {},
                    child: const ImageIcon(
                      AssetImage(
                        Constants.persons,
                      ),
                      color: Colors.white,
                    ),
                  ),
                  const SizeBoxWidth32(),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.redColors,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ImageIcon(
                          AssetImage(
                            Constants.dialPhone,
                          ),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              isSelected == false ? const SizedBox() : const SizeBoxHeight16(),
              isSelected == false
                  ? const SizedBox()
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: const ImageIcon(
                            AssetImage(
                              Constants.message,
                            ),
                            color: Colors.white,
                          ),
                        ),
                        const SizeBoxWidth16(),
                        const SizeBoxWidth8(),
                        InkWell(
                          onTap: () {},
                          child: const ImageIcon(
                            AssetImage(
                              Constants.hand,
                            ),
                            color: Colors.white,
                          ),
                        ),
                        const SizeBoxWidth16(),
                        const SizeBoxWidth8(),
                        InkWell(
                          onTap: () {},
                          child: const ImageIcon(
                            AssetImage(
                              Constants.dot,
                            ),
                            color: Colors.white,
                          ),
                        ),
                        const SizeBoxWidth16(),
                        const SizeBoxWidth8(),
                        InkWell(
                          onTap: () {},
                          child: const ImageIcon(
                            AssetImage(
                              Constants.shares,
                            ),
                            color: Colors.white,
                          ),
                        ),
                        const SizeBoxWidth16(),
                        const SizeBoxWidth8(),
                        InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return SettingDialog(
                                  onTapSetting: () {
                                    Navigator.pop(context);
                                    Navigator.pushNamed(context, '/TabScreen');
                                  },
                                  onTapSecurity: () {
                                    Navigator.pop(context);
                                    Navigator.pushNamed(
                                        context, '/SecurityScreen');
                                  },
                                  onTapRecording: () {
                                    Navigator.pop(context);
                                    Navigator.pushNamed(
                                        context, '/RecordingScreen');
                                  },
                                  onTapVideoShare: () {Navigator.pop(context);
                                  Navigator.pushNamed(
                                      context, '/VideoSharingScreen');},
                                );
                              },
                            );
                          },
                          child: const ImageIcon(
                            AssetImage(
                              Constants.open,
                            ),
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
              IconButton(
                onPressed: () {
                  if (isSelected == false) {
                    setState(() {
                      isSelected = true;
                    });
                  } else {
                    setState(() {
                      isSelected = false;
                    });
                  }
                },
                icon: const ImageIcon(
                  AssetImage(
                    Constants.moveUp,
                  ),
                  color: Colors.white,
                ),
              ),
              isSelected == false
                  ? const AppText(
                      'Swipe back to menu',
                      color: Colors.white,
                    )
                  : const SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}
