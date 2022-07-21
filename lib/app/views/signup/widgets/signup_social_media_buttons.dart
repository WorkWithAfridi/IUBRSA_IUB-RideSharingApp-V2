import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../data/constants/app_data.dart';

class SignupSocialMediaButtons extends StatelessWidget {
  const SignupSocialMediaButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 1,
              width: Get.width / 5,
              color: AppData.customLightGrey,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              ' Or sign up using ',
              style: AppData.regularTextStyle.copyWith(
                color: AppData.customDarkGrey,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 1,
              width: Get.width / 5,
              color: AppData.customLightGrey,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: AppData.defaultButtonHeight,
              width: Get.width / 6,
              decoration: BoxDecoration(
                color: AppData.customWhite,
                borderRadius: BorderRadius.circular(
                  AppData.defaultBorderRadius,
                ),
                border: Border.all(
                  width: 1,
                  color: AppData.customDarkGrey,
                ),
              ),
              child: const Icon(
                FontAwesomeIcons.google,
                color: Colors.red,
                size: 18,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: AppData.defaultButtonHeight,
              width: Get.width / 6,
              decoration: BoxDecoration(
                color: AppData.customWhite,
                borderRadius: BorderRadius.circular(
                  AppData.defaultBorderRadius,
                ),
                border: Border.all(
                  width: 1,
                  color: AppData.customDarkGrey,
                ),
              ),
              child: const Icon(
                FontAwesomeIcons.apple,
                color: Colors.black,
                size: 22,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: AppData.defaultButtonHeight,
              width: Get.width / 6,
              decoration: BoxDecoration(
                color: AppData.customWhite,
                borderRadius: BorderRadius.circular(
                  AppData.defaultBorderRadius,
                ),
                border: Border.all(
                  width: 1,
                  color: AppData.customDarkGrey,
                ),
              ),
              child: const Icon(
                FontAwesomeIcons.facebook,
                color: AppData.royalBlueColor,
                size: 20,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
