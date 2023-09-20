import 'package:esm/resources/utils/Constants.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AppButton extends StatelessWidget {
  final Function? onTap;
  final double? width;
  final double? height;
  final String assetUrl;
  final bool disabled;

  const AppButton({
    Key? key,
    this.onTap,
    this.width,
    this.disabled = false,
    this.height,
    this.assetUrl = Constants.loginBTn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: GestureDetector(
        onTap: () {
          if (!disabled && onTap != null) onTap!();
        },
        child: SvgPicture.asset(
          assetUrl,
        ),
      ),
    );
  }
}

class AppSimpleButton extends StatelessWidget {
  final Function? onTap;
  final double? width;
  final double? height;
  final String btnText;
  final Color btnTextColor;
  final Color btnColor;
  final double btnTextSize;
  final FontWeight? fontWeight;
  final bool disabled;

  const AppSimpleButton({
    Key? key,
    this.onTap,
    this.width,
    this.disabled = false,
    this.height,
    this.btnText = 'Button',
    this.btnTextColor = AppColors.greyHintColor,
    this.btnColor = Colors.white,
    this.btnTextSize = 16,
    this.fontWeight = FontWeight.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!disabled && onTap != null) onTap!();
      },
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            btnText,
            style: GoogleFonts.jost(
              color:
                  disabled == false ? btnTextColor : AppColors.lightgreybgColor,
              fontSize: btnTextSize,
              fontWeight: fontWeight,
            ),
          ),
        ),
      ),
    );
  }
}

class AppBorderButton extends StatelessWidget {
  final Function? onTap;
  final double? width;
  final double? height;
  final String btnText;
  final Color btnTextColor;
  final Color btnColor;
  final Color borderColor;
  final double btnTextSize;
  final FontWeight? fontWeight;
  final bool disabled;

  const AppBorderButton({
    Key? key,
    this.onTap,
    this.width,
    this.disabled = false,
    this.height,
    this.btnText = 'Button',
    this.btnTextColor = AppColors.greyHintColor,
    this.borderColor = AppColors.bluecolor,
    this.btnColor = Colors.white,
    this.btnTextSize = 16,
    this.fontWeight = FontWeight.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!disabled && onTap != null) onTap!();
      },
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: btnColor,
          border: Border.all(width: 1, color: borderColor),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            btnText,
            style: GoogleFonts.jost(
              color:
                  disabled == false ? btnTextColor : AppColors.lightgreybgColor,
              fontSize: btnTextSize,
              fontWeight: fontWeight,
            ),
          ),
        ),
      ),
    );
  }
}

class AppGradiantButton extends StatelessWidget {
  final Function? onTap;
  final double? width;
  final double? height;
  final String btnText;
  final Color btnTextColor;
  final double btnTextSize;
  final bool disabled;

  const AppGradiantButton({
    Key? key,
    this.onTap,
    this.width,
    this.disabled = false,
    this.height,
    this.btnText = 'Button',
    this.btnTextColor = Colors.white,
    this.btnTextSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!disabled && onTap != null) onTap!();
      },
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: const LinearGradient(
            colors: [AppColors.gradiantStartColor, AppColors.gradiantEndColor],
            stops: [0.0, 1.0],
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.topRight,
            tileMode: TileMode.repeated,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            btnText,
            style: GoogleFonts.jost(
              color:
                  disabled == false ? btnTextColor : AppColors.lightgreybgColor,
              fontSize: btnTextSize,
            ),
          ),
        ),
      ),
    );
  }
}
