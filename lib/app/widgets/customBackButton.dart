import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iubrsa/data/constants/app_data.dart';

GetBackButton() {
  return IconButton(
    onPressed: () {
      Get.back();
    },
    icon: const Icon(
      FontAwesomeIcons.arrowLeft,
      size: 14,
      color: AppData.darkBlueColor,
    ),
  );
}
