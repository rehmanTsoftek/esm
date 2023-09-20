import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/widgets/buttons/app_button.dart';
import 'package:flutter/material.dart';

class CreateEventDialog extends StatelessWidget {
  final String? dialogTitle;
  final String? btnTextOne;
  final String? btnTextTwo;
  final Function liveOnTap;
  final Function recordedOnTap;

  const CreateEventDialog({
    super.key,
    required this.liveOnTap,
    required this.recordedOnTap,
    this.dialogTitle,
    this.btnTextOne,
    this.btnTextTwo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(20.0), // Adjust the radius as needed
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            border: Border.all(
              width: 1,
              color: AppColors.bluecolor,
            ),
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 10.0,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                AppHeadings(
                  dialogTitle ?? '',
                  size: 20,
                  fontWeight: FontWeight.w700,
                ),
                const SizeBoxHeight16(),
                AppSimpleButton(
                  onTap: () {
                    liveOnTap();
                  },
                  btnText: btnTextOne ?? '',
                  fontWeight: FontWeight.w600,
                  btnColor: AppColors.greenColors,
                  btnTextColor: AppColors.primaryColor,
                ),
                const SizeBoxHeight16(),
                AppSimpleButton(
                  onTap: () {
                    recordedOnTap();
                  },
                  btnText: btnTextTwo ?? "",
                  btnColor: AppColors.greenColors,
                  fontWeight: FontWeight.w600,
                  btnTextColor: AppColors.primaryColor,
                ),
                const SizeBoxHeight16(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
