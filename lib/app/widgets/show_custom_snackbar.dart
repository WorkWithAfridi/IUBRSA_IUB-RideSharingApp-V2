import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iubrsa/data/constants/app_data.dart';

showCustomSnackbar({
  required String title,
  required String message,
  bool isError = false,
  bool isCelebration = false,
}) {
  Get.snackbar(
    "_",
    "_",
    borderRadius: 5,
    shouldIconPulse: true,
    // boxShadows: [
    //   BoxShadow(
    //     offset: const Offset(2, 6),
    //     color: Colors.black.withOpacity(.4),
    //     blurRadius: 5,
    //     spreadRadius: 3,
    //   )
    // ],
    snackPosition: SnackPosition.TOP,
    backgroundColor: AppData.royalBlueColor.withOpacity(.8),
    margin: const EdgeInsets.all(10),
    duration: const Duration(seconds: 6),
    titleText: Text(
      title,
      style: AppData.boldTextStyle.copyWith(
        fontSize: 15,
        color: Colors.white,
      ),
    ),

    isDismissible: true,
    dismissDirection: DismissDirection.horizontal,
    icon: Icon(
      isError
          ? Icons.error
          : isCelebration
              ? Icons.celebration
              : Icons.notifications,
      color: Colors.white,
      size: 25,
    ),
    messageText: Text(
      message,
      style: AppData.regularTextStyle.copyWith(
        color: Colors.white.withOpacity(.7),
        height: 1,
      ),
    ),
  );
}
