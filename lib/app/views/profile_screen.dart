// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/controllers/profile_screen_controller.dart';
import 'package:iubrsa/app/widgets/customBackButton.dart';
import 'package:iubrsa/app/widgets/profile_screen_settings_tile.dart';
import 'package:iubrsa/data/constants/app_data.dart';

import '../widgets/customDivider.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  ProfileScreenController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
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
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
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
                                  "Name",
                                  style: AppData.regularTextStyle.copyWith(
                                    color: AppData.customLightGrey,
                                    fontSize: 13,
                                    height: 1,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "Khondakar Afridi",
                                  style: AppData.boldTextStyle.copyWith(
                                    fontSize: 16,
                                    height: .95,
                                    color: AppData.darkBlueColor.withOpacity(
                                      .85,
                                    ),
                                    overflow: TextOverflow.clip,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "ID",
                                  style: AppData.regularTextStyle.copyWith(
                                    color: AppData.customLightGrey,
                                    fontSize: 13,
                                    height: 1,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "1820461",
                                  style: AppData.regularTextStyle.copyWith(
                                    color: AppData.customDarkGrey,
                                    fontSize: 13,
                                    height: .9,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.center,
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
                  height: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Settings",
                      style: AppData.boldTextStyle.copyWith(
                        fontSize: 20,
                        height: .95,
                        color: AppData.darkBlueColor.withOpacity(
                          .85,
                        ),
                        overflow: TextOverflow.clip,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SettingsTile(
                      title: "Account",
                      icon: Icons.person,
                      callBackFunction: () {},
                      color: Colors.blue,
                    ),
                    const CustomDivider(),
                    SettingsTile(
                      title: 'Chat',
                      icon: Icons.chat,
                      callBackFunction: () {},
                      color: Colors.orange,
                    ),
                    const CustomDivider(),
                    SettingsTile(
                      title: 'Storage',
                      icon: Icons.storage,
                      callBackFunction: () {},
                      color: Colors.blueAccent,
                    ),
                    const CustomDivider(),
                    SettingsTile(
                      title: 'Notification',
                      icon: Icons.notifications,
                      callBackFunction: () {},
                      color: Colors.amber,
                    ),
                    const CustomDivider(),
                    SettingsTile(
                      title: 'Application Information',
                      icon: Icons.trip_origin,
                      callBackFunction: () {},
                      color: Colors.pink,
                    ),
                    const CustomDivider(),
                    SettingsTile(
                      title: "Help Center",
                      icon: Icons.help_center,
                      callBackFunction: () {},
                      color: Colors.greenAccent,
                    ),
                    const CustomDivider(),
                    SettingsTile(
                      title: "Signout",
                      icon: Icons.logout,
                      callBackFunction: () {
                        controller.onSignOutButtonClick();
                      },
                      color: Colors.redAccent,
                    ),
                    const SizedBox(
                      height: 150,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
