import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/controllers/signup_screen_controller.dart';
import 'package:iubrsa/app/widgets/custom_back_button.dart';
import 'package:iubrsa/app/widgets/custom_text_field.dart';

import '../../data/constants/app_data.dart';
import '../widgets/custom_button.dart';

class SignupReviewScreen extends StatefulWidget {
  const SignupReviewScreen({Key? key}) : super(key: key);

  @override
  State<SignupReviewScreen> createState() => _SignupReviewScreenState();
}

class _SignupReviewScreenState extends State<SignupReviewScreen> {
  final SignupScreenController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppData.appName,
          style: AppData.boldTextStyle.copyWith(
            color: AppData.darkBlueColor,
          ),
        ),
        leading: GetBackButton(),
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: AppData.defaultPadding,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Review details",
                  style: AppData.boldTextStyle.copyWith(
                    fontSize: 22,
                    height: .95,
                    color: AppData.darkBlueColor.withOpacity(
                      .85,
                    ),
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  "Please review your user details \nbefore continuing to the next screen.",
                  style: AppData.lightTextStyle.copyWith(
                    color: AppData.customDarkGrey,
                    height: 1,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 15,
                ),
                GetBuilder<SignupScreenController>(
                  init: SignupScreenController(),
                  builder: (moduleController) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        controller.signupProfileImage == null
                            ? Stack(
                                alignment: Alignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: Get.width / 5,
                                    backgroundColor: Colors.transparent,
                                    child: Padding(
                                      padding: AppData.defaultPadding,
                                      child: SvgPicture.asset(
                                        'assets/svgs/user_profile_setup.svg',
                                        color: AppData.customLightGrey,
                                      ),
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: Get.width / 5,
                                    backgroundColor: Colors.transparent,
                                    child: IconButton(
                                      onPressed: () {
                                        moduleController.selectProfileImage();
                                      },
                                      icon: const Icon(
                                        Icons.add_a_photo,
                                        color: AppData.royalBlueColor,
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : CircleAvatar(
                                radius: Get.width / 5,
                                backgroundImage: MemoryImage(
                                  moduleController.signupProfileImage!,
                                ),
                              ),
                        moduleController.signupProfileImage != null
                            ? Column(
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      controller
                                          .removeSelectedProfilePictureForAccountRegistration();
                                    },
                                    child: Text(
                                      "Remove image\nor select a new one",
                                      style: AppData.regularTextStyle.copyWith(
                                          color: AppData.customRed,
                                          height: .95),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              )
                            : const SizedBox.shrink()
                      ],
                    );
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Username',
                  style: AppData.regularTextStyle.copyWith(
                    color: AppData.customDarkGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Container(
                  height: AppData.defaultButtonHeight,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: AppData.babyBlueColor,
                    borderRadius: BorderRadius.circular(
                      AppData.defaultBorderRadius,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Khondakar Afridi',
                    style: AppData.regularTextStyle.copyWith(
                      fontSize: 13,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Student ID',
                  style: AppData.regularTextStyle.copyWith(
                    color: AppData.customDarkGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Container(
                  height: AppData.defaultButtonHeight,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: AppData.babyBlueColor,
                    borderRadius: BorderRadius.circular(
                      AppData.defaultBorderRadius,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '1820461',
                    style: AppData.regularTextStyle.copyWith(
                      fontSize: 13,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Email address',
                  style: AppData.regularTextStyle.copyWith(
                    color: AppData.customDarkGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Container(
                  height: AppData.defaultButtonHeight,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: AppData.babyBlueColor,
                    borderRadius: BorderRadius.circular(
                      AppData.defaultBorderRadius,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'KhondakarAfridi@gmail.com',
                    style: AppData.regularTextStyle.copyWith(
                      fontSize: 13,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Phone',
                  style: AppData.regularTextStyle.copyWith(
                    color: AppData.customDarkGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Container(
                  height: AppData.defaultButtonHeight,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: AppData.babyBlueColor,
                    borderRadius: BorderRadius.circular(
                      AppData.defaultBorderRadius,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '01741499768',
                    style: AppData.regularTextStyle.copyWith(
                      fontSize: 13,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Obx(
                  () => CustomButton(
                    title: "Register",
                    callBackFunction: () {
                      controller.onRegisterButtonClick();
                    },
                    isLoading: controller.isRegisterButtonLoading.value,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
