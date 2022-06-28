import 'package:get/get.dart';
import 'package:iubrsa/app/routes/app_routes.dart';

class OnboardingScreenController extends GetxController {
  onSigninButtonClick() {
    Get.offNamed(ROUTES.getSigninScreenRoute);
  }

  onRegisterButtonClick() {
    Get.toNamed(ROUTES.getSignupScreenRoute);
  }
}
