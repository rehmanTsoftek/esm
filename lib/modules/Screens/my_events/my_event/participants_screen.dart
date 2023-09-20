import 'package:esm/Models/my_event/participent_model.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/widgets/Toolbar.dart';
import 'package:flutter/material.dart';

class ParticipantsScreen extends StatefulWidget {
  const ParticipantsScreen({super.key});

  @override
  State<ParticipantsScreen> createState() => _ParticipantsScreenState();
}

class _ParticipantsScreenState extends State<ParticipantsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolbarBack(
        appBar: AppBar(),
        title: "Participants",
      ),
      body: ListView.separated(
        itemCount: ParticipantModel.participantsList.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          ParticipantModel participantModel = ParticipantModel.participantsList[index];
          return Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 1,
                color: AppColors.greyBgColor,
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 120,
                    height: 130,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        participantModel.image,
                        width: 120,
                        height: 130,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizeBoxHeight16(),
                    AppText(
                      participantModel.name,
                      fontWeight: FontWeight.w600,
                    ),
                    const SizeBoxHeight8(),
                    AppText(
                      participantModel.location,
                      size: 14,
                    ),
                  ],
                )
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizeBoxHeight12();
        },
      ),
    );
  }
}
