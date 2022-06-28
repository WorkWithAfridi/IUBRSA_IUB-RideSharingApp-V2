import 'package:get/get.dart';
import 'package:iubrsa/app/controllers/signin_screen_controller.dart';

class SigninScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SigninScreenController());
  }
}
