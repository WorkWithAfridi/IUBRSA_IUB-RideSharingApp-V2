import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/constants/app_data.dart';

class PastTrips extends StatelessWidget {
  const PastTrips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      padding: AppData.defaultPadding,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5,
            ),
            Text(
              'Hello again! ',
              style: AppData.regularTextStyle.copyWith(height: 1),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'All of your Tickets and trips\nhistory are stored here!',
              style: AppData.boldTextStyle.copyWith(fontSize: 20, height: .95),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // controller.selectedActiveTripFilter.value = "Latest";
                  },
                  child: Text(
                    "Latest",
                    style: AppData.lightTextStyle.copyWith(
                        fontWeight:
                            // controller.selectedActiveTripFilter.value ==
                            // "Latest"
                            // ?
                            FontWeight.w800
                        // : FontWeight.w500,
                        ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    // controller.selectedActiveTripFilter.value = "Closest";
                  },
                  child: Text(
                    "Cheapest",
                    style: AppData.lightTextStyle.copyWith(
                        // fontWeight:
                        //     controller.selectedActiveTripFilter.value ==
                        //             "Closest"
                        //         ? FontWeight.w800
                        //         : FontWeight.w500,
                        ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    // controller.selectedActiveTripFilter.value =
                    // "Cheapest";
                  },
                  child: Text(
                    "Longest",
                    style: AppData.lightTextStyle.copyWith(
                        // fontWeight:
                        //     controller.selectedActiveTripFilter.value ==
                        //             "Cheapest"
                        //         ? FontWeight.w800
                        //         : FontWeight.w500,
                        ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            ListView.builder(
              itemCount: 15,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: ((context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Container(
                    height: 100,
                    decoration: const BoxDecoration(
                      color: AppData.royalBlueColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                          AppData.defaultBorderRadius,
                        ),
                        bottomRight: Radius.circular(
                          AppData.defaultBorderRadius,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RotatedBox(
                                quarterTurns: 2,
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: const BoxDecoration(
                                    color: AppData.scaffoldBackgroundColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                        10,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: LayoutBuilder(
                                  builder: ((context, constraints) {
                                    return Flex(
                                      direction: Axis.vertical,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                        (constraints.constrainWidth() / 1)
                                            .floor(),
                                        (index) => const SizedBox(
                                          width: 2,
                                          height: 3,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              color: AppData
                                                  .scaffoldBackgroundColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              ),
                              RotatedBox(
                                quarterTurns: 4,
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: const BoxDecoration(
                                    color: AppData.scaffoldBackgroundColor,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(
                                        10,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(15),
                            child: Row(
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 50,
                                        child: BarcodeWidget(
                                          barcode: Barcode.code128(),
                                          data: "HelloWorld123",
                                          color: AppData.customWhite,
                                          style:
                                              AppData.lightTextStyle.copyWith(
                                            color: AppData.customWhite,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "FROM:",
                                            style: AppData.regularTextStyle
                                                .copyWith(
                                              color: AppData.customWhite,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Expanded(
                                            child: Text(
                                              "Independent University Bangladesh",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: AppData.boldTextStyle
                                                  .copyWith(
                                                color: AppData.customWhite,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "TO:",
                                              style: AppData.regularTextStyle
                                                  .copyWith(
                                                color: AppData.customWhite,
                                              ),
                                            ),
                                            Text(
                                              "Baily Road",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: AppData.boldTextStyle
                                                  .copyWith(
                                                color: AppData.customWhite,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "FARE: ",
                                              style: AppData.regularTextStyle
                                                  .copyWith(
                                                color: AppData.customWhite,
                                              ),
                                            ),
                                            Text(
                                              "120 TK",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: AppData.boldTextStyle
                                                  .copyWith(
                                                color: AppData.customWhite,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                RotatedBox(
                                  quarterTurns: 3,
                                  child: Text(
                                    "23/06/22",
                                    style: AppData.regularTextStyle.copyWith(
                                      color: AppData.customWhite,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
