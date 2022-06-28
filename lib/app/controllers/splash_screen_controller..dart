import 'package:get/get.dart';
import 'package:iubrsa/app/routes/app_routes.dart';
import 'package:iubrsa/data/constants/app_data.dart';

class SplashScreenController extends GetxController {
  triggerSplashScreen() async {
    await Future.delayed(AppData.waitTime);
    Get.offNamed(ROUTES.getOnboardingScreenRoute);
  }
}
