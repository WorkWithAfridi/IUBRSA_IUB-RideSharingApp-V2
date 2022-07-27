import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../data/constants/app_data.dart';
import '../../../shared/widgets/custom_text_field.dart';

class RouteAndDestinationForm extends StatelessWidget {
  const RouteAndDestinationForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  color: AppData.darkBlueColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              Container(
                                height: 5,
                                width: 5,
                                decoration: BoxDecoration(
                                  color: AppData.customWhite,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 62,
                                width: 2,
                                color: AppData.darkBlueColor,
                              ),
                              const SizedBox(
                                width: 1,
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "From",
                              style: AppData.regularTextStyle,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            CustomTextField(
                              TEC: TextEditingController(),
                              hint: "Enter your location...",
                              textInputType: TextInputType.text,
                              maxLines: 1,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 6,
                      ),
                      Container(
                        height: 10,
                        width: 2,
                        color: AppData.darkBlueColor,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              color: AppData.darkBlueColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                              color: AppData.customWhite,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "To",
                              style: AppData.regularTextStyle,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            CustomTextField(
                              TEC: TextEditingController(),
                              hint: "And where are you heading???",
                              textInputType: TextInputType.text,
                              maxLines: 1,
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
              width: 10,
            ),
            IconButton(
              icon: const RotatedBox(
                quarterTurns: 1,
                child: Icon(
                  FontAwesomeIcons.arrowRightArrowLeft,
                  size: 15,
                ),
              ),
              onPressed: () {},
            )
          ],
        ),
      ],
    );
  }
}
