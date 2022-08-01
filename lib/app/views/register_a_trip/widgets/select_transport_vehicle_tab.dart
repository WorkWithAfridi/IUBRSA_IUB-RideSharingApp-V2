import 'package:flutter/material.dart';
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
                    Chip(
                      label: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Car",
                          style: AppData.regularTextStyle.copyWith(
                            color: controller
                                        .selectedTransportationVehicle.value ==
                                    "Car"
                                ? AppData.customWhite
                                : AppData.darkBlueColor,
                          ),
                        ),
                      ),
                      backgroundColor:
                          controller.selectedTransportationVehicle.value ==
                                  "Car"
                              ? AppData.royalBlueColor
                              : AppData.customWhite,
                    ),
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
                    Chip(
                      label: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Bike",
                          style: AppData.regularTextStyle.copyWith(
                            color: controller
                                        .selectedTransportationVehicle.value ==
                                    "Bike"
                                ? AppData.customWhite
                                : AppData.darkBlueColor,
                          ),
                        ),
                      ),
                      backgroundColor:
                          controller.selectedTransportationVehicle.value ==
                                  "Bike"
                              ? AppData.royalBlueColor
                              : AppData.customWhite,
                    ),
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
                    Chip(
                      label: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Auto",
                          style: AppData.regularTextStyle.copyWith(
                            color: controller
                                        .selectedTransportationVehicle.value ==
                                    "Auto"
                                ? AppData.customWhite
                                : AppData.darkBlueColor,
                          ),
                        ),
                      ),
                      backgroundColor:
                          controller.selectedTransportationVehicle.value ==
                                  "Auto"
                              ? AppData.royalBlueColor
                              : AppData.customWhite,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  controller.selectedTransportationVehicle.value = "Uber";
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Chip(
                      label: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Uber",
                          style: AppData.regularTextStyle.copyWith(
                            color: controller
                                        .selectedTransportationVehicle.value ==
                                    "Uber"
                                ? AppData.customWhite
                                : AppData.darkBlueColor,
                          ),
                        ),
                      ),
                      backgroundColor:
                          controller.selectedTransportationVehicle.value ==
                                  "Uber"
                              ? AppData.royalBlueColor
                              : AppData.customWhite,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
