import 'package:get/get.dart';
import 'package:iubrsa/app/controllers/trip_details_screen_controller.dart';

class TripDetailsScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TripDetailsScreenController());
  }
}
