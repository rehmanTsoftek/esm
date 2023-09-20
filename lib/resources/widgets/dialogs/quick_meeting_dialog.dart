import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/Constants.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuickMeetingDialog extends StatelessWidget {
  const QuickMeetingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
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
              // Add your dialog content here
              Text(
                'Schedule Meeting',
                style: GoogleFonts.jost(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizeBoxHeight32(),
              Text(
                'Your Meeting has been scheduled. Thank you for using eSocialMint. Check your email for detail.',
                style: GoogleFonts.jost(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizeBoxHeight32(),
              RichText(
                text: const TextSpan(
                  text: "Meeting Link: ",
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w700,
                  ),
                  children: [
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Text(
                        'https://staging.esprayme.com/instant-meeting?slug=1692109650605',
                        style: TextStyle(
                          color: AppColors.bluecolor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizeBoxHeight16(),
              Row(
                children: [
                  Text(
                    'Password:',
                    style: GoogleFonts.jost(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '1221212',
                    style: GoogleFonts.jost(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizeBoxHeight32(),
              Image.asset(Constants.file),
              const SizeBoxHeight32(),
            ],
          ),
        ),
      ),
    );
  }
}
