import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/views/home/controller/homeframe_controller.dart';

import '../../../../data/constants/app_data.dart';
import '../../../shared/widgets/google_map.dart';
import '../widgets/active_trips_tab.dart';
import '../widgets/services_tab.dart';
import '../widgets/shortcut.dart';
import '../widgets/shortcuts_tab.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);

  final HomeframController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: AppData.defaultPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Hi, Khondakar Afridi',
                  style: AppData.regularTextStyle.copyWith(height: 1),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Where are you heading\ntoday?',
                      style: AppData.boldTextStyle
                          .copyWith(fontSize: 20, height: .95),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: AppData.customLightGrey.withOpacity(.15),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(
                        Icons.search,
                        color: AppData.darkBlueColor,
                        size: 20,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
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
                    borderRadius:
                        BorderRadius.circular(AppData.defaultBorderRadius),
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
          ),
          const SizedBox(
            height: 20,
          ),
          ActiveTripsTab(),
          const SizedBox(
            height: 20,
          ),
          ShortcutsTab(),
          const SizedBox(
            height: 20,
          ),
          ServicesTab(),
        ],
      ),
    );
  }
}
