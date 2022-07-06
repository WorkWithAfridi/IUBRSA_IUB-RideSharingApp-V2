import 'package:get/get.dart';
import 'package:iubrsa/app/controllers/network_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NetworkController());
  }
}
