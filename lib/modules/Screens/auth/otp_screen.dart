import 'package:esm/resources/Widgets/ToolbarImage.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/utils/constants.dart';
import 'package:esm/resources/widgets/buttons/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return VerifyState();
  }
}

class VerifyState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: ToolbarImage(
          appBar: AppBar(),
        ),
        body: SafeArea(
      child: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SvgPicture.asset(
                      Constants.otpTopImg,
                    ),
                    const SizeBoxHeight16(),
                    const AppHeadings(
                      'OTP Verification',
                      size: 20,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                    const AppText(
                      'Enter the verification code we just sent to your \n email address or text to your phone',
                      size: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.greyTextColor,
                    ),
                    const SizeBoxHeight16(),
                    Container(
                      color: AppColors.lightgreybgColor,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Pinput(
                            length: 5,
                            defaultPinTheme: PinTheme(
                              width: 64,
                              height: 64,
                              textStyle:
                                  const TextStyle(fontWeight: FontWeight.w600),
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                border: Border.all(color: AppColors.noColor),
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                            focusedPinTheme: PinTheme(
                              width: 64,
                              height: 64,
                              textStyle:
                                  const TextStyle(fontWeight: FontWeight.w600),
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                border: Border.all(
                                    color:
                                        const Color.fromRGBO(114, 178, 238, 1)),
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                            submittedPinTheme: PinTheme(
                              width: 64,
                              height: 64,
                              textStyle:
                                  const TextStyle(fontWeight: FontWeight.w600),
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                border: Border.all(
                                    color:
                                        const Color.fromRGBO(114, 178, 238, 1)),
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                            validator: (s) {
                              if (s!.length < 5) {
                                return 'Invalid OTP';
                              }
                              return null;
                            },
                            errorTextStyle: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: AppColors.redColor),
                            pinputAutovalidateMode:
                                PinputAutovalidateMode.onSubmit,
                            showCursor: true,
                            onCompleted: (pin) => print(pin),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Column(
                  children: [
                    SizeBoxHeight16(),
                    AppText(
                      'Haven\'t received the verification code?',
                      size: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.greyTextColor,
                    ),
                    SizeBoxHeight16(),
                    AppText(
                      'Resend',
                      size: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.bluecolor,
                    ),
                  ],
                ),
                const SizeBoxHeight16(),
                AppButton(
                  onTap: () {
                    Navigator.pushNamed(context,'/BottomNavigationBarScreen');
                  },
                  assetUrl: Constants.submitBtn,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
