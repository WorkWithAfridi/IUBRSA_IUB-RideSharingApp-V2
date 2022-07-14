import 'package:get/get.dart';
import 'package:iubrsa/app/views/notification/controller/notification_screen_controller.dart';

class NotificationScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationScreenController());
  }
}
