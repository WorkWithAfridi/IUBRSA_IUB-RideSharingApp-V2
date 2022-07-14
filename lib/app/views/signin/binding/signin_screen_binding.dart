import 'package:get/get.dart';
import 'package:iubrsa/app/views/signin/controller/signin_screen_controller.dart';

class SigninScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SigninScreenController());
  }
}
