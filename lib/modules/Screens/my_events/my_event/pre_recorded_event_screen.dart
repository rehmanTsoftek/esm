import 'dart:io';

import 'package:esm/Models/hologram_model.dart';
import 'package:esm/config/functions/app_date_picker.dart';
import 'package:esm/resources/Widgets/ToolbarImage.dart';
import 'package:esm/resources/Widgets/app_field.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/Constants.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/widgets/buttons/app_button.dart';
import 'package:esm/resources/widgets/buttons/app_drop_down_button.dart';
import 'package:esm/resources/widgets/buttons/radio_button.dart';
import 'package:esm/resources/widgets/profile_image.dart';
import 'package:fialogs/fialogs.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:map_location_picker/map_location_picker.dart';

class PreRecordedEventScreen extends StatefulWidget {
  const PreRecordedEventScreen({super.key});

  @override
  State<PreRecordedEventScreen> createState() => _PreRecordedEventScreenState();
}

class _PreRecordedEventScreenState extends State<PreRecordedEventScreen> {
  TextEditingController eventTitleController = TextEditingController();
  TextEditingController uploadMediaController = TextEditingController();
  TextEditingController eventCategoryController = TextEditingController();
  TextEditingController eventTypeController = TextEditingController();
  TextEditingController dressCodeController = TextEditingController();
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  TextEditingController startTimeController = TextEditingController();
  TextEditingController endTimeController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  TimeZone? timeZone;
  EventWorker? eventWorker;
  bool validateTimeZone = false;
  bool validateEventWorker = false;
  int groupValueReceive = 0;
  int groupValueTicketing = 0;
  int groupValueHologram = 0;
  int groupValueAccount = 0;
  String address = "null";
  String autocompletePlace = "null";
  String? selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolbarImage(
        appBar: AppBar(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.center,
                child: AppProfileImage(
                  title: 'Pick Pre Recorded Profile',
                  height: 100,
                  width: 100,
                  imagePicker: true,
                ),
              ),
              const SizeBoxHeight16(),
              const Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: AppText(
                  'Upload Media',
                  color: Colors.black,
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
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyBgColor.withOpacity(1),
                          spreadRadius: 1,
                          blurRadius: 15,
                          // blur radius
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                  ),
                  AppIconField(
                    onTap: () async {
                      getVideoFile(context);
                    },
                    controller: uploadMediaController,
                    hint: 'Select Media',
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
                  'Event Title',
                  color: Colors.black,
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
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyBgColor.withOpacity(1),
                          spreadRadius: 1,
                          blurRadius: 15,
                          // blur radius
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                  ),
                  AppIconField(
                    controller: eventTitleController,
                    hint: 'Enter Event Title',
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
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
                  'Event Category',
                  color: Colors.black,
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
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyBgColor.withOpacity(1),
                          spreadRadius: 1,
                          blurRadius: 15,
                          // blur radius
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                  ),
                  AppIconField(
                    controller: eventCategoryController,
                    hint: 'Enter Event Category',
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
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
                  'Event Type',
                  color: Colors.black,
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
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyBgColor.withOpacity(1),
                          spreadRadius: 1,
                          blurRadius: 15,
                          // blur radius
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                  ),
                  AppIconField(
                    controller: eventTypeController,
                    hint: 'Enter Event Type',
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
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
                  'Dress Code',
                  color: Colors.black,
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
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyBgColor.withOpacity(1),
                          spreadRadius: 1,
                          blurRadius: 15,
                          // blur radius
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                  ),
                  AppIconField(
                    controller: dressCodeController,
                    hint: 'Enter Dress Code',
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
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
                  'Event Start Date',
                  color: Colors.black,
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
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyBgColor.withOpacity(1),
                          spreadRadius: 1,
                          blurRadius: 15,
                          // blur radius
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                  ),
                  AppIconField(
                    onTap: () async {
                      String date = await AppDateTimePicker.getDate(context);
                      setState(() {
                        startDateController.text = date;
                      });
                    },
                    readOnly: true,
                    controller: dressCodeController,
                    hint: 'Select Event Start Date',
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
                  'Event End Date',
                  color: Colors.black,
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
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyBgColor.withOpacity(1),
                          spreadRadius: 1,
                          blurRadius: 15,
                          // blur radius
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                  ),
                  AppIconField(
                    onTap: () async {
                      String date = await AppDateTimePicker.getDate(context);
                      setState(() {
                        endDateController.text = date;
                      });
                    },
                    readOnly: true,
                    controller: endDateController,
                    hint: 'Select Event End Date',
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
                  'Event Start Time',
                  color: Colors.black,
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
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyBgColor.withOpacity(1),
                          spreadRadius: 1,
                          blurRadius: 15,
                          // blur radius
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                  ),
                  AppIconField(
                    onTap: () async {
                      String time = await AppDateTimePicker.getTime(context);
                      setState(() {
                        startTimeController.text = time;
                      });
                    },
                    readOnly: true,
                    controller: startTimeController,
                    hint: 'Select Start Time',
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
                  'Event End Time',
                  color: Colors.black,
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
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyBgColor.withOpacity(1),
                          spreadRadius: 1,
                          blurRadius: 15,
                          // blur radius
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                  ),
                  AppIconField(
                    onTap: () async {
                      String time = await AppDateTimePicker.getTime(context);
                      setState(() {
                        endTimeController.text = time;
                      });
                    },
                    readOnly: true,
                    controller: endTimeController,
                    hint: 'Select End Time',
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
                  'Event Location',
                  color: Colors.black,
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
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyBgColor.withOpacity(1),
                          spreadRadius: 1,
                          blurRadius: 15,
                          // blur radius
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                  ),
                  AppIconField(
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MapLocationPicker(
                            apiKey: "AIzaSyD9uEMmV8BnVSJorDB0ZXrZDGYykE1JEFE",
                            popOnNextButtonTaped: true,
                            currentLatLng: const LatLng(29.146727, 76.464895),
                            onNext: (GeocodingResult? result) {
                              if (result != null) {
                                setState(() {
                                  address = result.formattedAddress ?? "";
                                });
                              }
                            },
                            onSuggestionSelected:
                                (PlacesDetailsResponse? result) {
                              if (result != null) {
                                setState(() {
                                  autocompletePlace =
                                      result.result.formattedAddress ?? "";
                                });
                              }
                            },
                          ),
                        ),
                      );
                    },
                    readOnly: true,
                    controller: locationController,
                    hint: 'Select Event Location',
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
                  'Time Zone',
                  color: Colors.black,
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
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyBgColor.withOpacity(1),
                          spreadRadius: 1,
                          blurRadius: 15,
                          // blur radius
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                  ),
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
                ],
              ),
              const SizeBoxHeight16(),
              const Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: AppText(
                  'Choose Event Worker',
                  color: Colors.black,
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
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyBgColor.withOpacity(1),
                          spreadRadius: 1,
                          blurRadius: 15,
                          // blur radius
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                  ),
                  AppDropDownFields<EventWorker>(
                    hint: "Choose Event Worker",
                    value: eventWorker,
                    items: EventWorker.eventWorkerList,
                    onChange: (v) {
                      setState(() {
                        eventWorker = v;
                      });
                    },
                    applyValidation: validateEventWorker,
                    errorMessage: 'Required',
                  ),
                ],
              ),
              const SizeBoxHeight16(),
              const Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: AppText(
                  'Pick Images',
                  color: Colors.black,
                ),
              ),
              const SizeBoxHeight8(),
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.greyBgColor.withOpacity(1),
                              spreadRadius: 1,
                              blurRadius: 15,
                              // blur radius
                              offset: const Offset(5, 5),
                            ),
                          ],
                        ),
                        child: IconButton(
                          onPressed: () {
                            selectImageFrom(context);
                          },
                          icon: const ImageIcon(
                            AssetImage(
                              Constants.pick,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.greyBgColor.withOpacity(1),
                              spreadRadius: 1,
                              blurRadius: 15,
                              // blur radius
                              offset: const Offset(5, 5),
                            ),
                          ],
                        ),
                        child: IconButton(
                          onPressed: () {
                            selectImageFrom(context);
                          },
                          icon: const ImageIcon(
                            AssetImage(
                              Constants.pick,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.greyBgColor.withOpacity(1),
                              spreadRadius: 1,
                              blurRadius: 15,
                              // blur radius
                              offset: const Offset(5, 5),
                            ),
                          ],
                        ),
                        child: IconButton(
                          onPressed: () {
                            selectImageFrom(context);
                          },
                          icon: const ImageIcon(
                            AssetImage(
                              Constants.pick,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.greyBgColor.withOpacity(1),
                              spreadRadius: 1,
                              blurRadius: 15,
                              // blur radius
                              offset: const Offset(5, 5),
                            ),
                          ],
                        ),
                        child: IconButton(
                          onPressed: () {
                            selectImageFrom(context);
                          },
                          icon: const ImageIcon(
                            AssetImage(
                              Constants.pick,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.greyBgColor.withOpacity(1),
                              spreadRadius: 1,
                              blurRadius: 15,
                              // blur radius
                              offset: const Offset(5, 5),
                            ),
                          ],
                        ),
                        child: IconButton(
                          onPressed: () {
                            selectImageFrom(context);
                          },
                          icon: const ImageIcon(
                            AssetImage(
                              Constants.pick,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizeBoxHeight16(),
              const Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: AppText(
                  'Note',
                  color: Colors.black,
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
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyBgColor.withOpacity(1),
                          spreadRadius: 1,
                          blurRadius: 15,
                          // blur radius
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                  ),
                  AppIconField(
                    controller: noteController,
                    hint: 'Enter Note',
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
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
              const SizeBoxHeight16(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppBorderButton(
                    onTap: () {},
                    btnText: 'Cancel',
                    width: 150,
                    borderColor: AppColors.bluecolor,
                  ),
                  AppGradiantButton(
                    onTap: () {},
                    btnText: 'Create',
                    width: 150,
                  ),
                ],
              ),
              const SizeBoxHeight16(),
              const SizeBoxHeight16(),
            ],
          ),
        ),
      ),
    );
  }

  selectImageFrom(context) {
    var selectImageOption = CupertinoActionSheet(
      title: const Text(
        'Pick Image',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      message: const Text("Select image from"),
      actions: <Widget>[
        CupertinoActionSheetAction(
          isDefaultAction: true,
          onPressed: () {
            Navigator.pop(context);
            _getImage(context, ImageSource.gallery);
          },
          child: const Text("Gallery"),
        ),
        CupertinoActionSheetAction(
          child: const Text("Camera"),
          onPressed: () {
            Navigator.pop(context);
            _getImage(context, ImageSource.camera);
          },
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        isDestructiveAction: true,
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text("Cancel"),
      ),
    );

    showCupertinoModalPopup(
        context: context, builder: (_) => selectImageOption);
  }

  _getImage(context, [source = ImageSource.gallery]) async {
    try {
      final ImagePicker picker = ImagePicker();
      var image = await picker.pickImage(
        source: source,
      );

      if (image != null) {
        _cropImage(File(image.path));
      } else {
        errorDialog(
            context, "Failed", "Unable to get the image, Please try again...");
      }
    } on PlatformException catch (e) {
      errorDialog(context, "Failed", "${e.message}");
    } on Exception catch (e) {
      errorDialog(context, "Failed", e.toString());
    } on Error catch (e) {
      errorDialog(context, "Failed", e.toString());
    } catch (e) {
      errorDialog(context, "Failed", e.toString());
    }
  }

  Future<void> _cropImage(File imageFile) async {
    CroppedFile? croppedFile = await ImageCropper().cropImage(
      sourcePath: imageFile.path,
      aspectRatioPresets: Platform.isAndroid
          ? [
              CropAspectRatioPreset.square,
              CropAspectRatioPreset.ratio3x2,
              CropAspectRatioPreset.original,
              CropAspectRatioPreset.ratio4x3,
              CropAspectRatioPreset.ratio16x9
            ]
          : [
              CropAspectRatioPreset.original,
              CropAspectRatioPreset.square,
              CropAspectRatioPreset.ratio3x2,
              CropAspectRatioPreset.ratio4x3,
              CropAspectRatioPreset.ratio5x3,
              CropAspectRatioPreset.ratio5x4,
              CropAspectRatioPreset.ratio7x5,
              CropAspectRatioPreset.ratio16x9
            ],
      maxWidth: 512,
      maxHeight: 512,
      cropStyle: CropStyle.circle,
      uiSettings: [
        AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: Colors.blue,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        IOSUiSettings(
          title: 'Cropper',
        )
      ],
    );

    if (croppedFile != null) {
      File file = File(croppedFile.path);
      setState(() {
        selectedImage = file.path;
      });
    }
  }
  Future getVideoFile(context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['mp4'],
    );

    if (result != null) {
      setState(() {
        uploadMediaController.text = result.files.single.path ?? '';
      });

    } else {
      warningDialog(context, 'Warning', 'Something went wrong');
    }
  }
}
