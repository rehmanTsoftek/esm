import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSwitchButton extends StatelessWidget {
  final bool value;
  final Color trackColor;
  final Color activeColor;
  final Color thumbColor;
  final Color focusColor;
  final Function(bool) onChange;

  const CupertinoSwitchButton(
      {Key? key,
      required this.value,
      required this.onChange,
      required this.trackColor,
      required this.activeColor,
      required this.thumbColor,
      required this.focusColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.9,
      child: CupertinoSwitch(
        trackColor: trackColor,
        activeColor: activeColor,
        thumbColor: thumbColor,
        // focusColor: focusColor,
        value: value,
        onChanged: onChange,
      ),
    );
  }
}
