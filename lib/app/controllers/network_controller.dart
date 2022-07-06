import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/views/warning_screen.dart';
import 'package:iubrsa/app/widgets/show_custom_snackbar.dart';
import 'package:iubrsa/data/constants/app_data.dart';

class NetworkController extends GetxController {
  var connectionStatus = "NoConnection".obs;
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  @override
  void onInit() {
    // checkConnectivity();
    super.onInit();
  }

  Future<void> checkConnectivity() async {
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
    ConnectivityResult? connectivityResult;
    try {
      connectivityResult = await _connectivity.checkConnectivity();
    } on PlatformException catch (err) {
      print(err.toString());
    }

    return _updateConnectionStatus(connectivityResult);
  }

  _updateConnectionStatus(ConnectivityResult? connectivityResult) {
    switch (connectivityResult) {
      case ConnectivityResult.wifi:
        connectionStatus.value = "Wifi";
        break;
      case ConnectivityResult.mobile:
        connectionStatus.value = "Mobile Data";
        break;
      case ConnectivityResult.none:
        connectionStatus.value = "NoConnection";
        _promptNoInternetConnectionWarning();
        break;
      default:
        connectionStatus.value = "NoConnection";
        _promptNoInternetConnectionWarning();
        break;
    }
  }

  _promptNoInternetConnectionWarning() {
    Get.offAll(
      () => NetworkWarningScreen(),
      transition: AppData.defaultTransition,
      curve: AppData.defaultAnimationCurve,
    );
  }

  @override
  void onClose() {
    _connectivitySubscription.cancel();
    super.onClose();
  }
}
