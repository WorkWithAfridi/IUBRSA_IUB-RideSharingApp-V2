import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/controllers/notification_screen_controller.dart';

import '../../data/constants/app_data.dart';
import '../widgets/custom_back_button.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  void dispose() {
    Get.delete<NotificationScreenController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
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
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 90,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: AppData.customWhite,
                            borderRadius: BorderRadius.circular(
                              AppData.defaultBorderRadius,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: double.maxFinite,
                                width: 10,
                                decoration: const BoxDecoration(
                                  color: AppData.royalBlueColor,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                      AppData.defaultBorderRadius,
                                    ),
                                    bottomLeft: Radius.circular(
                                      AppData.defaultBorderRadius,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: AppData.defaultPadding,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'This is a title',
                                        style: AppData.boldTextStyle,
                                      ),
                                      Text(
                                        'Lorem ipsum dolor sit amet, Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non,consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros.',
                                        style: AppData.lightTextStyle.copyWith(
                                          height: .95,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
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
