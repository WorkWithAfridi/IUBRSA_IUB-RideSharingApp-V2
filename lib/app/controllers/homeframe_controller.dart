import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/routes/app_routes.dart';
import 'package:iubrsa/app/views/active_trips_screen.dart';

class HomeframController extends GetxController {
  var pageIndex = 0.obs;
  var pageController = PageController().obs;
  var selectedActiveTripFilter = "Latest".obs;

  onProfileImageClick() {
    Get.toNamed(ROUTES.getProfileScreenRoute);
  }

  showActiveTrips(String mode) {
    Get.to(
      () => ActiveTripsScreen(mode: mode),
      transition: Transition.rightToLeft,
      curve: Curves.easeInOut,
    );
  }
}
