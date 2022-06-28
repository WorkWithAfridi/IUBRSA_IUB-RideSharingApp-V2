import 'package:get/get.dart';
import 'package:iubrsa/app/routes/app_routes.dart';

class SignupScreenController extends GetxController {
  onSigninButtonClick() {
    Get.offAllNamed(ROUTES.getSigninScreenRoute);
  }
}
