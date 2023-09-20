import 'package:esm/Models/hologram_model.dart';
import 'package:esm/config/functions/app_date_picker.dart';
import 'package:esm/resources/Widgets/ToolbarImage.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/Constants.dart';
import 'package:esm/resources/widgets/app_field.dart';
import 'package:esm/resources/widgets/buttons/app_button.dart';
import 'package:esm/resources/widgets/buttons/app_drop_down_button.dart';
import 'package:esm/resources/widgets/dialogs/quick_meeting_dialog.dart';
import 'package:flutter/material.dart';

class QuickMeetingScreen extends StatefulWidget {
  const QuickMeetingScreen({super.key});

  @override
  State<QuickMeetingScreen> createState() => _QuickMeetingScreenState();
}

class _QuickMeetingScreenState extends State<QuickMeetingScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  TextEditingController startTimeController = TextEditingController();
  TextEditingController endTimeDateController = TextEditingController();
  TextEditingController timeZoneController = TextEditingController();
  TextEditingController hologramController = TextEditingController();
  TextEditingController controller = TextEditingController();
  Hologram? hologram;
  HologramType? hologramType;
  EventEngineer? eventEngineer;
  TimeZone? timeZone;
  bool validateHologram = false;
  bool validateTimeZone = false;
  bool validateHologramType = false;
  bool validateEventEngineer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolbarImage(
        appBar: AppBar(),
      ),
      body: Stack(
        children: [
          Image.asset(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            Constants.meetings,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const SizeBoxHeight16(),
                    // const SizeBoxHeight16(),
                    // const SizeBoxHeight16(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppSimpleButton(
                          onTap: () {
                            Navigator.pushNamed(context, '/AudioMeetingScreen');
                          },
                          btnText: 'Instant Meeting',
                        ),
                        const SizeBoxWidth12(),
                        AppGradiantButton(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return const QuickMeetingDialog();
                              },
                            );
                          },
                          btnText: 'Schedule Meeting',
                        ),
                      ],
                    ),
                    const SizeBoxHeight16(),
                    const Padding(
                      padding: EdgeInsets.only(left: 24.0),
                      child: AppText(
                        'Purpose Of Meeting',
                        color: Colors.white,
                      ),
                    ),
                    const SizeBoxHeight4(),
                    Stack(
                      children: [
                        Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        AppField(
                          controller: titleController,
                          hint: 'Enter Meeting Title',
                          validator: (val) {
                            if (val == null || val.trim().isEmpty) {
                              return "Required";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    const SizeBoxHeight16(),
                    const Padding(
                      padding: EdgeInsets.only(left: 24.0),
                      child: AppText(
                        'Meeting Start Date',
                        color: Colors.white,
                      ),
                    ),
                    const SizeBoxHeight4(),
                    Stack(
                      children: [
                        Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        AppField(
                          onTap: () async {
                            String date =
                                await AppDateTimePicker.getDate(context);
                            setState(() {
                              startDateController.text = date;
                            });
                          },
                          readOnly: true,
                          controller: startDateController,
                          hint: 'Select Meeting Start Date',
                          validator: (val) {
                            if (val == null || val.trim().isEmpty) {
                              return "Required";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    const SizeBoxHeight16(),
                    const Padding(
                      padding: EdgeInsets.only(left: 24.0),
                      child: AppText(
                        'Meeting End Date',
                        color: Colors.white,
                      ),
                    ),
                    const SizeBoxHeight4(),
                    Stack(
                      children: [
                        Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        AppField(
                          onTap: () async {
                            String date =
                                await AppDateTimePicker.getDate(context);
                            setState(() {
                              endDateController.text = date;
                            });
                          },
                          readOnly: true,
                          controller: endDateController,
                          hint: 'Select Meeting End Date',
                          validator: (val) {
                            if (val == null || val.trim().isEmpty) {
                              return "Required";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    const SizeBoxHeight16(),
                    const Padding(
                      padding: EdgeInsets.only(left: 24.0),
                      child: AppText(
                        'Meeting Start Time',
                        color: Colors.white,
                      ),
                    ),
                    const SizeBoxHeight4(),
                    Stack(
                      children: [
                        Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        AppField(
                          onTap: () async {
                            String time =
                                await AppDateTimePicker.getTime(context);
                            setState(() {
                              startTimeController.text = time;
                            });
                          },
                          controller: startTimeController,
                          readOnly: true,
                          hint: 'Select Meeting Start Time',
                          validator: (val) {
                            if (val == null || val.trim().isEmpty) {
                              return "Required";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    const SizeBoxHeight16(),
                    const Padding(
                      padding: EdgeInsets.only(left: 24.0),
                      child: AppText(
                        'Meeting End Time',
                        color: Colors.white,
                      ),
                    ),
                    const SizeBoxHeight4(),
                    Stack(
                      children: [
                        Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        AppField(
                          onTap: () async {
                            String time =
                                await AppDateTimePicker.getTime(context);
                            setState(() {
                              endTimeDateController.text = time;
                            });
                          },
                          controller: endTimeDateController,
                          hint: 'Select Meeting End Time',
                          readOnly: true,
                          validator: (val) {
                            if (val == null || val.trim().isEmpty) {
                              return "Required";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    const SizeBoxHeight16(),
                    const Padding(
                      padding: EdgeInsets.only(left: 24.0),
                      child: AppText(
                        'Meeting Time Zone',
                        color: Colors.white,
                      ),
                    ),
                    const SizeBoxHeight4(),
                    AppDropDownFields<TimeZone>(
                      hint: "Select Time Zone",
                      value: timeZone,
                      items: TimeZone.timeZoneList,
                      onChange: (v) {
                        setState(() {
                          timeZone = v;
                        });
                      },
                      applyValidation: validateTimeZone,
                      errorMessage: 'Required',
                    ),
                    const SizeBoxHeight16(),
                    const Padding(
                      padding: EdgeInsets.only(left: 24.0),
                      child: AppText(
                        'Need Hologram',
                        color: Colors.white,
                      ),
                    ),
                    const SizeBoxHeight4(),
                    AppDropDownFields<Hologram>(
                      hint: "Select hologram",
                      value: hologram,
                      items: Hologram.hologramList,
                      onChange: (v) {
                        setState(() {
                          hologram = v;
                        });
                      },
                      applyValidation: validateHologram,
                      errorMessage: 'Required',
                    ),
                    if (hologram?.title == 'Yes') ...[
                      const SizeBoxHeight16(),
                      const Padding(
                        padding: EdgeInsets.only(left: 24.0),
                        child: AppText(
                          'Hologram Type',
                          color: Colors.white,
                        ),
                      ),
                      const SizeBoxHeight4(),
                      AppDropDownFields<HologramType>(
                        hint: "Select Hologram Type",
                        value: hologramType,
                        items: HologramType.hologramTypeList,
                        onChange: (v) {
                          setState(() {
                            hologramType = v;
                          });
                        },
                        applyValidation: validateHologramType,
                        errorMessage: 'Required',
                      ),
                      const SizeBoxHeight16(),
                      const Padding(
                        padding: EdgeInsets.only(left: 24.0),
                        child: AppText(
                          'Event Engineer',
                          color: Colors.white,
                        ),
                      ),
                      const SizeBoxHeight4(),
                      AppDropDownFields<EventEngineer>(
                        hint: "Select Event Engineer",
                        value: eventEngineer,
                        items: EventEngineer.eventEngineerList,
                        onChange: (v) {
                          setState(() {
                            eventEngineer = v;
                          });
                        },
                        applyValidation: validateEventEngineer,
                        errorMessage: 'Required',
                      ),
                    ],
                    const SizeBoxHeight16(),
                    Align(
                      alignment: Alignment.center,
                      child: AppGradiantButton(
                        width: 200,
                        onTap: () {
                          // if (formKey.currentState!.validate() && hologram != null && timeZone != null) {
                          //   if (hologram?.title == 'Yes') {
                          //     if (hologramType != null && eventEngineer != null) {
                          //       setState(() {
                          //         validateHologramType = false;
                          //         validateEventEngineer = false;
                          //       });
                          //
                          //     } else {
                          //       setState(() {
                          //         validateHologramType = true;
                          //         validateEventEngineer = true;
                          //       });
                          //     }
                          //   }
                          //   setState(() {
                          //     validateHologram = false;
                          //     validateTimeZone = false;
                          //   });
                          // } else {
                          //   setState(() {
                          //     validateHologram = true;
                          //     validateTimeZone = true;
                          //   });
                          // }
                          Navigator.pushNamed(context, '/AudioMeetingScreen');
                        },
                        btnText: 'Schedule',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
