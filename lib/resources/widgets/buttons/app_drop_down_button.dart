import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppDropDownFields<T> extends StatelessWidget {
  final String? hint;
  final List<T>? items;
  final Function? onChange;
  final String? prefixIcon;
  final Function()? validator;
  final T? value;
  final bool? applyValidation;
  final String? errorMessage;

  const AppDropDownFields({
    Key? key,
    this.hint,
    required this.items,
    this.value,
    this.onChange,
    this.validator,
    this.applyValidation,
    this.errorMessage = "Required!",
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              children: [
                const SizeBoxWidth8(),
                prefixIcon == null
                    ? const SizedBox()
                    : ImageIcon(
                        size: 25,
                        color: Colors.grey,
                        AssetImage(prefixIcon ?? '')),
                Expanded(
                  child: DropdownButtonHideUnderline(
                    child: ButtonTheme(
                      //padding: const EdgeInsets.all(5.0),
                      alignedDropdown: true,
                      child: DropdownButton<T>(
                        isExpanded: true,
                        iconEnabledColor: AppColors.greyBgColor,
                        hint: Text(
                          hint ?? "",
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        value: value,
                        items: items != null
                            ? items?.map((i) {
                                return DropdownMenuItem(
                                    value: i, child: Text(i.toString()));
                              }).toList()
                            : [],
                        onChanged: (item) {
                          if (onChange != null) onChange!(item);
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        if (applyValidation == true)
          Padding(
            padding: const EdgeInsets.only(left: 24.0, top: 8.0, bottom: 4.0),
            child: Text(
              errorMessage!,
              style: const TextStyle(color: Colors.red, fontSize: 12),
            ),
          ),
      ],
    );
  }
}
