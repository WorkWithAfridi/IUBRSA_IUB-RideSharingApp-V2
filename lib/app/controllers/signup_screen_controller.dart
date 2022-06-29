import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:iubrsa/app/routes/app_routes.dart';
import 'package:iubrsa/app/views/signup_otp_screen.dart';
import 'package:iubrsa/app/views/signup_review_screen.dart';
import 'package:iubrsa/app/widgets/app_icon.dart';
import 'package:iubrsa/data/constants/app_data.dart';

import '../../data/services/image_services.dart';

class SignupScreenController extends GetxController {
  Uint8List? signupProfileImage;
  var isRegisterButtonLoading = false.obs;
  var isConfirmOTPCodeButtonLoading = false.obs;

  onRegisterButtonClick() async {
    isRegisterButtonLoading.value = true;
    await Future.delayed(AppData.waitTime);
    isRegisterButtonLoading.value = false;

    Get.to(
      () => const SignupOTPScreen(),
      transition: Transition.rightToLeft,
      curve: Curves.easeInOut,
    );
  }

  onConfirmOTPCodeButtonClick() async {
    isConfirmOTPCodeButtonLoading.value = true;
    await Future.delayed(AppData.waitTime);
    isConfirmOTPCodeButtonLoading.value = false;
    Get.offAllNamed(ROUTES.getHomeframeRoute);
  }

  selectProfileImage() async {
    await openPopUpToSelectImageSource();
    update();
  }

  removeSelectedProfilePictureForAccountRegistration() {
    signupProfileImage = null;
    update();
  }

  Future<void> openPopUpToSelectImageSource() {
    return showDialog(
      context: Get.context!,
      barrierColor: Colors.black54,
      builder: (context) {
        return SimpleDialog(
          elevation: 6,
          backgroundColor: AppData.customWhite,
          title: GestureDetector(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppData.appName,
                  style: AppData.regularTextStyle,
                ),
                const Text(
                  'Select an image source',
                  style: AppData.boldTextStyle,
                ),
              ],
            ),
          ),
          children: [
            SimpleDialogOption(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                children: const [
                  Icon(
                    Icons.camera,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Take a picture',
                    style: AppData.regularTextStyle,
                  ),
                ],
              ),
              onPressed: () async {
                var selectedImage =
                    await ImageServices().pickImage(ImageSource.camera);
                if (selectedImage != null) {
                  signupProfileImage = selectedImage;
                  Get.back();
                  return;
                }
              },
            ),
            SimpleDialogOption(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                children: const [
                  Icon(
                    Icons.browse_gallery,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Select from gallery',
                    style: AppData.regularTextStyle,
                  ),
                ],
              ),
              onPressed: () async {
                var selectedImage =
                    await ImageServices().pickImage(ImageSource.gallery);
                if (selectedImage != null) {
                  signupProfileImage = selectedImage;
                  Get.back();
                  return;
                }
              },
            ),
            SimpleDialogOption(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                children: [
                  const Icon(
                    Icons.close,
                    size: 20,
                    color: AppData.customRed,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Close',
                    style: AppData.regularTextStyle.copyWith(
                      color: AppData.customRed,
                    ),
                  ),
                ],
              ),
              onPressed: () async {
                Get.back();
                return;
              },
            ),
          ],
        );
      },
    );
  }

  onSigninButtonClick() {
    Get.offAllNamed(ROUTES.getSigninScreenRoute);
  }

  onNextButtonClick() {
    Get.to(
      () => const SignupReviewScreen(),
      transition: Transition.rightToLeft,
      curve: Curves.easeInOut,
    );
  }
}
