import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iubrsa/data/constants/app_data.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController TEC;
  final String hint;
  final TextInputType textInputType;
  final int maxLines;
  final bool isPassword;
  const CustomTextField({
    Key? key,
    required this.TEC,
    required this.hint,
    required this.textInputType,
    required this.maxLines,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: AppData.regularTextStyle,
      cursorColor: Get.theme.colorScheme.primary,
      controller: TEC,
      maxLines: maxLines,
      obscureText: isPassword,
      keyboardType: textInputType,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppData.regularTextStyle.copyWith(
          color: AppData.darkBlueColor.withOpacity(.4),
          fontWeight: FontWeight.bold,
        ),
        border: OutlineInputBorder(
          borderSide: Divider.createBorderSide(
            context,
            color: AppData.darkBlueColor.withOpacity(.25),
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(
            7,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(
            context,
            color: AppData.royalBlueColor.withOpacity(.95),
            width: 2.5,
          ),
          borderRadius: BorderRadius.circular(
            7,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(
            context,
            color: AppData.darkBlueColor.withOpacity(.25),
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(
            7,
          ),
        ),
        fillColor: AppData.customWhite,
        filled: true,
        contentPadding: const EdgeInsets.all(
          10,
        ),
      ),
    );
  }
}
