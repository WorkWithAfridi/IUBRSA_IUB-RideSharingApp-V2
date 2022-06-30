import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/controllers/register_a_trip_screen_controller.dart';
import 'package:iubrsa/app/widgets/customBackButton.dart';
import 'package:iubrsa/app/widgets/customButton.dart';
import 'package:iubrsa/app/widgets/customDivider.dart';
import 'package:iubrsa/app/widgets/customTextField.dart';

import '../../data/constants/app_data.dart';

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
                    SizedBox(
                      height: Get.height / 4,
                      width: double.maxFinite,
                      child: SvgPicture.asset(
                        'assets/svgs/starman.svg',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
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
                    const Text(
                      'Routes and destination',
                      style: AppData.boldTextStyle,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            height: 15,
                                            width: 15,
                                            decoration: BoxDecoration(
                                              color: AppData.darkBlueColor,
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                          Container(
                                            height: 5,
                                            width: 5,
                                            decoration: BoxDecoration(
                                              color: AppData.customWhite,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 62,
                                            width: 2,
                                            color: AppData.darkBlueColor,
                                          ),
                                          const SizedBox(
                                            width: 1,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "From",
                                          style: AppData.regularTextStyle,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        CustomTextField(
                                          TEC: TextEditingController(),
                                          hint: "Enter your location...",
                                          textInputType: TextInputType.text,
                                          maxLines: 1,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Container(
                                    height: 10,
                                    width: 2,
                                    color: AppData.darkBlueColor,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        height: 15,
                                        width: 15,
                                        decoration: BoxDecoration(
                                          color: AppData.darkBlueColor,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                      ),
                                      Container(
                                        height: 5,
                                        width: 5,
                                        decoration: BoxDecoration(
                                          color: AppData.customWhite,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "To",
                                          style: AppData.regularTextStyle,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        CustomTextField(
                                          TEC: TextEditingController(),
                                          hint: "And where are you heading???",
                                          textInputType: TextInputType.text,
                                          maxLines: 1,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        IconButton(
                          icon: const RotatedBox(
                            quarterTurns: 1,
                            child: Icon(
                              FontAwesomeIcons.arrowRightArrowLeft,
                              size: 15,
                            ),
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35.0),
                      child: CustomDivider(),
                    ),
                    const Text(
                      'Transport Vehicle',
                      style: AppData.boldTextStyle,
                    ),
                  ],
                ),
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
                                color: controller.selectedTransportationVehicle
                                            .value ==
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
                                color: controller.selectedTransportationVehicle
                                            .value ==
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
                                color: controller.selectedTransportationVehicle
                                            .value ==
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
              Padding(
                padding: AppData.defaultPadding,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35.0),
                      child: CustomDivider(),
                    ),
                    const Text(
                      'Route description',
                      style: AppData.boldTextStyle,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomTextField(
                      TEC: TextEditingController(),
                      hint:
                          "Enter a brief description of the routes and inter sections you'll be taking.",
                      textInputType: TextInputType.text,
                      maxLines: 5,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35.0),
                      child: CustomDivider(),
                    ),
                    const Text(
                      'Seat and Time',
                      style: AppData.boldTextStyle,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: AppData.darkBlueColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Available seats',
                              style: AppData.regularTextStyle,
                            )
                          ],
                        ),
                        Obx(
                          () => Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  if (controller.numberOfSeatsAvailable.value >
                                      0) {
                                    controller.numberOfSeatsAvailable.value--;
                                  }
                                },
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(.2),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  alignment: Alignment.center,
                                  child: const Icon(
                                    FontAwesomeIcons.minus,
                                    size: 12,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  controller.numberOfSeatsAvailable.value
                                      .toString(),
                                  style: AppData.boldTextStyle.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                onTap: () {
                                  controller.numberOfSeatsAvailable.value++;
                                },
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(.2),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  alignment: Alignment.center,
                                  child: const Icon(
                                    FontAwesomeIcons.plus,
                                    size: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Schedule Time',
                              style: AppData.regularTextStyle,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 30,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'now',
                                style: AppData.boldTextStyle.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(.2),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              alignment: Alignment.center,
                              child: const Icon(
                                FontAwesomeIcons.clock,
                                size: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35.0),
                      child: CustomDivider(),
                    ),
                    const Text(
                      'Fare - if any!',
                      style: AppData.boldTextStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      TEC: TextEditingController(),
                      hint: "Enter fare for each seat...",
                      textInputType: TextInputType.number,
                      maxLines: 1,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35.0),
                      child: CustomDivider(),
                    ),
                    const Text(
                      'Vehicle registration number',
                      style: AppData.boldTextStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      TEC: TextEditingController(),
                      hint: "Enter vehicle registration/ license plate code...",
                      textInputType: TextInputType.number,
                      maxLines: 1,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "*Please be advised that your trip will automatically be dactivated after 2 hours!",
                      style: AppData.regularTextStyle.copyWith(
                          color: AppData.customLightGrey, height: .95),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    CustomButton(
                      title: "Register",
                      callBackFunction: () {},
                      isLoading: false,
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
