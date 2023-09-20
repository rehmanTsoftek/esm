import 'package:esm/Models/post_model.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  List<PostModel> postList = [
    PostModel(
        postImage: "assets/images/dummypost.png",
        postDescription: "Hello",
        likeCounts: "265",
        userImg: "assets/images/profile.png",
        userName: "Buland Khan",
        userLocation: "Lahore,Pakistan",
        postTime: "9 MINITUES AGO"),
    PostModel(
        postImage: "assets/images/dummyPost2.png",
        postDescription: "Hello",
        likeCounts: "265",
        userImg: "assets/images/profile.png",
        userName: "Buland Khan",
        userLocation: "Lahore,Pakistan",
        postTime: "9 MINITUES AGO"),
    PostModel(
        postImage: "assets/images/dummyPost2.png",
        postDescription: "Hello",
        likeCounts: "265",
        userImg: "assets/images/profile.png",
        userName: "Buland Khan",
        userLocation: "Lahore,Pakistan",
        postTime: "9 MINITUES AGO"),
    PostModel(
        postImage: "assets/images/dummyPost2.png",
        postDescription: "Hello",
        likeCounts: "265",
        userImg: "assets/images/profile.png",
        userName: "Buland Khan",
        userLocation: "Lahore,Pakistan",
        postTime: "9 MINITUES AGO"),
    PostModel(
        postImage: "assets/images/dummyPost2.png",
        postDescription: "Hello",
        likeCounts: "265",
        userImg: "assets/images/profile.png",
        userName: "Buland Khan",
        userLocation: "Lahore,Pakistan",
        postTime: "9 MINITUES AGO"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
                  onPressed: () {},
                  child: const AppText(
                    'Exposé',
                    size: 17,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizeBoxWidth8(),
            ],
          ),
          Expanded(
            child:
            ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: postList.length,
              addRepaintBoundaries: true,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                PostModel pM = postList[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap:(){
                Navigator.pushNamed(context, '/HostDetailTabScreen');
                },
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                "assets/images/profile.png",
                              ),
                            ),
                            const SizeBoxWidth12(),
                            Column(
                              children: [
                                const SizeBoxHeight4(),
                                AppText(
                                  pM.userName,
                                  size: 16,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.black,
                                ),
                                AppText(
                                  pM.userLocation,
                                  size: 12,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.greyHintColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Image.asset(
                      pM.postImage,
                      height: 299,
                      fit: BoxFit.cover,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const SizeBoxWidth12(),
                            InkWell(
                              
                              child: SvgPicture.asset(
                                Constants.favouriteIcon,
                              ),
                              onTap: (){
                                Navigator.pushNamed(context, "/LikeScreen");
                              },
                            ),
                            const SizeBoxWidth12(),
                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, "/CommentScreen");
                              },
                              child: SvgPicture.asset(
                                Constants.commentIcon,
                              ),
                            ),
                            const SizeBoxWidth12(),
                            SvgPicture.asset(
                              Constants.viewIcon,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            Constants.shareBtnBlue,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          AppText(
                            "${pM.likeCounts} Likes",
                            size: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        const SizeBoxWidth8(),
                        AppText(
                          pM.userName,
                          size: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.black,
                        ),
                        const SizeBoxWidth16(),
                        AppText(
                          pM.postDescription,
                          size: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: AppText(
                        pM.postTime,
                        size: 10,
                        fontWeight: FontWeight.w700,
                        color: AppColors.greyHintColor,
                      ),
                    ),
                    const SizeBoxHeight12(),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
