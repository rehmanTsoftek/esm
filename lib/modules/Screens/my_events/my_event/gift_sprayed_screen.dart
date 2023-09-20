import 'package:esm/Models/my_event/gift_sprayed_model.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/widgets/Toolbar.dart';
import 'package:flutter/material.dart';

class GiftSpyaredScreen extends StatefulWidget {
  const GiftSpyaredScreen({super.key});

  @override
  State<GiftSpyaredScreen> createState() => _GiftSpyaredScreenState();
}

class _GiftSpyaredScreenState extends State<GiftSpyaredScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolbarBack(
        appBar: AppBar(),
        title: "Money Gift Spyared ",
      ),
      body: ListView.separated(
        itemCount: GiftSpyaredModel.giftSpyaredList.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          GiftSpyaredModel giftSpyaredModel =
              GiftSpyaredModel.giftSpyaredList[index];
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
                        giftSpyaredModel.image,
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
                      giftSpyaredModel.name,
                      fontWeight: FontWeight.w600,
                    ),
                    const SizeBoxHeight8(),
                    Row(
                      children: [
                        const AppText(
                          ' \$',
                          size: 18,
                          fontWeight: FontWeight.w900,
                        ),
                        const SizeBoxWidth4(),
                        AppText(
                          giftSpyaredModel.price,
                          size: 16,
                        ),
                      ],
                    ),
                    const SizeBoxHeight12(),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.red,
                        ),
                        const SizeBoxWidth4(),
                        AppText(
                          giftSpyaredModel.location,
                          size: 14,
                        ),
                      ],
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
