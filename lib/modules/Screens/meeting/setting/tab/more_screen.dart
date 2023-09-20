import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/widgets/buttons/app_button.dart';
import 'package:esm/resources/widgets/buttons/radio_button.dart';
import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  int groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16.0, bottom: 8.0, top: 8.0),
            child: AppText(
              'Display notification for',
              fontWeight: FontWeight.w700,
            ),
          ),
          AppRadioButton(
            groupValue: groupValue,
            value: 1,
            onChanged: (v) {
              setState(() {
                groupValue = v;
              });
            },
            text: "Chat message",
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0, bottom: 8.0, top: 8.0),
            child: AppText(
              'Keyboard shortcuts',
              fontWeight: FontWeight.w700,
            ),
          ),
          AppRadioButton(
            groupValue: groupValue,
            value: 2,
            onChanged: (v) {
              setState(() {
                groupValue = v;
              });
            },
            text: "Enable Keyboard shortcuts ",
          ),
          const SizeBoxHeight16(),
          const AppText(
            'Language',
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
                'English',
                fontWeight: FontWeight.w400,
                color: AppColors.greyBgColor,
              ),
            ),
          ),
          const SizeBoxHeight16(),
          const AppText(
            'Desktop sharing frame rate ',
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
                '5 frame-per-second',
                fontWeight: FontWeight.w400,
                color: AppColors.greyBgColor,
              ),
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
