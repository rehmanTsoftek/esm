import 'package:esm/Models/HostDetailModels/advert_model.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/utils/constants.dart';
import 'package:esm/resources/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Adverts extends StatefulWidget {
  const Adverts({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AllState();
  }
}

class AllState extends State<Adverts> {
  TextEditingController searchController = TextEditingController();
  bool advertPress = false;
  bool myAdvertPress = false;
  List<AdvertModel> addList = [
    AdvertModel(
        id: 1,
        title: "title",
        url: Uri.parse("https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"),
    ),

  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
        body: SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        width: 1,
                        color: AppColors.bluecolor,
                      ),
                    ),
                    child: TextFormField(
                      controller: searchController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Search.....',
                        hintStyle: const TextStyle(
                          color: AppColors.greyHintColor,
                          fontSize: 15,
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.bluecolor,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: const ImageIcon(
                                AssetImage(Constants.search),
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        prefixIcon: InkWell(
                          onTap: () {},
                          child: const ImageIcon(
                            AssetImage(Constants.worldMap),
                          ),
                        ),
                        border: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.bluecolor,
                  borderRadius: BorderRadius.circular(37),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, '/AddAdverts');
                  },
                  child: Center(
                    child: const AppText(
                      '   Add \n Advert',
                      size: 17,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizeBoxWidth8(),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: addList.length,
              itemBuilder: (context, index) {
                AdvertModel advert = addList[index];

                VideoPlayerController controller =
                    VideoPlayerController.contentUri(advert.url);
                controller.initialize().then((_) {
                  controller.play();
                });

                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: AspectRatio(
                    aspectRatio: controller.value.aspectRatio,
                    child: VideoPlayer(controller),
                  ),
                );
              },
            ),
          )
        ],
      ),
    ));
  }
}
