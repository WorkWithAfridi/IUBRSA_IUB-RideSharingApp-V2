import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../data/constants/app_data.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function callBackFunction;
  final bool isLoading;
  const CustomButton({
    Key? key,
    required this.title,
    required this.callBackFunction,
    required this.isLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callBackFunction();
      },
      child: Container(
        height: AppData.defaultButtonHeight,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppData.royalBlueColor,
          borderRadius: BorderRadius.circular(
            AppData.defaultBorderRadius,
          ),
        ),
        alignment: Alignment.center,
        child: isLoading
            ? LottieBuilder.asset(
                'assets/lottie_animations/loading-animation.json')
            : Text(
                title,
                style: AppData.boldTextStyle.copyWith(
                  color: AppData.customWhite,
                  fontSize: 13,
                ),
              ),
      ),
    );
  }
}
