import 'package:get/get.dart';
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
}
