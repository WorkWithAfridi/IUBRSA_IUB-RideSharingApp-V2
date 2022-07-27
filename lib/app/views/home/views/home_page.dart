import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/views/home/controller/homeframe_controller.dart';

import '../../../../data/constants/app_data.dart';
import '../widgets/active_rides_around_you_tab.dart';
import '../widgets/active_trips_tab.dart';
import '../widgets/services_tab.dart';
import '../widgets/shortcuts_tab.dart';
import '../widgets/travelling_with_tab.dart';

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
                  height: 10,
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
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ActiveRidesAroundYouTab(),
          const SizedBox(
            height: 20,
          ),
          TravellingWithTab(),
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
