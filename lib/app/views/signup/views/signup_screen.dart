import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/views/signup/controller/signup_screen_controller.dart';
import 'package:iubrsa/app/shared/widgets/custom_back_button.dart';
import 'package:iubrsa/app/shared/widgets/custom_button.dart';

import '../../../../data/constants/app_data.dart';
import '../widgets/signup_form.dart';
import '../widgets/signup_social_media_buttons.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final SignupScreenController controller = Get.find();

  @override
  void dispose() {
    Get.delete<SignupScreenController>();
    super.dispose();
  }

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
                  padding: AppData.defaultPadding,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Hello there!",
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
                            "Please crate an account\nto continue using the app..",
                            style: AppData.lightTextStyle.copyWith(
                              color: AppData.customDarkGrey,
                              height: 1,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SignupForm(),
                          const SizedBox(
                            height: 15,
                          ),
                          CustomButton(
                            title: "Next",
                            callBackFunction: () {
                              controller.onNextButtonClick();
                            },
                            isLoading: false,
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          SignupSocialMediaButtons()
                        ],
                      )
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
                      style: AppData.lightTextStyle.copyWith(
                        color: AppData.darkBlueColor.withOpacity(.8),
                      ),
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
