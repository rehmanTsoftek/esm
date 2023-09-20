import 'package:esm/modules/Screens/work/Seller_screen.dart';
import 'package:esm/resources/Widgets/ToolbarImage.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/widgets/buttons/app_button.dart';
import 'package:flutter/material.dart';

import 'general_screen.dart';

class WorkerScreen extends StatefulWidget {
  const WorkerScreen({super.key});

  @override
  State<WorkerScreen> createState() => _WorkerScreenState();
}

class _WorkerScreenState extends State<WorkerScreen> {
  bool general = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolbarImage(
        appBar: AppBar(),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppGradiantButton(
                width: 150,
                onTap: () {
                  if (general == false) {
                    setState(() {
                      general = false;
                    });
                  } else {
                    setState(() {
                      general = false;
                    });
                  }
                },
                btnText: 'General',
              ),
              const SizeBoxWidth16(),
              AppBorderButton(
                width: 150,
                onTap: () {
                  if (general == false) {
                    setState(() {
                      general = true;
                    });
                  } else {
                    setState(() {
                      general = true;
                    });
                  }
                },
                btnText: 'Seller',
              ),
            ],
          ),
          const SizeBoxHeight8(),
          general == false
              ? const Expanded(child: GeneralScreen())
              : const Expanded(child: SellerScreen()),
        ],
      ),
    );
  }
}
