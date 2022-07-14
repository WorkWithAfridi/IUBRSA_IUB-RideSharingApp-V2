import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../data/constants/app_data.dart';

class ServicesTab extends StatelessWidget {
  const ServicesTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppData.defaultPadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Services',
                style: AppData.boldTextStyle.copyWith(
                  fontSize: 20,
                  height: .95,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'view all',
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
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 80,
              width: Get.width,
              decoration: BoxDecoration(
                color: AppData.customRed.withOpacity(.1),
                borderRadius:
                    BorderRadius.circular(AppData.defaultBorderRadius),
              ),
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: SvgPicture.asset(
                      'assets/svgs/bus_stop.svg',
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Independent',
                          style: AppData.regularTextStyle,
                        ),
                        Text(
                          'Bus\nServices',
                          style: AppData.boldTextStyle.copyWith(
                            fontSize: 20,
                            height: .95,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
        ],
      ),
    );
  }
}
