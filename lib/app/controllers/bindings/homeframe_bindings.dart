import 'package:get/get.dart';
import 'package:iubrsa/app/controllers/homeframe_controller.dart';

class HomeframeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeframController());
  }
}
