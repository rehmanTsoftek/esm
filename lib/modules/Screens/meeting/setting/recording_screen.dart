import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/widgets/Toolbar.dart';
import 'package:esm/resources/widgets/buttons/app_button.dart';
import 'package:esm/resources/widgets/buttons/radio_button.dart';
import 'package:flutter/material.dart';

class RecordingScreen extends StatefulWidget {
  const RecordingScreen({super.key});

  @override
  State<RecordingScreen> createState() => _RecordingScreenState();
}

class _RecordingScreenState extends State<RecordingScreen> {
  int groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolbarBack(
        appBar: AppBar(),
        title: "Recording",
      ),
      body: Column(
        children: [
          const SizeBoxHeight16(),
          Padding(
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
                  text: "Save recording file locally (Beta)",
                ),
                AppRadioButton(
                  groupValue: groupValue,
                  value: 2,
                  onChanged: (v) {
                    setState(() {
                      groupValue = v;
                    });
                  },
                  text: "Recording only my audio and video stream",
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
          ),
        ],
      ),
    );
  }
}
