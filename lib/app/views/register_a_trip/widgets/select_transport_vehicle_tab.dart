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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              VehicleTypeSelectionChip(
                type: "Car",
              ),
              const SizedBox(
                width: 10,
              ),
              VehicleTypeSelectionChip(
                type: "Bike",
              ),
              const SizedBox(
                width: 10,
              ),
              VehicleTypeSelectionChip(
                type: "Auto - CNG",
              ),
              const SizedBox(
                width: 10,
              ),
              VehicleTypeSelectionChip(
                type: "Uber",
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class VehicleTypeSelectionChip extends StatelessWidget {
  VehicleTypeSelectionChip({Key? key, required this.type}) : super(key: key);

  final RegisterATripScreenController controller = Get.find();
  final String type;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.selectedTransportationVehicle.value = type;
      },
      child: Obx(() => Chip(
            label: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                type,
                style: AppData.regularTextStyle.copyWith(
                  color: controller.selectedTransportationVehicle.value == type
                      ? AppData.customWhite
                      : AppData.darkBlueColor,
                ),
              ),
            ),
            backgroundColor:
                controller.selectedTransportationVehicle.value == type
                    ? AppData.royalBlueColor
                    : AppData.scaffoldBackgroundColor,
          )),
    );
  }
}
