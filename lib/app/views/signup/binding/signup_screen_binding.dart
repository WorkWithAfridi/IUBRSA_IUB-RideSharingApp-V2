import 'package:get/get.dart';
import 'package:iubrsa/app/views/signup/controller/signup_screen_controller.dart';

class SignupScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupScreenController());
  }
}
