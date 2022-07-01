import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/widgets/google_map.dart';

import '../../data/constants/app_data.dart';
import '../widgets/custom_back_button.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "IUBRSA Maps",
          style: AppData.boldTextStyle.copyWith(
            color: AppData.darkBlueColor,
          ),
        ),
        leading: GetBackButton(),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 20,
        ),
        child: GetGoogleMaps(
          isScrollable: true,
        ),
      ),
    );
  }
}
