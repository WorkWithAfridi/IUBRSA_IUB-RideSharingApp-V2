import 'package:get/get.dart';
import 'package:iubrsa/app/routes/app_routes.dart';

class ProfileScreenController extends GetxController {
  onSignOutButtonClick() {
    Get.offAllNamed(ROUTES.getSigninScreenRoute);
  }
}
