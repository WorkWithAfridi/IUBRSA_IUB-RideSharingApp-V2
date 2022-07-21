import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:iubrsa/app/shared/widgets/custom_snackbar.dart';
import 'package:iubrsa/data/constants/app_data.dart';
import 'package:iubrsa/data/services/url_launcher_services.dart';
import 'package:location/location.dart';

class TripDetailsScreenController extends GetxController {
  var isbookASeatButtonLoading = false.obs;
  var isCancelSeatButtonLoading = false.obs;
  var rideBooked = false.obs;
  var riderLocation = LatLng(23.742153, 90.416721);
  var sourceLocation = LatLng(23.740899, 90.420447);
  var destinationLocation = LatLng(23.815554, 90.427955);
  LocationData? userLocation;
  Completer<GoogleMapController> mapController = Completer();

  List<LatLng> polylineCoordinates = [];

  var riderIcon = BitmapDescriptor.defaultMarker.obs;
  var userIcon = BitmapDescriptor.defaultMarker.obs;

  void setCustomMarkerIcon() {
    BitmapDescriptor.fromAssetImage(
            ImageConfiguration.empty, "assets/images/locationMarkerCar.png")
        .then((icon) {
      riderIcon.value = icon;
    });
    BitmapDescriptor.fromAssetImage(
            ImageConfiguration.empty, "assets/images/person.png")
        .then((icon) {
      userIcon.value = icon;
    });
  }

  void getPolyPointsForMapPath() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyAiWFnopqXMgRDf_K-aZLLEA5_LUprnUjY",
      PointLatLng(
        sourceLocation.latitude,
        sourceLocation.longitude,
      ),
      PointLatLng(
        destinationLocation.latitude,
        destinationLocation.longitude,
      ),
    );
    if (result.points.isNotEmpty) {
      result.points.forEach(
        (PointLatLng point) => polylineCoordinates.add(
          LatLng(
            point.latitude,
            point.longitude,
          ),
        ),
      );
      //Notify screen
    }
  }

  void getCurrentLocation() async {
    Location location = Location();
    location.getLocation().then(
      (location) {
        userLocation = location;
        update();
      },
    );
    GoogleMapController googleMapController = await mapController.future;

    // location.onLocationChanged.listen((newLocation) {
    //   googleMapController.animateCamera(
    //     CameraUpdate.newCameraPosition(
    //       CameraPosition(
    //         zoom: 16,
    //         target: LatLng(
    //           newLocation.latitude!,
    //           newLocation.longitude!,
    //         ),
    //       ),
    //     ),
    //   );
    //   userLocation = newLocation;
    //   update();
    // });
  }

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
