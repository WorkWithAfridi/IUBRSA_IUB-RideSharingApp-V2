import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/controllers/network_controller.dart';
import 'package:iubrsa/app/routes/app_routes.dart';
import 'package:iubrsa/app/widgets/custom_button.dart';
import 'package:iubrsa/data/constants/app_data.dart';
import 'package:lottie/lottie.dart';

class NetworkWarningScreen extends StatelessWidget {
  NetworkWarningScreen({Key? key}) : super(key: key);

  final NetworkController networkController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          height: Get.height,
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LottieBuilder.asset(
                'assets/lottie_animations/404.json',
              ),
              Text(
                "Oh snap...",
                style: AppData.boldTextStyle.copyWith(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "There is a connection error.\nPlease check your internet connection and try again!",
                style: AppData.lightTextStyle.copyWith(
                  height: .95,
                  color: AppData.customDarkGrey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomButton(
                title: "Try again",
                callBackFunction: () {
                  networkController.checkConnectivity();
                  if (networkController.connectionStatus != "NoConnection") {
                    Get.offAllNamed(ROUTES.getSplashScreenRoute);
                  }
                },
                isLoading: false,
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
