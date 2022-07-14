import 'package:get/get.dart';
import 'package:iubrsa/app/shared/controllers/network_controller.dart';
import 'package:iubrsa/app/routes/app_routes.dart';
import 'package:iubrsa/data/constants/app_data.dart';
import 'package:iubrsa/data/services/url_launcher_services.dart';

class SplashScreenController extends GetxController {
  var count = 0.obs;
  final NetworkController networkController = Get.find();
  triggerSplashScreen() async {
    await Future.delayed(AppData.waitTime);
    await networkController.checkConnectivity();
    if (networkController.connectionStatus != "NoConnection") {
      Get.offNamed(ROUTES.getOnboardingScreenRoute);
    }
  }

  onSplashScreenRowButtonTap() {
    if (count < 5) {
      count++;
    } else {
      UrlLauncherServices.openInBrowser(
        Uri.parse("https://sites.google.com/view/workwithafridi"),
      );
    }
  }
}
