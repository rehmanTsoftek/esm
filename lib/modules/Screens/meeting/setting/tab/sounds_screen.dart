import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/widgets/buttons/app_button.dart';
import 'package:esm/resources/widgets/buttons/radio_button.dart';
import 'package:flutter/material.dart';

class SoundsScreen extends StatefulWidget {
  const SoundsScreen({super.key});

  @override
  State<SoundsScreen> createState() => _SoundsScreenState();
}

class _SoundsScreenState extends State<SoundsScreen> {
  int groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          AppRadioButton(
            groupValue: groupValue,
            value: 1,
            onChanged: (v) {
              setState(() {
                groupValue = v;
              });
            },
            text: "Event reactions",
          ),
          AppRadioButton(
            groupValue: groupValue,
            value: 2,
            onChanged: (v) {
              setState(() {
                groupValue = v;
              });
            },
            text: "Incoming message",
          ),
          AppRadioButton(
            groupValue: groupValue,
            value: 3,
            onChanged: (v) {
              setState(() {
                groupValue = v;
              });
            },
            text: "Participant Joined",
          ),
          AppRadioButton(
            groupValue: groupValue,
            value: 4,
            onChanged: (v) {
              setState(() {
                groupValue = v;
              });
            },
            text: "Participant Left",
          ),
          AppRadioButton(
            groupValue: groupValue,
            value: 5,
            onChanged: (v) {
              setState(() {
                groupValue = v;
              });
            },
            text: "Talk while muted",
          ),
          AppRadioButton(
            groupValue: groupValue,
            value: 6,
            onChanged: (v) {
              setState(() {
                groupValue = v;
              });
            },
            text: "Participant entered lobby",
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
