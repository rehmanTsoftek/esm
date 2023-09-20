import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class ToolbarImage extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;
  final List<Widget>? action;

  const ToolbarImage({Key? key, required this.appBar, this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (AppBar(
      elevation: 0,
      automaticallyImplyLeading: true,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Image.asset(
        'assets/images/app_logo.png',
        fit: BoxFit.contain,
        height: 50,
      ),
      actions: action ?? [],
      iconTheme: const IconThemeData(
        color: AppColors.black,
        //change your color here
      ),
    ));
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
