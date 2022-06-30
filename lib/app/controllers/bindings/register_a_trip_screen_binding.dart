import 'package:get/get.dart';
import 'package:iubrsa/app/controllers/register_a_trip_screen_controller.dart';

class RegisterATripScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterATripScreenController());
  }
}
