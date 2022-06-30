import 'package:get/get.dart';
import 'package:iubrsa/app/widgets/showCustomSnackbar.dart';
import 'package:iubrsa/data/constants/app_data.dart';

class RegisterATripScreenController extends GetxController {
  var selectedTransportationVehicle = "".obs;
  var numberOfSeatsAvailable = 0.obs;
  var isRegisterButtonLoading = false.obs;

  onRegisterButtonClick() async {
    isRegisterButtonLoading.value = true;
    await Future.delayed(AppData.waitTime);
    isRegisterButtonLoading.value = false;
    Get.back();
    showCustomSnackbar(
      title: "Registration successful",
      message: "Congratulations Afridi, your ride has been registered!",
      isCelebration: true,
    );
  }
}
