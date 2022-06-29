import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/routes/app_routes.dart';

class HomeframController extends GetxController {
  var pageIndex = 0.obs;
  var pageController = PageController().obs;
  onProfileImageClick() {
    Get.toNamed(ROUTES.getProfileScreenRoute);
  }
}
