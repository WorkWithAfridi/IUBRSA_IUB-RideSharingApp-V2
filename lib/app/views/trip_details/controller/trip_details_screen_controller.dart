import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/shared/widgets/custom_snackbar.dart';
import 'package:iubrsa/data/constants/app_data.dart';
import 'package:iubrsa/data/services/url_launcher_services.dart';

class TripDetailsScreenController extends GetxController {
  var isbookASeatButtonLoading = false.obs;
  var isCancelSeatButtonLoading = false.obs;
  var rideBooked = false.obs;
  onBookASeatButtonClick() async {
    isbookASeatButtonLoading.value = true;
    await Future.delayed(AppData.waitTime);
    isbookASeatButtonLoading.value = false;
    rideBooked.value = true;
    showCustomSnackbar(
      title: "Hey there!!",
      message:
          "You have successfully booked a seat on Khondakar Afridi's ride.",
    );
  }

  onCancelSeatButtonClick() async {
    isCancelSeatButtonLoading.value = true;
    await Future.delayed(AppData.waitTime);
    isCancelSeatButtonLoading.value = false;
    rideBooked.value = false;
  }

  onCallButtonClick() {
    UrlLauncherServices.makePhoneCall("01741499768");
  }

  Future<void> onOptionButtonClick() {
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
                  'Options',
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
                    Icons.share,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Share',
                    style: AppData.regularTextStyle,
                  ),
                ],
              ),
              onPressed: () async {},
            ),
            SimpleDialogOption(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                children: const [
                  Icon(
                    Icons.report,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Report user',
                    style: AppData.regularTextStyle,
                  ),
                ],
              ),
              onPressed: () async {},
            ),
            SimpleDialogOption(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                children: const [
                  Icon(
                    Icons.report,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Report trip',
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
                    Icons.block,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Block user',
                    style: AppData.regularTextStyle,
                  ),
                ],
              ),
              onPressed: () async {},
            ),
            SimpleDialogOption(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                children: [
                  const Icon(
                    Icons.close,
                    size: 20,
                    color: AppData.customRed,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Close',
                    style: AppData.regularTextStyle
                        .copyWith(color: AppData.customRed),
                  ),
                ],
              ),
              onPressed: () async {},
            ),
          ],
        );
      },
    );
  }
}
