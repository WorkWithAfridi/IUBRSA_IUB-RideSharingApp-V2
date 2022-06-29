import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/controllers/signup_screen_controller.dart';
import 'package:iubrsa/app/widgets/customBackButton.dart';
import 'package:iubrsa/app/widgets/customTextField.dart';

import '../../data/constants/app_data.dart';
import '../widgets/customButton.dart';

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
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Review user details",
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
                        height: 20,
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
                                              moduleController
                                                  .selectProfileImage();
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
                              const SizedBox(
                                height: 10,
                              ),
                              moduleController.signupProfileImage != null
                                  ? GestureDetector(
                                      onTap: () {
                                        controller
                                            .removeSelectedProfilePictureForAccountRegistration();
                                      },
                                      child: Text(
                                        "Remove image\nor select a new one",
                                        style:
                                            AppData.regularTextStyle.copyWith(
                                          color: AppData.customRed,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    )
                                  : const SizedBox.shrink()
                            ],
                          );
                        },
                      ),
                      const SizedBox(
                        height: 10,
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
            GestureDetector(
              onTap: () {
                controller.onSigninButtonClick();
              },
              child: Container(
                height: AppData.defaultButtonHeight - 10,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: AppData.regularTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          color: AppData.darkBlueColor.withOpacity(.8)),
                    ),
                    Text(
                      "Signin!",
                      style: AppData.boldTextStyle.copyWith(
                        color: AppData.royalBlueColor,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
