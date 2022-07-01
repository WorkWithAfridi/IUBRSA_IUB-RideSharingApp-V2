import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/routes/app_routes.dart';
import 'package:iubrsa/app/views/recover_password.dart';
import 'package:iubrsa/app/widgets/show_custom_snackbar.dart';
import 'package:iubrsa/data/constants/app_data.dart';

class SigninScreenController extends GetxController {
  var isSignInButtonLoading = false.obs;
  var emailTextEditingController = TextEditingController().obs;
  var passwordTextEditingController = TextEditingController().obs;

  onRegisterNowButtonClick() {
    Get.toNamed(ROUTES.getSignupScreenRoute);
  }

  onSignInButtonClick() async {
    String email = emailTextEditingController.value.text;
    String password = passwordTextEditingController.value.text;
    if (email.isNotEmpty && password.isNotEmpty) {
      isSignInButtonLoading.value = true;
      await Future.delayed(AppData.waitTime);
      isSignInButtonLoading.value = false;
      Get.offAllNamed(ROUTES.getHomeframeRoute);
    } else {
      showCustomSnackbar(
        title: "Error signing in!",
        message:
            "User credentials cannot be left empty. Please fill them up and try again.",
        isError: true,
      );
    }
  }

  onRecoveryPasswordButtonClick() {
    Get.to(
      () => RecoverPasswordScreen(),
      transition: AppData.defaultTransition,
      curve: AppData.defaultAnimationCurve,
    );
  }
}
