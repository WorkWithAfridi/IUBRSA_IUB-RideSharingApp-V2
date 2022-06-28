import 'package:get/get.dart';
import 'package:iubrsa/app/routes/app_routes.dart';

class SigninScreenController extends GetxController {
  onRegisterNowButtonClick() {
    Get.toNamed(ROUTES.getSignupScreenRoute);
  }
}
