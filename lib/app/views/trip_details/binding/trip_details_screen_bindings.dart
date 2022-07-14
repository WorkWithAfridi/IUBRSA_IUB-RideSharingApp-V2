import 'package:get/get.dart';
import 'package:iubrsa/app/views/trip_details/controller/trip_details_screen_controller.dart';

class TripDetailsScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TripDetailsScreenController());
  }
}
