import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/controllers/onboarding_screen_controller.dart';

import '../../data/constants/app_data.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final OnboardingScreenController controller = Get.find();

  @override
  void dispose() {
    Get.delete<OnboardingScreenController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "IUBRSA",
          style: AppData.boldTextStyle.copyWith(
            color: AppData.darkBlueColor,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 2,
            child: Container(
              margin: AppData.defaultPadding,
              child: SvgPicture.asset(
                'assets/svgs/jeep_offroad.svg',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              margin: AppData.defaultPadding,
              width: Get.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Some 2 line\n5 word long title",
                        style: AppData.boldTextStyle.copyWith(
                          fontSize: 25,
                          height: .95,
                          color: AppData.darkBlueColor.withOpacity(
                            .85,
                          ),
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: AppData.defaultPadding,
                        child: Text(
                          'Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis.',
                          style: AppData.regularTextStyle.copyWith(
                            color: AppData.darkBlueColor.withOpacity(.6),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: AppData.defaultPadding,
                    width: Get.width,
                    height: AppData.defaultButtonHeight,
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: AppData.royalBlueColor,
                      borderRadius:
                          BorderRadius.circular(AppData.defaultBorderRadius),
                    ),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppData.customWhite,
                              borderRadius: BorderRadius.circular(
                                AppData.defaultBorderRadius,
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'Register',
                              style: AppData.boldTextStyle.copyWith(
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: GestureDetector(
                            onTap: () {
                              controller.onSigninButtonClick();
                            },
                            child: Container(
                              alignment: Alignment.center,
                              color: Colors.transparent,
                              child: Text(
                                'Sign In',
                                style: AppData.boldTextStyle.copyWith(
                                  color: AppData.customWhite,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
