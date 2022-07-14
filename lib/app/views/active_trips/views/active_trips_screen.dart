import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/views/home/controller/homeframe_controller.dart';
import 'package:iubrsa/app/routes/app_routes.dart';
import 'package:iubrsa/app/views/trip_details/views/trip_details_screen.dart';
import 'package:iubrsa/app/shared/widgets/google_map.dart';

import '../../../../data/constants/app_data.dart';
import '../../../shared/widgets/custom_back_button.dart';
import '../widgets/active_ride_card.dart';

class ActiveTripsScreen extends StatelessWidget {
  final String mode;
  ActiveTripsScreen({
    Key? key,
    required this.mode,
  }) : super(key: key);

  HomeframController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Active Trips",
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
          child: Padding(
            padding: AppData.defaultPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mode,
                  style: AppData.lightTextStyle,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  'Independent University\nBangladesh',
                  style: AppData.boldTextStyle.copyWith(
                    fontSize: 20,
                    height: .95,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: Get.height / 2,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppData.defaultBorderRadius),
                  ),
                  child: GetGoogleMaps(),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'Active Rides',
                  style: AppData.boldTextStyle.copyWith(
                    fontSize: 20,
                    height: .95,
                  ),
                ),
                Obx(
                  () => Row(
                    children: [
                      const SizedBox(
                        width: 2,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.selectedActiveTripFilter.value = "Latest";
                        },
                        child: Text(
                          "Latest",
                          style: AppData.lightTextStyle.copyWith(
                            fontWeight:
                                controller.selectedActiveTripFilter.value ==
                                        "Latest"
                                    ? FontWeight.w800
                                    : FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.selectedActiveTripFilter.value = "Closest";
                        },
                        child: Text(
                          "Closest",
                          style: AppData.lightTextStyle.copyWith(
                            fontWeight:
                                controller.selectedActiveTripFilter.value ==
                                        "Closest"
                                    ? FontWeight.w800
                                    : FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.selectedActiveTripFilter.value =
                              "Cheapest";
                        },
                        child: Text(
                          "Cheapest",
                          style: AppData.lightTextStyle.copyWith(
                            fontWeight:
                                controller.selectedActiveTripFilter.value ==
                                        "Cheapest"
                                    ? FontWeight.w800
                                    : FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return ActiveRideCard(mode: mode);
                  },
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
