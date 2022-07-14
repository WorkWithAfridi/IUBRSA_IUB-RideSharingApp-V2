
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/widgets/custom_text_field.dart';
import '../controller/signin_screen_controller.dart';

class SigninForm extends StatelessWidget {
  SigninForm({
    Key? key,
  }) : super(key: key);

  final SigninScreenController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
