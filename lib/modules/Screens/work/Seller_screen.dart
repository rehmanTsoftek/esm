import 'package:esm/Models/hologram_model.dart';
import 'package:esm/resources/Widgets/app_field.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/widgets/buttons/app_button.dart';
import 'package:esm/resources/widgets/buttons/app_drop_down_button.dart';
import 'package:esm/resources/widgets/profile_image.dart';
import 'package:flutter/material.dart';
import 'package:map_location_picker/map_location_picker.dart';

class SellerScreen extends StatefulWidget {
  const SellerScreen({super.key});

  @override
  State<SellerScreen> createState() => _SellerScreenState();
}

class _SellerScreenState extends State<SellerScreen> {
  TextEditingController companyNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController shopNameController = TextEditingController();
  TextEditingController companyAddressController = TextEditingController();
  TextEditingController businessURLController = TextEditingController();
  TextEditingController facebookURLController = TextEditingController();
  TextEditingController landmarkController = TextEditingController();
  TextEditingController instagramURLController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController latitudeController = TextEditingController();
  TextEditingController longitudeController = TextEditingController();
  TimeZone? timeZone;
  EventWorker? eventWorker;
  bool validateTimeZone = false;
  bool validateEventWorker = false;
  String address = "null";
  String autocompletePlace = "null";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Align(
              alignment: Alignment.center,
              child: AppProfileImage(
                title: 'Pick Live Profile',
                height: 100,
                width: 100,
                imagePicker: true,
              ),
            ),
            const SizeBoxHeight16(),
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: AppText(
                'Company Name',
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
                  controller: companyNameController,
                  hint: 'Enter Company Name',
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
                'Email',
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
                  controller: emailController,
                  hint: 'Enter Email',
                  keyboardType: TextInputType.emailAddress,
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
                'Phone Number',
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
                  controller: phoneNumberController,
                  hint: 'Enter Phone Number',
                  keyboardType: TextInputType.phone,
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
                'Shop Name',
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
                  controller: shopNameController,
                  hint: 'Enter Shop Name',
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
                'Category',
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
                  hint: "Select Category",
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
                'Company Address',
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
                  controller: companyAddressController,
                  hint: 'Enter Company Address',
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
                'Business URL',
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
                  controller: businessURLController,
                  hint: 'Enter Business URL',
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
                'Facebook URL',
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
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  controller: facebookURLController,
                  hint: 'Enter Facebook URL',
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
                'Instagram URL',
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
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  controller: instagramURLController,
                  hint: 'Enter Instagram URL',
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
                'Landmark',
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
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  controller: landmarkController,
                  hint: 'Enter Landmark',
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
                'Country',
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
                  hint: "Choose Country",
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
                'State',
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
                  hint: "Choose State",
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
                'Other Location',
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
                  hint: 'Select Other Location',
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
                'Longitude',
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
                  controller: longitudeController,
                  hint: 'Select Longitude',
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
                'Latitude',
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
                  controller: latitudeController,
                  hint: 'Select Latitude',
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
            Align(
              alignment: Alignment.center,
              child: AppGradiantButton(
                onTap: () {},
                btnText: 'Submit',
                width: 150,
              ),
            ),
            const SizeBoxHeight16(),
            const SizeBoxHeight16(),
          ],
        ),
      ),
    );
  }
}
