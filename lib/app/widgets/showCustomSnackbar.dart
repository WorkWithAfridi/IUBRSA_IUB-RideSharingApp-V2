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
    boxShadows: [
      BoxShadow(
        offset: const Offset(2, 6),
        color: Colors.black.withOpacity(.4),
        blurRadius: 5,
        spreadRadius: 3,
      )
    ],
    snackPosition: SnackPosition.TOP,
    backgroundColor: Colors.white,
    margin: const EdgeInsets.all(10),
    duration: const Duration(seconds: 6),
    titleText: Text(
      title,
      style: AppData.boldTextStyle.copyWith(
        fontSize: 15,
      ),
    ),
    icon: Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 5),
      child: Icon(
        isError
            ? Icons.error
            : isCelebration
                ? Icons.celebration
                : Icons.notifications,
        color: isError
            ? Colors.redAccent
            : isCelebration
                ? Colors.greenAccent
                : Colors.amberAccent,
      ),
    ),
    messageText: Text(
      message,
      style: AppData.regularTextStyle,
    ),
  );
}
