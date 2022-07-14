import 'package:get/get.dart';
import 'package:iubrsa/app/views/profile/controller/profile_screen_controller.dart';

class ProfileScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => ProfileScreenController(),
    );
  }
}
