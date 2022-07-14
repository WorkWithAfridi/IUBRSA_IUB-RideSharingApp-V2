import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/views/splashscreen/controller/splash_screen_controller..dart';
import 'package:iubrsa/app/shared/widgets/app_icon.dart';
import 'package:iubrsa/data/constants/app_data.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SplashScreenController controller = Get.find();

  @override
  void initState() {
    super.initState();
    controller.triggerSplashScreen();
  }

  @override
  void dispose() {
    Get.delete<SplashScreenController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                controller.onSplashScreenRowButtonTap();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const AppIcon(
                    size: 40,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: Get.width / 8 - 20,
                    width: 0.5,
                    color: AppData.customDarkGrey,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppData.appName,
                        style: AppData.boldTextStyle.copyWith(fontSize: 18),
                      ),
                      Text(
                        "Powered by",
                        style: AppData.regularTextStyle.copyWith(
                          fontSize: 10,
                          height: 1,
                          color: AppData.customLightGrey,
                        ),
                      ),
                      Text(
                        "Independent University\nBangladesh.",
                        style: AppData.regularTextStyle.copyWith(
                          fontSize: 10,
                          height: .9,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: AppData.defaultButtonHeight - 10,
            alignment: Alignment.center,
            child: Text(
              "By Cypher90.",
              style: AppData.regularTextStyle.copyWith(
                fontSize: 10,
                height: 1,
                color: AppData.customLightGrey,
              ),
            ),
          )
        ],
      ),
    );
  }
}
