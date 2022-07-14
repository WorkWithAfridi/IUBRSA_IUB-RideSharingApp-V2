import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../data/constants/app_data.dart';
import '../controller/register_a_trip_screen_controller.dart';

class SelectTransportVehicleTab extends StatelessWidget {
  SelectTransportVehicleTab({
    Key? key,
  }) : super(key: key);

  final RegisterATripScreenController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Transport Vehicle',
          style: AppData.boldTextStyle,
        ),
        const SizedBox(
          height: 10,
        ),
        Obx(
          () => Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  controller.selectedTransportationVehicle.value = "Car";
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 70,
                      padding: AppData.defaultPadding,
                      width: 90,
                      decoration: BoxDecoration(
                        color: AppData.customWhite,
                        borderRadius: BorderRadius.circular(
                          AppData.defaultBorderRadius,
                        ),
                        border: Border.all(
                          width: 1,
                          color:
                              controller.selectedTransportationVehicle.value ==
                                      "Car"
                                  ? AppData.darkBlueColor
                                  : AppData.customWhite,
                        ),
                      ),
                      child: SvgPicture.asset(
                        'assets/svgs/car_for_trip_registration.svg',
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text(
                      "Car",
                      style: AppData.regularTextStyle,
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  controller.selectedTransportationVehicle.value = "Auto";
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 70,
                      padding: AppData.defaultPadding,
                      width: 90,
                      decoration: BoxDecoration(
                        color: AppData.customWhite,
                        borderRadius: BorderRadius.circular(
                          AppData.defaultBorderRadius,
                        ),
                        border: Border.all(
                          width: 1,
                          color:
                              controller.selectedTransportationVehicle.value ==
                                      "Auto"
                                  ? AppData.darkBlueColor
                                  : AppData.customWhite,
                        ),
                      ),
                      child: SvgPicture.asset(
                        'assets/svgs/auto_rickshaw_for_trip_registration.svg',
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text(
                      "Auto",
                      style: AppData.regularTextStyle,
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  controller.selectedTransportationVehicle.value = "Bike";
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 70,
                      padding: AppData.defaultPadding,
                      width: 90,
                      decoration: BoxDecoration(
                        color: AppData.customWhite,
                        borderRadius: BorderRadius.circular(
                          AppData.defaultBorderRadius,
                        ),
                        border: Border.all(
                          width: 1,
                          color:
                              controller.selectedTransportationVehicle.value ==
                                      "Bike"
                                  ? AppData.darkBlueColor
                                  : AppData.customWhite,
                        ),
                      ),
                      child: SvgPicture.asset(
                        'assets/svgs/motorbike_for_trip_registration.svg',
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text(
                      "Bike",
                      style: AppData.regularTextStyle,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
