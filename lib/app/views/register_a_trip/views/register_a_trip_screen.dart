import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/shared/widgets/custom_back_button.dart';
import 'package:iubrsa/app/shared/widgets/custom_button.dart';
import 'package:iubrsa/app/shared/widgets/custom_divider.dart';
import 'package:iubrsa/app/views/register_a_trip/controller/register_a_trip_screen_controller.dart';

import '../../../../data/constants/app_data.dart';
import '../widgets/fare_form.dart';
import '../widgets/route_and_destination_form.dart';
import '../widgets/route_description_form.dart';
import '../widgets/seat_and_time_tab.dart';
import '../widgets/select_transport_vehicle_tab.dart';
import '../widgets/vehicle_registration_number_form.dart';

class RegisterATripScreen extends StatefulWidget {
  const RegisterATripScreen({Key? key}) : super(key: key);

  @override
  State<RegisterATripScreen> createState() => _RegisterATripScreenState();
}

class _RegisterATripScreenState extends State<RegisterATripScreen> {
  final RegisterATripScreenController controller = Get.find();

  @override
  void dispose() {
    Get.delete<RegisterATripScreenController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Registering a new trip",
          style: AppData.boldTextStyle.copyWith(
            color: AppData.darkBlueColor,
          ),
        ),
        leading: GetBackButton(),
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Registration id',
                style: AppData.boldTextStyle,
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 10,
                  ),
                  child: BarcodeWidget(
                    barcode: Barcode.code128(),
                    data: "HelloWorld12345678901234567890",
                    color: AppData.darkBlueColor,
                    style: AppData.lightTextStyle.copyWith(
                      color: AppData.darkBlueColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: AppData.defaultPadding,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35.0),
                      child: CustomDivider(),
                    ),
                    RouteAndDestinationForm(),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35.0),
                      child: CustomDivider(),
                    ),
                  ],
                ),
              ),
              SelectTransportVehicleTab(),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 55.0),
                child: CustomDivider(),
              ),
              Padding(
                padding: AppData.defaultPadding,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const RouteDescriptionForm(),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35.0),
                      child: CustomDivider(),
                    ),
                    SeatAndTimeTab(),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35.0),
                      child: CustomDivider(),
                    ),
                    const FareForm(),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35.0),
                      child: CustomDivider(),
                    ),
                    const VehicleRegistrationNumberForm(),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "* ",
                          style: AppData.lightTextStyle.copyWith(
                            color: AppData.customLightGrey,
                            height: .95,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Please be advised that your trip will automatically be dactivated after 2 hours!",
                            style: AppData.lightTextStyle.copyWith(
                              color: AppData.customLightGrey,
                              height: .95,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Obx(
                      () => CustomButton(
                        title: "Register",
                        callBackFunction: () {
                          controller.onRegisterButtonClick();
                        },
                        isLoading: controller.isRegisterButtonLoading.value,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
