import 'package:get/get.dart';
import 'package:iubrsa/app/views/register_a_trip/controller/register_a_trip_screen_controller.dart';

class RegisterATripScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterATripScreenController());
  }
}
