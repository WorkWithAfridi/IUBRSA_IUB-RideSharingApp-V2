
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/widgets/custom_text_field.dart';
import '../controller/signup_screen_controller.dart';

class SignupForm extends StatelessWidget {
  SignupForm({
    Key? key,
  }) : super(key: key);

  final SignupScreenController controller=Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          TEC: controller
              .usernameTextEditingController.value,
          hint: "Enter username...",
          textInputType: TextInputType.emailAddress,
          maxLines: 1,
        ),
        const SizedBox(
          height: 10,
        ),
        CustomTextField(
          TEC:
              controller.emailTextEditingController.value,
          hint: "Enter email address...",
          textInputType: TextInputType.emailAddress,
          maxLines: 1,
        ),
        const SizedBox(
          height: 10,
        ),
        CustomTextField(
          TEC:
              controller.phoneTextEditingController.value,
          hint: "Enter phone number...",
          textInputType: TextInputType.emailAddress,
          maxLines: 1,
        ),
        const SizedBox(
          height: 10,
        ),
        CustomTextField(
          TEC: controller
              .studentIdTextEditingController.value,
          hint: "Enter student id...",
          textInputType: TextInputType.emailAddress,
          maxLines: 1,
        ),
        const SizedBox(
          height: 10,
        ),
        CustomTextField(
          TEC: controller
              .passwordTextEditingController.value,
          hint: "Password...",
          textInputType: TextInputType.emailAddress,
          maxLines: 1,
          isPassword: true,
        ),
      ],
    );
  }
}
