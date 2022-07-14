import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../data/constants/app_data.dart';
import '../controller/homeframe_controller.dart';

class ActiveTripsTab extends StatelessWidget {
  ActiveTripsTab({
    Key? key,
  }) : super(key: key);

  final HomeframController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: AppData.defaultPadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Active trips',
                style: AppData.boldTextStyle.copyWith(
                  fontSize: 20,
                  height: .95,
                ),
              ),
              GestureDetector(
                onTap: () {
                  controller.openGoogleMapsScreen();
                },
                child: Text(
                  'view on map',
                  style: AppData.regularTextStyle.copyWith(
                    color: Colors.blue.withOpacity(.5),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  controller.showActiveTrips("To");
                },
                child: Container(
                  height: 180,
                  width: Get.width / 2,
                  decoration: BoxDecoration(
                    color: AppData.babyBlueColor,
                    borderRadius:
                        BorderRadius.circular(AppData.defaultBorderRadius),
                  ),
                  padding: AppData.defaultPadding,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: SvgPicture.asset(
                          'assets/svgs/classroom.svg',
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'To',
                        style: AppData.regularTextStyle,
                      ),
                      Text(
                        'Independent\nUniversity\nBangladesh',
                        style: AppData.boldTextStyle.copyWith(
                          fontSize: 15,
                          height: .95,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  controller.showActiveTrips("From");
                },
                child: Container(
                  height: 180,
                  width: Get.width / 2,
                  decoration: BoxDecoration(
                    color: AppData.creamColor,
                    borderRadius:
                        BorderRadius.circular(AppData.defaultBorderRadius),
                  ),
                  padding: AppData.defaultPadding,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: SvgPicture.asset(
                          'assets/svgs/home.svg',
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'From',
                        style: AppData.regularTextStyle,
                      ),
                      Text(
                        'Independent\nUniversity\nBangladesh',
                        style: AppData.boldTextStyle.copyWith(
                          fontSize: 15,
                          height: .95,
                        ),
                      ),
                    ],
                  ),
                ),
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
