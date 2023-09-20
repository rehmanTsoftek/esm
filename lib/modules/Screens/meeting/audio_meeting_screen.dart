import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/Constants.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/widgets/dialogs/setting_dialog.dart';
import 'package:flutter/material.dart';

class AudioMeetingScreen extends StatefulWidget {
  const AudioMeetingScreen({super.key});

  @override
  State<AudioMeetingScreen> createState() => _AudioMeetingScreenState();
}

class _AudioMeetingScreenState extends State<AudioMeetingScreen> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
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
              ),
              const AppText(
                '00:05:00',
                size: 14,
              ),
              const SizeBoxHeight128(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/VideoMeetingScreen');
                    },
                    child: const ImageIcon(
                      AssetImage(
                        Constants.videos,
                      ),
                    ),
                  ),
                  const SizeBoxWidth32(),
                  InkWell(
                    onTap: () {},
                    child: const ImageIcon(
                      AssetImage(
                        Constants.mike,
                      ),
                    ),
                  ),
                  const SizeBoxWidth32(),
                  InkWell(
                    onTap: () {},
                    child: const ImageIcon(
                      AssetImage(
                        Constants.persons,
                      ),
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
                                    Navigator.pushNamed(context, '/SecurityScreen');
                                  },
                                  onTapRecording: () {
                                    Navigator.pop(context);
                                    Navigator.pushNamed(context, '/RecordingScreen');
                                  },
                                  onTapVideoShare: () {
                                    Navigator.pop(context);
                                    Navigator.pushNamed(context, '/VideoSharingScreen');
                                  },
                                );
                              },
                            );
                          },
                          child: const ImageIcon(
                            AssetImage(
                              Constants.open,
                            ),
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
                ),
              ),
              isSelected == false
                  ? const AppText('Swipe back to menu')
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
