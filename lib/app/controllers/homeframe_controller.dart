import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/routes/app_routes.dart';
import 'package:iubrsa/app/views/active_trips_screen.dart';

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

  // Future<void> onHomeframeFloatingActionButtonClick() {
  //   return showDialog(
  //     context: Get.context!,
  //     barrierColor: Colors.black54,
  //     builder: (context) {
  //       return SimpleDialog(
  //         elevation: 6,
  //         backgroundColor: AppData.customWhite,
  //         title: GestureDetector(
  //           onTap: () {},
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Text(
  //                 AppData.appName,
  //                 style: AppData.regularTextStyle,
  //               ),
  //               const Text(
  //                 'Select an image source',
  //                 style: AppData.boldTextStyle,
  //               ),
  //             ],
  //           ),
  //         ),
  //         children: [
  //           SimpleDialogOption(
  //             padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
  //             child: Row(
  //               children: const [
  //                 Icon(
  //                   Icons.camera,
  //                   size: 20,
  //                 ),
  //                 SizedBox(
  //                   width: 10,
  //                 ),
  //                 Text(
  //                   'Take a picture',
  //                   style: AppData.regularTextStyle,
  //                 ),
  //               ],
  //             ),
  //             onPressed: () async {
  //               // var selectedImage =
  //               //     await ImageServices().pickImage(ImageSource.camera);
  //               // if (selectedImage != null) {
  //               //   signupProfileImage = selectedImage;
  //               //   Get.back();
  //               //   return;
  //               // }
  //             },
  //           ),
  //           SimpleDialogOption(
  //             padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
  //             child: Row(
  //               children: const [
  //                 Icon(
  //                   Icons.browse_gallery,
  //                   size: 20,
  //                 ),
  //                 SizedBox(
  //                   width: 10,
  //                 ),
  //                 Text(
  //                   'Select from gallery',
  //                   style: AppData.regularTextStyle,
  //                 ),
  //               ],
  //             ),
  //             onPressed: () async {
  //               // var selectedImage =
  //               //     await ImageServices().pickImage(ImageSource.gallery);
  //               // if (selectedImage != null) {
  //               //   signupProfileImage = selectedImage;
  //               //   Get.back();
  //               //   return;
  //               // }
  //             },
  //           ),
  //           SimpleDialogOption(
  //             padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
  //             child: Row(
  //               children: [
  //                 const Icon(
  //                   Icons.close,
  //                   size: 20,
  //                   color: AppData.customRed,
  //                 ),
  //                 const SizedBox(
  //                   width: 10,
  //                 ),
  //                 Text(
  //                   'Close',
  //                   style: AppData.regularTextStyle.copyWith(
  //                     color: AppData.customRed,
  //                   ),
  //                 ),
  //               ],
  //             ),
  //             onPressed: () async {
  //               Get.back();
  //               return;
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  onHomeframeFloatingActionButtonClick() {
    Get.toNamed(ROUTES.getRegisterATripScreenRoute);
  }
}
