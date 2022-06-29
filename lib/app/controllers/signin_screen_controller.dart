import 'package:get/get.dart';
import 'package:iubrsa/app/routes/app_routes.dart';
import 'package:iubrsa/data/constants/app_data.dart';

class SigninScreenController extends GetxController {
  var isSignInButtonLoading = false.obs;

  onRegisterNowButtonClick() {
    Get.toNamed(ROUTES.getSignupScreenRoute);
  }

  onSignInButtonClick() async {
    isSignInButtonLoading.value = true;
    await Future.delayed(AppData.waitTime);
    isSignInButtonLoading.value = false;
    Get.offAllNamed(ROUTES.getHomeframeRoute);
  }
}
