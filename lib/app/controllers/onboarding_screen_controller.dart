import 'package:get/get.dart';
import 'package:iubrsa/app/routes/app_routes.dart';

class OnboardingScreenController extends GetxController {
  onSigninButtonClick() {
    print('d');
    Get.offNamed(ROUTES.getSigninScreenRoute);
  }
}
