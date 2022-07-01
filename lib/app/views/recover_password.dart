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

class RecoverPasswordScreen extends StatefulWidget {
  const RecoverPasswordScreen({Key? key}) : super(key: key);

  @override
  State<RecoverPasswordScreen> createState() => _RecoverPasswordScreenState();
}

class _RecoverPasswordScreenState extends State<RecoverPasswordScreen> {
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
                "Password Recovery",
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
                "Please enter your registered email address\nand we'll send you an email with a link to reset your password.",
                style: AppData.regularTextStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                TEC: TextEditingController(),
                hint: "Enter registered email address...",
                textInputType: TextInputType.text,
                maxLines: 1,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomButton(
                title: "Confirm",
                callBackFunction: () {},
                isLoading: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
