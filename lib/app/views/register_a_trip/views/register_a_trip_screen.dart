import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/views/register_a_trip/controller/register_a_trip_screen_controller.dart';
import 'package:iubrsa/app/shared/widgets/custom_back_button.dart';
import 'package:iubrsa/app/shared/widgets/custom_button.dart';
import 'package:iubrsa/app/shared/widgets/custom_divider.dart';
import 'package:iubrsa/app/shared/widgets/custom_text_field.dart';

import '../../../../data/constants/app_data.dart';
import '../widgets/fare_form.dart';
import '../widgets/route_and_destination_form.dart';
import '../widgets/route_description_form.dart';
import '../widgets/seat_and_time_tab.dart';
import '../widgets/select_transport_vehicle_tab.dart';
import '../widgets/vehicle_registration_number_form.dart';

class RegisterATripScreen extends StatefulWidget {
  RegisterATripScreen({Key? key}) : super(key: key);

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
              Padding(
                padding: AppData.defaultPadding,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // SizedBox(
                    //   height: Get.height / 4,
                    //   width: double.maxFinite,
                    //   child: SvgPicture.asset(
                    //     'assets/svgs/starman.svg',
                    //   ),
                    // ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    Text(
                      "Please fill up the following form\nto register a new trip! :)",
                      style: AppData.lightTextStyle.copyWith(
                        color: AppData.customDarkGrey,
                        height: .95,
                        fontSize: 13,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    RouteAndDestinationForm(),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
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
                    RouteDescriptionForm(),
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
                    FareForm(),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35.0),
                      child: CustomDivider(),
                    ),
                    VehicleRegistrationNumberForm(),
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
                      height: 5,
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
