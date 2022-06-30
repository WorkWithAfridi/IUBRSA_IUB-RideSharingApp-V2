import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/routes/app_routes.dart';
import 'package:iubrsa/app/views/active_trips_screen.dart';
import 'package:iubrsa/data/services/url_launcher_services.dart';

import '../../data/constants/app_data.dart';

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

  Future<void> onSoSButtonClick() {
    return showDialog(
      context: Get.context!,
      barrierColor: Colors.black54,
      builder: (context) {
        return SimpleDialog(
          elevation: 6,
          backgroundColor: AppData.customWhite,
          title: GestureDetector(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppData.appName,
                  style: AppData.regularTextStyle,
                ),
                const Text(
                  'EMERGENCY PROTOCOL',
                  style: AppData.boldTextStyle,
                ),
              ],
            ),
          ),
          children: [
            SimpleDialogOption(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                children: const [
                  Icon(
                    Icons.call,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Call 999',
                    style: AppData.regularTextStyle,
                  ),
                ],
              ),
              onPressed: () async {
                onSosCall999ButtonClick();
                Get.back();
              },
            ),
            SimpleDialogOption(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                children: const [
                  Icon(
                    Icons.browse_gallery,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Text emergency contacts',
                    style: AppData.regularTextStyle,
                  ),
                ],
              ),
              onPressed: () async {
                // var selectedImage =
                //     await ImageServices().pickImage(ImageSource.gallery);
                // if (selectedImage != null) {
                //   signupProfileImage = selectedImage;
                //   Get.back();
                //   return;
                // }
              },
            ),
            SimpleDialogOption(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                children: const [
                  Icon(
                    Icons.location_pin,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Broadcast coordinates',
                    style: AppData.regularTextStyle,
                  ),
                ],
              ),
              onPressed: () async {
                Get.back();
                return;
              },
            ),
            SimpleDialogOption(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                children: const [
                  Icon(
                    Icons.sos_rounded,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'All of the above',
                    style: AppData.regularTextStyle,
                  ),
                ],
              ),
              onPressed: () async {
                Get.back();
                return;
              },
            ),
          ],
        );
      },
    );
  }

  onHomeframeFloatingActionButtonClick() {
    Get.toNamed(ROUTES.getRegisterATripScreenRoute);
  }

  onSosCall999ButtonClick() {
    UrlLauncherServices.makePhoneCall("999");
  }
}
