import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/views/signup/controller/signup_screen_controller.dart';
import 'package:iubrsa/app/shared/widgets/custom_back_button.dart';
import 'package:iubrsa/app/shared/widgets/custom_text_field.dart';

import '../../../../data/constants/app_data.dart';
import '../../../shared/widgets/custom_button.dart';

class SignupOTPScreen extends StatefulWidget {
  const SignupOTPScreen({Key? key}) : super(key: key);

  @override
  State<SignupOTPScreen> createState() => _SignupOTPScreenState();
}

class _SignupOTPScreenState extends State<SignupOTPScreen> {
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
        child: Padding(
          padding: AppData.defaultPadding,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                "Account\nVerification",
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
              const Text(
                "Please check your SMS messages.\nWe've sent you a SMS with a verification CODE on it, to verify your account. :)",
                style: AppData.regularTextStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                TEC: TextEditingController(),
                hint: "Enter OTP code...",
                textInputType: TextInputType.text,
                maxLines: 1,
              ),
              const SizedBox(
                height: 15,
              ),
              Obx(
                () => CustomButton(
                  title: "Confirm",
                  callBackFunction: () {
                    controller.onConfirmOTPCodeButtonClick();
                  },
                  isLoading: controller.isConfirmOTPCodeButtonLoading.value,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
