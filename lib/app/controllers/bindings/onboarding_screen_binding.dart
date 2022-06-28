import 'package:get/get.dart';

import '../onboarding_screen_controller.dart';

class OnboardingScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => OnboardingScreenController(),
    );
  }
}
