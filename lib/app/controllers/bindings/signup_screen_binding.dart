import 'package:get/get.dart';
import 'package:iubrsa/app/controllers/signup_screen_controller.dart';

class SignupScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupScreenController());
  }
}
