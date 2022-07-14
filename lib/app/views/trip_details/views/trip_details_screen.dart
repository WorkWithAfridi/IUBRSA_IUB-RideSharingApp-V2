import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/views/trip_details/controller/trip_details_screen_controller.dart';
import 'package:iubrsa/app/shared/widgets/custom_button.dart';

import '../../../../data/constants/app_data.dart';
import '../../../shared/widgets/custom_back_button.dart';
import '../../../shared/widgets/google_map.dart';

class TripDetailsScreen extends StatefulWidget {
  const TripDetailsScreen({Key? key}) : super(key: key);

  @override
  State<TripDetailsScreen> createState() => _TripDetailsScreenState();
}

class _TripDetailsScreenState extends State<TripDetailsScreen> {
  final TripDetailsScreenController controller = Get.find();

  @override
  void dispose() {
    Get.delete<TripDetailsScreenController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ride details",
          style: AppData.boldTextStyle.copyWith(
            color: AppData.darkBlueColor,
          ),
        ),
        leading: GetBackButton(),
        actions: [
          IconButton(
            onPressed: () {
              controller.onOptionButtonClick();
            },
            icon: const Icon(
              Icons.more_vert,
              color: AppData.darkBlueColor,
              size: 18,
            ),
          )
        ],
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: AppData.defaultPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: Get.width / 4,
                          width: Get.width / 4,
                          decoration: BoxDecoration(
                            color: AppData.royalBlueColor,
                            borderRadius: BorderRadius.circular(Get.width / 4),
                          ),
                        ),
                        Container(
                          height: (Get.width / 4) - 5,
                          width: (Get.width / 4) - 5,
                          decoration: BoxDecoration(
                            color: AppData.royalBlueColor,
                            borderRadius:
                                BorderRadius.circular((Get.width / 4) - 5),
                          ),
                          child: Hero(
                            tag: 1,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular((Get.width / 4) - 5),
                              child: Image.network(
                                  'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Khondakar Afridi',
                            style: AppData.boldTextStyle
                                .copyWith(fontSize: 20, height: .95),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'is travelling from',
                            style:
                                AppData.regularTextStyle.copyWith(height: .95),
                          ),
                          Text(
                            'Baily Road',
                            style: AppData.boldTextStyle
                                .copyWith(fontSize: 20, height: .95),
                          ),
                          Text(
                            'to',
                            style: AppData.regularTextStyle.copyWith(height: 1),
                          ),
                          Text(
                            'Independent University Bangladesh',
                            style: AppData.boldTextStyle
                                .copyWith(fontSize: 20, height: .95),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: Get.height / 3,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppData.defaultBorderRadius),
                  ),
                  child: GetGoogleMaps(
                    showAnimationAndBounceBetweenTwoPoints: true,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Route description',
                  style: AppData.boldTextStyle,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.',
                  style: AppData.lightTextStyle.copyWith(height: 1),
                ),
                const SizedBox(
                  height: 10,
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
                          style: AppData.lightTextStyle,
                        ),
                      ],
                    ),
                    Text(
                      "4",
                      style: AppData.boldTextStyle,
                    ),
                  ],
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
                          'Ride starting/ started at',
                          style: AppData.lightTextStyle,
                        ),
                      ],
                    ),
                    Text(
                      "4:00 PM",
                      style: AppData.boldTextStyle,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Fare',
                      style: AppData.boldTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "120 Tk",
                          style: AppData.boldTextStyle.copyWith(
                            fontSize: 15,
                            color: AppData.royalBlueColor,
                          ),
                        ),
                        Text(
                          " /seat",
                          style: AppData.lightTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Transport Vehicle Type',
                      style: AppData.boldTextStyle,
                    ),
                    Text(
                      "Car",
                      style: AppData.boldTextStyle,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Vehicle Registration Id',
                      style: AppData.boldTextStyle,
                    ),
                    Text(
                      "ABCD123XY",
                      style: AppData.boldTextStyle,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Obx(
                  () => controller.rideBooked.value
                      ? Row(
                          children: [
                            Expanded(
                              child: CustomButton(
                                title: "Cancel seat",
                                callBackFunction: () {
                                  controller.onCancelSeatButtonClick();
                                },
                                isLoading:
                                    controller.isCancelSeatButtonLoading.value,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: AppData.defaultButtonHeight,
                              width: AppData.defaultButtonHeight,
                              decoration: BoxDecoration(
                                color: AppData.royalBlueColor,
                                borderRadius: BorderRadius.circular(
                                  AppData.defaultButtonHeight,
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.message,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.onCallButtonClick();
                              },
                              child: Container(
                                height: AppData.defaultButtonHeight,
                                width: AppData.defaultButtonHeight,
                                decoration: BoxDecoration(
                                  color: AppData.royalBlueColor,
                                  borderRadius: BorderRadius.circular(
                                    AppData.defaultButtonHeight,
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.call,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        )
                      : CustomButton(
                          title: "Book a seat",
                          callBackFunction: () {
                            controller.onBookASeatButtonClick();
                          },
                          isLoading: controller.isbookASeatButtonLoading.value,
                        ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
