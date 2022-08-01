import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/constants/app_data.dart';
import '../../../shared/widgets/google_map.dart';
import '../controller/homeframe_controller.dart';

class ActiveRidesAroundYouTab extends StatelessWidget {
  ActiveRidesAroundYouTab({
    Key? key,
  }) : super(key: key);

  final HomeframController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppData.defaultPadding,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Active rides',
                    style: AppData.regularTextStyle,
                  ),
                  Text(
                    'Around you',
                    style: AppData.boldTextStyle
                        .copyWith(fontSize: 20, height: .95),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  controller.openGoogleMapsScreen();
                },
                child: Text(
                  'view full map',
                  style: AppData.regularTextStyle.copyWith(
                    color: Colors.blue.withOpacity(.5),
                    fontWeight: FontWeight.bold,
                  ),
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
              borderRadius: BorderRadius.circular(AppData.defaultBorderRadius),
            ),
            child: GetGoogleMaps(),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: AppData.royalBlueColor,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: const Icon(
                  Icons.location_pin,
                  color: AppData.customWhite,
                  size: 20,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              const Text(
                'Bily Road,',
                style: AppData.boldTextStyle,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'Bangladesh',
                style: AppData.regularTextStyle.copyWith(
                  color: AppData.customDarkGrey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
